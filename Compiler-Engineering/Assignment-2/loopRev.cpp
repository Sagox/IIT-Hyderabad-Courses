#define DEBUG_TYPE "loopRev"
#include <algorithm>
#include <exception>
#include "llvm/ADT/APFloat.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/SetOperations.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/AssumptionCache.h"
#include "llvm/Analysis/BasicAliasAnalysis.h"
#include "llvm/Analysis/BranchProbabilityInfo.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/Analysis/GlobalsModRef.h"
#include "llvm/Analysis/InstructionSimplify.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/Analysis/MemorySSAUpdater.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DataLayout.h"
#include <llvm/IR/DebugInfoMetadata.h>
#include <llvm/IR/DebugLoc.h>
#include "llvm/IR/ConstantFolder.h"
#include "llvm/IR/NoFolder.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Type.h"
#include "llvm/Pass.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils.h"
#include "llvm/Transforms/Utils/Local.h"
#include "llvm/Transforms/Utils/LoopSimplify.h"
#include "llvm/Transforms/Utils/LoopUtils.h"
#include <string>
#include <utility>
#include <vector>


using namespace llvm;

namespace {
	struct loopReverser : public FunctionPass {
		static char ID;
		loopReverser() : FunctionPass(ID) {}
		
		void getAnalysisUsage (AnalysisUsage &AU) const {
			// to get information regarding each loop, blocks, etc
			AU.addRequired<LoopInfoWrapperPass>();
			AU.setPreservesAll();
		}
		// this function takes the all the information about the current loop and returns
		// the new value that the reversed loop should start from, it computes these values differently
		// based on which type of update instruction is begin used, sign of initial value, etc.
		// the math behind the equations is not begin explained as it is a bit involved
		int getNewInitialValue(StringRef relOp, StringRef updateOp, int IVInitialValue, int loopBound, int loopStep) {
			// if the update operation is of type add, we can add both positive and negative values
			if(updateOp == "add") {
				// we convert the strict comparisions to include equality as well
				int limitingValue = loopBound;
				if(relOp == StringRef("slt"))
					limitingValue--;
				else if(relOp == StringRef("sgt"))
					limitingValue++;
				int newInitialValue = IVInitialValue + ((limitingValue - IVInitialValue)/loopStep)*loopStep;
				return newInitialValue;
			// if the update operation is of type subtract, we can subtract both positive and negative values
			} else if(updateOp == "sub") {
				// this is esentially addition with loop step sign being inversed
				loopStep*=-1;
				// we convert the strict comparisions to include equality as well
				int limitingValue = loopBound;
				if(relOp == StringRef("slt"))
					limitingValue--;
				else if(relOp == StringRef("sgt"))
					limitingValue++;
				int newInitialValue = IVInitialValue + ((limitingValue - IVInitialValue)/loopStep)*loopStep;				
				return newInitialValue;
			// if the update operation is of type mul, we can multiply both positive and negative values
			// in multiplication and division the calculation of new final value varies based on the
			// comparision operation as well as the sign of the initial value of the induction variable
			} else if(updateOp == "mul") {
				// we convert the strict comparisions to include equality as well
				int limitingValue = loopBound;
				if(relOp == StringRef("slt") || relOp == StringRef("sle")) {
					if(relOp == StringRef("slt"))
						limitingValue--;
					int newInitialValue;
					if(IVInitialValue>0)
						newInitialValue = int(IVInitialValue*(pow(loopStep, floor((log10((loopBound + 0.0)/IVInitialValue)/(log10(loopStep) +0.0 ))))));
					else
						newInitialValue = int(IVInitialValue*(pow(loopStep, ceil((log10((loopBound + 0.0)/IVInitialValue)/(log10(loopStep) +0.0 ))))));
					return newInitialValue;
				}
				else if(relOp == StringRef("sgt") || relOp == StringRef("sge")) {
					if(relOp == StringRef("sgt"))
						limitingValue++;
					int newInitialValue;
					if(IVInitialValue>0)
						newInitialValue = int(IVInitialValue*(pow(loopStep, ceil((log10((loopBound + 0.0)/IVInitialValue)/(log10(loopStep) +0.0 ))))));
					else
						newInitialValue = int(IVInitialValue*(pow(loopStep, floor((log10((loopBound + 0.0)/IVInitialValue)/(log10(loopStep) +0.0 ))))));
					return newInitialValue;					
				}
			// if the update operation is of type div, we can divide both positive and negative values
			// in multiplication and division the calculation of new final value varies based on the
			// comparision operation as well as the sign of the initial value of the induction variable
			} else if(updateOp == "div") {
				// we convert the strict comparisions to include equality as well
				int limitingValue = loopBound;
				if(relOp == StringRef("sgt") || relOp == StringRef("sge")) {
					if(relOp == StringRef("sgt"))
						limitingValue++;
					int newInitialValue;
					if(IVInitialValue>0)
						newInitialValue = int(IVInitialValue*(pow(loopStep, -1*floor(-1*((log10((loopBound + 0.0)/IVInitialValue)/(log10(loopStep) +0.0 )))))));
					else
						newInitialValue = int(IVInitialValue*(pow(loopStep, -1*ceil(-1*((log10((loopBound + 0.0)/IVInitialValue)/(log10(loopStep) +0.0 )))))));
					return newInitialValue;
				}
				else if(relOp == StringRef("slt") || relOp == StringRef("sle")) {
					if(relOp == StringRef("slt"))
						limitingValue--;
					int newInitialValue;
					if(IVInitialValue>0)
						newInitialValue = int(IVInitialValue*(pow(loopStep, -1*ceil(-1*(log10((loopBound + 0.0)/IVInitialValue)/(log10(loopStep) +0.0 ))))));
					else
						newInitialValue = int(IVInitialValue*(pow(loopStep, -1*floor(-1*(log10((loopBound + 0.0)/IVInitialValue)/(log10(loopStep) +0.0 ))))));
					return newInitialValue;					
				}

			} 
		}
		// function pass seemed as the appropriate choice as variables outside loops can be used withing the loops
		// and if we perhaps need to access these there may be problems with loop pass. Module pass seems unncessary
		// and other passes are too small to contain loops
		bool runOnFunction(Function &F) {
			// we would like the code to be in SSA form for this pass so we use
			// a pass manager for the same
			legacy::FunctionPassManager FPM(F.getParent());
			FPM.add(createPromoteMemoryToRegisterPass());
			FPM.run(F);
			LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
			auto loopList = LI.getLoopsInPreorder();
			// for(Loop *topLevelLoop: LI) {
			int lmn = 0;
			bool lul = true;
			for (Loop *L : loopList) {
				// we collect all the important parts which characterise the loop in the 
				// following lines
				PHINode *InductionPhi;
				CmpInst *loopCompareInst;
				BasicBlock *loopBody;
				Instruction* IVUpdateInst;
				int loopBound, loopStep, IVInitialValue;
				StringRef relOp, updateOp;
				auto bb = L->getHeader();
				bool phiFound = false;
				for(auto t = bb->begin(); t!= bb->end();++t) {

					// assuming the branch instruction in the header is where the loop can be exited and assuming that the if true branch
					// is the loop body
					// operand 0 is a cmp instruction we get the second argument of the cmp instruction which should be the bound
					if(isa<BranchInst>(t)){
						loopBody = dyn_cast<BasicBlock>(t->getOperand(2));
					}
					if(isa<CmpInst>(*t)) {
						loopCompareInst = dyn_cast<CmpInst>(t);
						for(auto O = t->op_begin(), OE = t->op_end(); O!=OE;O++) {
							if(isa<Constant>(O)) {
								loopBound = dyn_cast<ConstantInt>(O)->getSExtValue();
								relOp = CmpInst::getPredicateName(dyn_cast<CmpInst>(t)->getPredicate());
							}
							if(isa<PHINode>(O) && !phiFound) {
								// errs() << "Phi found\n\n\n\n";
								phiFound = true;
								InductionPhi = dyn_cast<PHINode>(O);
								auto tt = dyn_cast<PHINode>(O);
								for(Value *ivs: tt->incoming_values())
								{
									if(isa<Constant>(ivs)) {
										IVInitialValue = dyn_cast<ConstantInt>(ivs)->getSExtValue();
									}
								}
							}
						}
					}


				}
				// get update operation and update constant
				bb = L->getLoopLatch();
				// get the loop latch block
				for(auto t = bb->begin(); t!= bb->end();t++) {
					if(t->getOpcodeName() == StringRef("add")) {
						IVUpdateInst = &(*t);
						for(auto O = t->op_begin(), OE = t->op_end(); O!=OE;O++) {
							if(isa<Constant>(O)) {
								updateOp = "add";
								loopStep = dyn_cast<ConstantInt>(O)->getSExtValue();
							}
						}
					} else if(t->getOpcodeName() == StringRef("sub")) {
						IVUpdateInst = &(*t);
						for(auto O = t->op_begin(), OE = t->op_end(); O!=OE;O++) {
							if(isa<Constant>(O)) {
								updateOp = "sub";
								loopStep = dyn_cast<ConstantInt>(O)->getSExtValue();
							}
						}
					} else if(t->getOpcodeName() == StringRef("mul")) {
						IVUpdateInst = &(*t);
						for(auto O = t->op_begin(), OE = t->op_end(); O!=OE;O++) {
							if(isa<Constant>(O)) {
								updateOp = "mul";
								loopStep = dyn_cast<ConstantInt>(O)->getSExtValue();
							}
						}
					} else if(t->getOpcodeName() == StringRef("sdiv")) {
						IVUpdateInst = &(*t);
						for(auto O = t->op_begin(), OE = t->op_end(); O!=OE;O++) {
							if(isa<Constant>(O)) {
								updateOp = "div";
								loopStep = dyn_cast<ConstantInt>(O)->getSExtValue();
							}
						}
					}
				}
				// errs() << "loop descriptor: Init Value = " << IVInitialValue << " Relational Operator = " << relOp << " Update Operator = "
				// << updateOp << " step = " << loopStep << " bound = " << loopBound << "\n"; 

				// compute the new values for the reversed loop
				int newLoopBound = IVInitialValue, newIVInitialValue = getNewInitialValue(relOp, updateOp, IVInitialValue, loopBound, loopStep),
				newFinalValue = IVInitialValue;
				if(updateOp == StringRef("add")) {
					if(relOp == StringRef("slt") || relOp == StringRef("sle")) {
						llvm::CmpInst::Predicate newRelOp =  CmpInst::Predicate::ICMP_SGE;
						loopCompareInst->setPredicate(newRelOp);
					}
					else if(relOp == StringRef("sgt") || relOp == StringRef("sge")) {
						llvm::CmpInst::Predicate newRelOp = CmpInst::Predicate::ICMP_SLE;
						loopCompareInst->setPredicate(newRelOp);						
					}
					auto finalValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), newFinalValue);
					auto initialValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), newIVInitialValue);
					auto stepValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), loopStep);
					IRBuilder<NoFolder> builder(L->getHeader()->getFirstNonPHI());
					PHINode* newPhi = builder.CreatePHI(Type::getInt32Ty(F.getContext()), 2, "newIV");
					newPhi->addIncoming(initialValueObject, InductionPhi->getIncomingBlock(0));
					Value *pResult = builder.CreateSub(initialValueObject, newPhi, "rightusgofIV");
					Value *Result = builder.CreateAdd(pResult, finalValueObject, "rightusgofIV");
					loopCompareInst->setOperand(1, finalValueObject);
					loopCompareInst->setOperand(0, newPhi);
					IRBuilder<NoFolder> builder1(L->getLoopLatch()->getFirstNonPHI());
					auto newIVUpdateInstruction = builder1.CreateSub(newPhi, stepValueObject, "newUpdateInst");
					newPhi->addIncoming(newIVUpdateInstruction, InductionPhi->getIncomingBlock(1));
					InductionPhi->replaceAllUsesWith(Result);
					InductionPhi->eraseFromParent();
					IVUpdateInst->eraseFromParent();
				} else if (updateOp == StringRef("sub")) {
					loopStep*=-1;
					if(relOp == StringRef("slt") || relOp == StringRef("sle")) {
						llvm::CmpInst::Predicate newRelOp =  CmpInst::Predicate::ICMP_SGE;
						loopCompareInst->setPredicate(newRelOp);
					}
						// newRelOp = StringRef("sge");
					else if(relOp == StringRef("sgt") || relOp == StringRef("sge")) {
						llvm::CmpInst::Predicate newRelOp = CmpInst::Predicate::ICMP_SLE;
						loopCompareInst->setPredicate(newRelOp);						
					}
					auto finalValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), newFinalValue);
					auto initialValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), newIVInitialValue);
					auto stepValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), loopStep);
					IRBuilder<NoFolder> builder(L->getHeader()->getFirstNonPHI());
					PHINode* newPhi = builder.CreatePHI(Type::getInt32Ty(F.getContext()), 2, "newIV");
					newPhi->addIncoming(initialValueObject, InductionPhi->getIncomingBlock(0));
					Value *pResult = builder.CreateSub(initialValueObject, newPhi, "rightusgofIV");
					Value *Result = builder.CreateAdd(pResult, finalValueObject, "rightusgofIV");
					loopCompareInst->setOperand(1, finalValueObject);
					loopCompareInst->setOperand(0, newPhi);
					IRBuilder<NoFolder> builder1(L->getLoopLatch()->getFirstNonPHI());
					auto newIVUpdateInstruction = builder1.CreateSub(newPhi, stepValueObject, "newUpdateInst");
					newPhi->addIncoming(newIVUpdateInstruction, InductionPhi->getIncomingBlock(1));
					InductionPhi->replaceAllUsesWith(Result);
					InductionPhi->eraseFromParent();
					IVUpdateInst->eraseFromParent();
				} else if (updateOp == StringRef("mul")) {
					if(relOp == StringRef("slt") || relOp == StringRef("sle")) {
						llvm::CmpInst::Predicate newRelOp =  CmpInst::Predicate::ICMP_SGE;
						loopCompareInst->setPredicate(newRelOp);
					}
						// newRelOp = StringRef("sge");
					else if(relOp == StringRef("sgt") || relOp == StringRef("sge")) {
						llvm::CmpInst::Predicate newRelOp = CmpInst::Predicate::ICMP_SLE;
						loopCompareInst->setPredicate(newRelOp);						
					}
					auto finalValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), newFinalValue);
					auto initialValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), newIVInitialValue);
					auto stepValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), loopStep);
					IRBuilder<NoFolder> builder(L->getHeader()->getFirstNonPHI());
					PHINode* newPhi = builder.CreatePHI(Type::getInt32Ty(F.getContext()), 2, "newIV");
					newPhi->addIncoming(initialValueObject, InductionPhi->getIncomingBlock(0));
					IRBuilder<NoFolder> builder2(&(*(loopBody->begin())));
					Value *pResult = builder2.CreateSDiv(initialValueObject, newPhi, "rightusgofIV");
					Value *Result = builder2.CreateMul(pResult, finalValueObject, "rightusgofIV");
					loopCompareInst->setOperand(1, finalValueObject);
					loopCompareInst->setOperand(0, newPhi);
					IRBuilder<NoFolder> builder1(L->getLoopLatch()->getFirstNonPHI());
					auto newIVUpdateInstruction = builder1.CreateSDiv(newPhi, stepValueObject, "newUpdateInst");
					newPhi->addIncoming(newIVUpdateInstruction, InductionPhi->getIncomingBlock(1));
					InductionPhi->replaceAllUsesWith(Result);
					InductionPhi->eraseFromParent();
					IVUpdateInst->eraseFromParent();
				} else if (updateOp == StringRef("div")) {
					if(relOp == StringRef("slt") || relOp == StringRef("sle")) {
						llvm::CmpInst::Predicate newRelOp =  CmpInst::Predicate::ICMP_SGE;
						loopCompareInst->setPredicate(newRelOp);
					}
					else if(relOp == StringRef("sgt") || relOp == StringRef("sge")) {
						llvm::CmpInst::Predicate newRelOp = CmpInst::Predicate::ICMP_SLE;
						loopCompareInst->setPredicate(newRelOp);						
					}
					auto finalValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), newFinalValue);
					auto initialValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), newIVInitialValue);
					auto stepValueObject = ConstantInt::get(Type::getInt32Ty(F.getContext()), loopStep);
					IRBuilder<NoFolder> builder(L->getHeader()->getFirstNonPHI());
					PHINode* newPhi = builder.CreatePHI(Type::getInt32Ty(F.getContext()), 2, "newIV");
					newPhi->addIncoming(initialValueObject, InductionPhi->getIncomingBlock(0));
					IRBuilder<NoFolder> builder2(&(*(loopBody->begin())));
					Value *pResult = builder2.CreateMul(finalValueObject, initialValueObject, "rightusgofIV");
					Value *Result = builder2.CreateSDiv(pResult, newPhi, "rightusgofIV");
					loopCompareInst->setOperand(1, finalValueObject);
					loopCompareInst->setOperand(0, newPhi);
					IRBuilder<NoFolder> builder1(L->getLoopLatch()->getFirstNonPHI());
					auto newIVUpdateInstruction = builder1.CreateMul(newPhi, stepValueObject, "newUpdateInst");
					newPhi->addIncoming(newIVUpdateInstruction, InductionPhi->getIncomingBlock(1));
					InductionPhi->replaceAllUsesWith(Result);
					InductionPhi->eraseFromParent();
					IVUpdateInst->eraseFromParent();
				} 
			}
			return false;
		}
	};
}


char loopReverser::ID = 0;
static RegisterPass<loopReverser> X("loopRev", "Reverse the loop");

