; ModuleID = 'shellSort.c'
source_filename = "shellSort.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.data = private unnamed_addr constant [10 x i32] [i32 9, i32 12, i32 54, i32 90, i32 0, i32 100, i32 65, i32 32, i32 54, i32 81], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shellsort(i32* %v, i32 %n) #0 {
entry:
  %v.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %gap = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %v, i32** %v.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %gap, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %1 = load i32, i32* %gap, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %gap, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end22

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %gap, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %j, align 4
  %cmp5 = icmp sge i32 %7, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond4
  %8 = load i32*, i32** %v.addr, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32*, i32** %v.addr, align 8
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %gap, align 4
  %add = add nsw i32 %12, %13
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp sgt i32 %10, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond4
  %15 = phi i1 [ false, %for.cond4 ], [ %cmp8, %land.rhs ]
  br i1 %15, label %for.body9, label %for.end

for.body9:                                        ; preds = %land.end
  %16 = load i32*, i32** %v.addr, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom10
  %18 = load i32, i32* %arrayidx11, align 4
  store i32 %18, i32* %temp, align 4
  %19 = load i32*, i32** %v.addr, align 8
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %gap, align 4
  %add12 = add nsw i32 %20, %21
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %19, i64 %idxprom13
  %22 = load i32, i32* %arrayidx14, align 4
  %23 = load i32*, i32** %v.addr, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %23, i64 %idxprom15
  store i32 %22, i32* %arrayidx16, align 4
  %25 = load i32, i32* %temp, align 4
  %26 = load i32*, i32** %v.addr, align 8
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %gap, align 4
  %add17 = add nsw i32 %27, %28
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %26, i64 %idxprom18
  store i32 %25, i32* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %29 = load i32, i32* %gap, align 4
  %30 = load i32, i32* %j, align 4
  %sub20 = sub nsw i32 %30, %29
  store i32 %sub20, i32* %j, align 4
  br label %for.cond4

for.end:                                          ; preds = %land.end
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end22:                                        ; preds = %for.cond1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %32 = load i32, i32* %gap, align 4
  %div24 = sdiv i32 %32, 2
  store i32 %div24, i32* %gap, align 4
  br label %for.cond

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i32]* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.data to i8*), i64 40, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %data, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %data, i64 0, i64 0
  call void @shellsort(i32* %arraydecay, i32 10)
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 10
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %data, i64 0, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body3
  %8 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond1

for.end9:                                         ; preds = %for.cond1
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
