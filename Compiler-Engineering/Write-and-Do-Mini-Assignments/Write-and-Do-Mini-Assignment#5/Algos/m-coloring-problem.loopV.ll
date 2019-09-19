; ModuleID = 'm-coloring-problem.memopt.ll'
source_filename = "./m-coloring-problem.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Solution does not exist\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Solution Exists: Following are the assigned colors \0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.graph = private unnamed_addr constant [4 x [4 x i8]] [[4 x i8] c"\00\01\01\01", [4 x i8] c"\01\00\01\00", [4 x i8] c"\01\01\00\01", [4 x i8] c"\01\00\01\00"], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z6isSafeiPA4_bPii(i32 %v, [4 x i8]* %graph, i32* %color, i32 %c) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %v to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %graph, i64 %idxprom
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i64 0, i64 %idxprom1
  %0 = load i8, i8* %arrayidx2, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %idxprom3 = sext i32 %i.0 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %color, i64 %idxprom3
  %1 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %c, %1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %for.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z17graphColoringUtilPA4_biPii([4 x i8]* %graph, i32 %m, i32* %color, i32 %v) #1 {
entry:
  %cmp = icmp eq i32 %v, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %c.0 = phi i32 [ 1, %if.end ], [ %inc, %for.inc ]
  %cmp1 = icmp sle i32 %c.0, %m
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call zeroext i1 @_Z6isSafeiPA4_bPii(i32 %v, [4 x i8]* %graph, i32* %color, i32 %c.0)
  br i1 %call, label %if.then2, label %if.end9

if.then2:                                         ; preds = %for.body
  %idxprom = sext i32 %v to i64
  %arrayidx = getelementptr inbounds i32, i32* %color, i64 %idxprom
  store i32 %c.0, i32* %arrayidx, align 4
  %add = add nsw i32 %v, 1
  %call3 = call zeroext i1 @_Z17graphColoringUtilPA4_biPii([4 x i8]* %graph, i32 %m, i32* %color, i32 %add)
  %conv = zext i1 %call3 to i32
  %cmp4 = icmp eq i32 %conv, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  br label %return

if.end6:                                          ; preds = %if.then2
  %idxprom7 = sext i32 %v to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %color, i64 %idxprom7
  store i32 0, i32* %arrayidx8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %inc = add nsw i32 %c.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then5, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ true, %if.then5 ], [ false, %for.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z13graphColoringPA4_bi([4 x i8]* %graph, i32 %m) #1 {
entry:
  %color = alloca [4 x i32], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %color, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %color, i64 0, i64 0
  %call = call zeroext i1 @_Z17graphColoringUtilPA4_biPii([4 x i8]* %graph, i32 %m, i32* %arraydecay, i32 0)
  %conv = zext i1 %call to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %return

if.end:                                           ; preds = %for.end
  %arraydecay3 = getelementptr inbounds [4 x i32], [4 x i32]* %color, i64 0, i64 0
  call void @_Z13printSolutionPi(i32* %arraydecay3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %if.end ]
  ret i1 %retval.0
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline uwtable
define dso_local void @_Z13printSolutionPi(i32* %color) #1 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %color, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #3 {
entry:
  %graph = alloca [4 x [4 x i8]], align 16
  %0 = bitcast [4 x [4 x i8]]* %graph to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([4 x [4 x i8]], [4 x [4 x i8]]* @__const.main.graph, i32 0, i32 0, i32 0), i64 16, i1 false)
  %arraydecay = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %graph, i64 0, i64 0
  %call = call zeroext i1 @_Z13graphColoringPA4_bi([4 x i8]* %arraydecay, i32 3)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
