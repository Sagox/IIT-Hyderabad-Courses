#define DEBUG_TYPE "variableFootprint"
#include "llvm/Pass.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpander.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstIterator.h"
#include <llvm/IR/DebugLoc.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include <vector>
#include <algorithm>

using namespace llvm;

namespace {
	struct variableFootprint : public FunctionPass  {
		static char ID;
		variableFootprint() : FunctionPass(ID) {}
		
		bool runOnFunction(Function &F) {
			int number_of_scopes = 0;
			std::vector<MDTuple> scopes;
			for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I) {
				//if(I == NULL)
				//	break;
				//errs() << "I: " << *I << ", ";
				DILocation *debugInfo = I->getDebugLoc();
				if(debugInfo == NULL)
					continue;
				auto scope = *(debugInfo->getScope()->get());
				if(std::find(scopes.vector::begin(), scopes.vector::end(), scope) != scopes.vector::end()) {
					number_of_scopes++;
					errs() << "new scope\n";
				}
				else
					scopes.vector::push_back(scope);
				// int lineNo = debugInfo->getLine();
				// errs() << lineNo << "\n";
				errs() << "Number of Operands: " << scope->getOperand(1) << "\n";
				errs() << "Number of scopes: " << number_of_scopes << "\n"; 
			}
			return false;
		}
	};
}


char variableFootprint::ID = 0;
static RegisterPass<variableFootprint> X("ftprint", "Print the footprint of a given variable");

