#define DEBUG_TYPE "variableFootprint"
#include "llvm/Pass.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpander.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/IR/DebugLoc.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include <vector>

using namespace llvm;

namespace {
	struct variableFootprint : public ModulePass {
		static char ID;
		variableFootprint() : ModulePass(ID) {}
		
		bool runOnModule(Module &M) {
			return false;
		}
	};
}


char variableFootprint::ID = 0;
static RegisterPass<variableFootprint> X("variable-footprint", "Print the footprint of a given variable");

