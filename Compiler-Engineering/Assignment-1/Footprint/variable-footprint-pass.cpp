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
		
		struct scopeInfo {
			int startLine;
			int FinishLine;
			Value *varValue;
			std::vector<int> lines;
			// std::vector<*Instruction> AllUsers;
		};

		void getAnalysisUsage (AnalysisUsage &AU) const {
			AU.addRequired<AAResultsWrapperPass>();
			AU.setPreservesAll();
		}

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
			std::vector<scopeInfo> scopeInfos;
			errs()<<varName<<"\n";
			std::vector<DIScope*> scopes;
			DIScope *globalScope;
			bool globalScopePopulated = false;
			for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I) {
						if(isa<DbgDeclareInst>(*I)) {
							if(!globalScopePopulated) {
								globalScope = getGlobalScope(I);
								globalScopePopulated = true;
							}
							auto a = cast<DIVariable>(cast<MetadataAsValue>(I->getOperand(1))->getMetadata());
							if(varName == a->getName()) {
								Metadata *Meta = cast<MetadataAsValue>(I->getOperand(0))->getMetadata();
								if (isa<ValueAsMetadata>(Meta)) {
									Value *V = cast <ValueAsMetadata>(Meta)->getValue();
									// errs() << *V << "\n";
									// scopes.vector::push_back(a->getScope());
									scopeInfo temp;
									if(dyn_cast<DILexicalBlock>(a->getScope()))
										temp.startLine = dyn_cast<DILexicalBlock>(a->getScope())->getLine();
									else
										temp.startLine = INT_MAX;
									temp.varValue = V;
									temp.FinishLine = INT_MIN;
									scopeInfos.vector::push_back(temp);
								}
							}
						}
					// }
				// }
				// DILocation *debugInfo = I->getDebugLoc();
				// if(debugInfo == NULL)
				// 	continue;
				// auto scope = debugInfo->getScope();
				// if(std::find(scopes.vector::begin(), scopes.vector::end(), scope) == scopes.vector::end()) {
				// 	number_of_scopes++;
				// 	errs() << "new scope\n";
				// 	int lineNo = debugInfo->getLine();
				// 	errs() <<"lineNo: " << lineNo << "\n";
				// }
				// if(I->getMetadata()) {					
					// errs() << I -> getDebugLoc() -> getLine() << "\n";
					// I->getDebugLoc()->dump();
				// }
				// I->getMetadata()->dump();
			}
			auto  *AA = &getAnalysis<AAResultsWrapperPass>().getAAResults();

			for(auto i=0;i<scopeInfos.size();i++) {
				errs() << i << " " << *scopeInfos[i].varValue << "\n\n";
			}
			for(inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
				for(auto O = I->op_begin(), OE = I->op_end(); O!=OE;O++) {
					for(auto i=0;i<scopeInfos.size();i++) {
						if(int(AA->alias(scopeInfos[i].varValue, *O)) >= 1) {
							if(!I->getDebugLoc())
								continue;
							int tempLine = I->getDebugLoc()->getLine();
							if(find(scopeInfos[i].lines.begin(), scopeInfos[i].lines.end(), tempLine) == scopeInfos[i].lines.end())
								scopeInfos[i].lines.vector::push_back(tempLine);
							// errs() << *I << "  contains ref to " << i << "\n";
						}						
					}
				}
			}
			for(auto i=0;i<scopeInfos.size();i++) {
				errs() << "References in scope " << i << " are in the following lines ";
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

