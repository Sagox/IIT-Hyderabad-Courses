#include "clang/Frontend/FrontendActions.h"
#include "clang/Tooling/CommonOptionsParser.h"
#include "clang/Tooling/Tooling.h"
#include "llvm/Support/CommandLine.h"
#include "clang/ASTMatchers/ASTMatchers.h"
#include "clang/ASTMatchers/ASTMatchFinder.h"
#include "clang/Basic/SourceLocation.h"
#include "clang/Basic/FileManager.h"
#include "clang/Basic/SourceManager.h"


using namespace clang::tooling;
using namespace llvm;
using namespace clang;
using namespace clang::ast_matchers;


StatementMatcher badEquality = binaryOperator( // get all binary operator expressions, since "==" is a binOp
  allOf(
    hasOperatorName("=="),					// specify that we are looking for only "==" within all the binOps
    anyOf(									// if any of the following properties hold we have a match
      hasEitherOperand(hasType(asString("float"))),						// if either operand evaluates to type float
      hasEitherOperand(hasType(asString("double"))),					// if either operand evaluates to type double
      hasEitherOperand(hasType(asString("long double"))),				// if either operand evaluates to type long double
      hasEitherOperand(ignoringImpCasts(hasType(asString("float")))),
      // if either operand is actually of type float but is implicitly begin casted to something else
      hasEitherOperand(ignoringImpCasts(hasType(asString("double")))),
      // if either operand is actually of type double but is implicitly begin casted to something else
      hasEitherOperand(ignoringImpCasts(hasType(asString("long double"))))
      // if either operand is actually of type long double but is implicitly begin casted to something else
    )
  )
).bind("eqOp");

class badEqualityPrinter : public MatchFinder::MatchCallback {
public :
  virtual void run(const MatchFinder::MatchResult &Result) {
    SourceManager* SrcManager = &(Result.Context->getSourceManager());
    if (const BinaryOperator *FS = Result.Nodes.getNodeAs<clang::BinaryOperator>("eqOp")) {
        auto sl = FS->getBeginLoc();
        int lineNum = SrcManager->getExpansionLineNumber(sl);
        int coloumnNum = SrcManager->getExpansionColumnNumber(sl);
        llvm::outs() << "Floating point exact comparision at " << lineNum << ":" << coloumnNum << "\n";     
    }
  }
};


static llvm::cl::OptionCategory MyToolCategory("my-tool options");

// CommonOptionsParser declares HelpMessage with a description of the common
// command-line options related to the compilation database and input files.
// It's nice to have this help message in all tools.
static cl::extrahelp CommonHelp(CommonOptionsParser::HelpMessage);

// A help message for this specific tool can be added afterwards.
static cl::extrahelp MoreHelp("\nMore help text...\n");

int main(int argc, const char **argv) {
  CommonOptionsParser OptionsParser(argc, argv, MyToolCategory);
  ClangTool Tool(OptionsParser.getCompilations(),
                 OptionsParser.getSourcePathList());

  badEqualityPrinter Printer;
  MatchFinder Finder;
  Finder.addMatcher(badEquality, &Printer);
  return Tool.run(newFrontendActionFactory(&Finder).get());
}
