#define DEBUG_TYPE "variableFootprint"
#include "llvm/Pass.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Metadata.h"
#include <llvm/IR/DebugLoc.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpander.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include <vector>
#include <algorithm>
#include <string>
#include <utility>

using namespace llvm;

static cl::opt<std::string> varName("var-name", cl::desc("Specify variable name"), cl::value_desc("name of the variable"));

namespace {
	struct variableFootprint : public FunctionPass  {
		static char ID;
		variableFootprint() : FunctionPass(ID) {}

		int number_of_scopes = 0;
		
		// struct to store the info of every scope in which
		// a variable with name 'var-name' exists.

		struct scopeInfo {
			// start line of the scope
			int startLine;
			// finish line of the scope
			int FinishLine;
			// number of reads of the variable in the scope
			int reads = 0;
			// number of writes of the variable in the scope
			int writes = 0;
			// metadata pointer of the variable in this scope,
			// this is used to compare if two dbg.value.inst represent
			// the same variable, this does not happen for dbg.declare.inst
			// since it is called only once for any variable.
			DIVariable* meta;
			// The scope of the variable, used for checking if an instruction
			// belongs to the same scope (used while finding line range).
			DIScope* scope;
			// The llvm::value of the variable in this scope, used for alias
			// analysis.
			Value *varValue;
			// the list of lines where the variable is accessed.
			std::vector<int> lines;
		};

		void getAnalysisUsage (AnalysisUsage &AU) const {
			// needed for alias analysis of the variable,
			// since variable can be accessed using pointers.
			AU.addRequired<AAResultsWrapperPass>();
			// Needed for getting number of times reads and
			// writes are executed in a loop
			AU.addRequired<LoopInfoWrapperPass>();
			AU.setPreservesAll();
		}

		// function to check if the scope of an instruction is the same as that of
		// the variable or if it is a nested scope in it. In these two cases the line number
		// of the instruction should lie within the scope line range of the variable.
		bool matchScope(DIScope* varScope, DIScope* instScope ,DIScope* globalScope) {
			do {
				if(!instScope || !varScope)
					break;
				if(instScope == varScope)
					return true;
				else
					// check parent scope
					instScope = instScope->getScope();
				// if we reach global level stop.
			} while(varScope != globalScope);
			return false;
		}
		// function to get the top scope in debug info
		DIScope *getGlobalScope(inst_iterator& I) {
			auto a = I->getDebugLoc()->getScope();
			DIScope *tr = a->getScope();
			while(!isa<DIFile>(tr)) {
				tr = tr->getScope();
			}
			// tr->dump();
			return tr;
		}

		bool runOnFunction(Function &F) {
			// vector of all scopes in which the required variable is found
			std::vector<scopeInfo> scopeInfos;
			// check if varName is picked up
			// errs()<<varName<<"\n";

			// top level scope
			DIScope *globalScope;
			
			bool globalScopePopulated = false;
			for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I) {
				// check if the instruction is either a call to intrisic dbg.declare.inst ot dbg.value.inst
				// so that we can get all the declaration and for each declaration create a scopeInfo variable
				if(isa<DbgDeclareInst>(*I) || (isa<DbgValueInst>(*I)) && isa<DIVariable>(cast<MetadataAsValue>(I->getOperand(1))->getMetadata())) {

					// find the value of the top level scope on initial iteration
					if(!globalScopePopulated) {
						globalScope = getGlobalScope(I);
						globalScopePopulated = true;
					}
					// get the DIVariable metadata for the declaration

					auto a = cast<DIVariable>(cast<MetadataAsValue>(I->getOperand(1))->getMetadata());

					// in case of running some optimisation (like mem2reg) the dbg.declare.inst are removed and
					// we have dbg.value.inst, but these are not unique for every declaration, so we need to check
					// if this value has already been recoreded. This check is done by checking if both have the same
					// metadata node.

					bool alreadyExists = false;
					for(auto j=0;j<scopeInfos.size();j++) {
						if(scopeInfos[j].meta == a) {
							alreadyExists = true;
							break;
						}
					}
					if(alreadyExists)
						continue;
					// check if the varibale name is the source code (get from debuginfo) is the same as variable
					// mentioned in options.
					if(varName == a->getName()) {
						errs() << *I << "\n";
						Metadata *Meta = cast<MetadataAsValue>(I->getOperand(0))->getMetadata();
						if (isa<ValueAsMetadata>(Meta)) {
							// get the value of the variable in a given scope from the metadata node
							// this can be used in alias analysis.
							Value *V = cast <ValueAsMetadata>(Meta)->getValue();
							// scopeInfo struct to be used to store all the information about the current scope
							scopeInfo temp;
							// if the instruction is present in some lexical block we can get the line number of
							// the beginning of the scope from the DILexicalBlock metadata.
							if(dyn_cast<DILexicalBlock>(a->getScope()))
								temp.startLine = dyn_cast<DILexicalBlock>(a->getScope())->getLine();
							else
								// by default set the start line as INT_MAX
								temp.startLine = INT_MAX;
							temp.scope = a->getScope();
							temp.varValue = V;
							// by default set the finish line as INT_MIN
							temp.FinishLine = INT_MIN;
							temp.meta = a;
							// add the struct to the vector of scopes
							scopeInfos.vector::push_back(temp);
						}
					}
				}
			}

			//get scope of all instructions and if the scope of the instruction matches the scope of the
			// one of the structs in scopeInfos then update the start/finish lines in the struct
			for(inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
				DILocation *debugInfo;
				// check for null values
				if(debugInfo = I->getDebugLoc()) {
					int tempLine = debugInfo->getLine(), i, scopeLen = scopeInfos.size();
					// scope of the current instruction
					DIScope *instScope = debugInfo->getScope();
					for(i=0;i<scopeLen;i++) {
						// check if one of the variables is either in the same scope or is in the parent
						// scope of the instruction
						if(matchScope(scopeInfos[i].scope, instScope, globalScope)) {
							// update line numbers accordingly
							if(tempLine > scopeInfos[i].FinishLine)
								scopeInfos[i].FinishLine = tempLine;
							if(tempLine < scopeInfos[i].startLine)
								scopeInfos[i].startLine = tempLine;
						}
					}
				}
			}

			// for alias analysis
			auto  *AA = &getAnalysis<AAResultsWrapperPass>().getAAResults();

			// to get an idea as to which value represents out variable in every scope
			for(auto i=0;i<scopeInfos.size();i++) {
				// errs() << i << " " << *scopeInfos[i].varValue << "\n\n";
			}

			// Iterate over instructions again to get all the lines where the variable is used and also perhaps
			// increase the range of the scope line numbers in the structs
			for(inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
				int i;
				for(i=0;i<scopeInfos.size();i++) {
					if(int(AA->alias(scopeInfos[i].varValue, &(*I))) >= 1) {
						errs() << *I << "\n";
						//check for null values
						if(!I->getDebugLoc())
							continue;
						int tempLine = I->getDebugLoc()->getLine();
						// check if the current line number is already present in our list of line numbers for the variable trace
						if(find(scopeInfos[i].lines.begin(), scopeInfos[i].lines.end(), tempLine) == scopeInfos[i].lines.end()) {
							scopeInfos[i].lines.vector::push_back(tempLine);
							if(tempLine > scopeInfos[i].FinishLine)
								scopeInfos[i].FinishLine = tempLine;
							if(tempLine < scopeInfos[i].startLine)
								scopeInfos[i].startLine = tempLine;
						}
						break;
					}
					if(i==scopeInfos.size())
						continue;
				}
				for(auto O = I->op_begin(), OE = I->op_end(); O!=OE;O++) {
					for(auto i=0;i<scopeInfos.size();i++) {
						if(int(AA->alias(scopeInfos[i].varValue, *O)) >= 1) {
							if(!I->getDebugLoc())
								continue;
							if(isa<LoadInst>(*I)) {
								errs() << "Read: " << *I << "opnum: " << O - I->op_begin() << "\n";
							}
							if(isa<StoreInst>(*I)){
								if(O - I->op_begin() == 1)
									errs() << "Write: " << *I << "opnum: " << O - I->op_begin() << "\n";
								else
									errs() << "Read: " << *I << "opnum: " << O - I->op_begin() << "\n";
							}
							int tempLine = I->getDebugLoc()->getLine();
							if(find(scopeInfos[i].lines.begin(), scopeInfos[i].lines.end(), tempLine) == scopeInfos[i].lines.end()) {
								scopeInfos[i].lines.vector::push_back(tempLine);
								if(tempLine > scopeInfos[i].FinishLine)
									scopeInfos[i].FinishLine = tempLine;
								if(tempLine < scopeInfos[i].startLine)
									scopeInfos[i].startLine = tempLine;
							}
							// errs() << *I << "  contains ref to " << i << "\n";
						}						
					}
				}
			}
			LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
			for(auto i=0;i<scopeInfos.size();i++) {
				errs() << "In scope (" << scopeInfos[i].startLine << ", " << scopeInfos[i].FinishLine << ") are in the following lines ";
				for(auto j=0;j<scopeInfos[i].lines.size();j++)
					errs() << scopeInfos[i].lines[j] << " ";
				errs() << "\n";
			}
			return false;
		}
	};
}


char variableFootprint::ID = 0;
static RegisterPass<variableFootprint> X("ftprint", "Print the footprint of a given variable");

