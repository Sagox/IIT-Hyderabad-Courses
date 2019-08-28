; ModuleID = 'palindrome.c'
source_filename = "palindrome.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Enter an integer: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%d is a palindrome.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%d is not a palindrome.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %reversedInteger = alloca i32, align 4
  %remainder = alloca i32, align 4
  %originalInteger = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %reversedInteger, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n)
  %0 = load i32, i32* %n, align 4
  store i32 %0, i32* %originalInteger, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %n, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %n, align 4
  %rem = srem i32 %2, 10
  store i32 %rem, i32* %remainder, align 4
  %3 = load i32, i32* %reversedInteger, align 4
  %mul = mul nsw i32 %3, 10
  %4 = load i32, i32* %remainder, align 4
  %add = add nsw i32 %mul, %4
  store i32 %add, i32* %reversedInteger, align 4
  %5 = load i32, i32* %n, align 4
  %div = sdiv i32 %5, 10
  store i32 %div, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %originalInteger, align 4
  %7 = load i32, i32* %reversedInteger, align 4
  %cmp2 = icmp eq i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %8 = load i32, i32* %originalInteger, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  br label %if.end

if.else:                                          ; preds = %while.end
  %9 = load i32, i32* %originalInteger, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
