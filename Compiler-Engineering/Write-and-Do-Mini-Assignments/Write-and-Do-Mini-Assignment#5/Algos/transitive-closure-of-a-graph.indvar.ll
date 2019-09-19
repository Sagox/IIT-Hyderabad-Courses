; ModuleID = 'transitive-closure-of-a-graph.memopt.ll'
source_filename = "./transitive-closure-of-a-graph.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"Following matrix is transitive closure of the given graph\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.graph = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 1, i32 1, i32 0, i32 1], [4 x i32] [i32 0, i32 1, i32 1, i32 0], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 0, i32 1]], align 16

; Function Attrs: noinline uwtable
define dso_local void @_Z17transitiveClosurePA4_i([4 x i32]* %graph) #0 {
entry:
  %reach = alloca [4 x [4 x i32]], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc10 ], [ 0, %entry ]
  %exitcond12 = icmp ne i64 %indvars.iv10, 4
  br i1 %exitcond12, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc ], [ 0, %for.body ]
  %exitcond9 = icmp ne i64 %indvars.iv7, 4
  br i1 %exitcond9, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %graph, i64 %indvars.iv10
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %indvars.iv7
  %0 = load i32, i32* %arrayidx5, align 4
  %arrayidx7 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 %indvars.iv10
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx7, i64 0, i64 %indvars.iv7
  store i32 %0, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc46, %for.end12
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc46 ], [ 0, %for.end12 ]
  %exitcond6 = icmp ne i64 %indvars.iv4, 4
  br i1 %exitcond6, label %for.body15, label %for.end48

for.body15:                                       ; preds = %for.cond13
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc43, %for.body15
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc43 ], [ 0, %for.body15 ]
  %exitcond3 = icmp ne i64 %indvars.iv1, 4
  br i1 %exitcond3, label %for.body18, label %for.end45

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc40, %for.body18
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc40 ], [ 0, %for.body18 ]
  %exitcond = icmp ne i64 %indvars.iv, 4
  br i1 %exitcond, label %for.body21, label %for.end42

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 %indvars.iv1
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx23, i64 0, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx25, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body21
  %arrayidx27 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 %indvars.iv1
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx27, i64 0, i64 %indvars.iv4
  %2 = load i32, i32* %arrayidx29, align 4
  %tobool30 = icmp ne i32 %2, 0
  br i1 %tobool30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %arrayidx32 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 %indvars.iv4
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx32, i64 0, i64 %indvars.iv
  %3 = load i32, i32* %arrayidx34, align 4
  %tobool35 = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %tobool35, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %for.body21
  %5 = phi i1 [ true, %for.body21 ], [ %4, %land.end ]
  %conv = zext i1 %5 to i32
  %arrayidx37 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 %indvars.iv1
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx37, i64 0, i64 %indvars.iv
  store i32 %conv, i32* %arrayidx39, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %lor.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond19

for.end42:                                        ; preds = %for.cond19
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  br label %for.cond16

for.end45:                                        ; preds = %for.cond16
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond13

for.end48:                                        ; preds = %for.cond13
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 0
  call void @_Z13printSolutionPA4_i([4 x i32]* %arraydecay)
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z13printSolutionPA4_i([4 x i32]* %reach) #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc8 ], [ 0, %entry ]
  %exitcond3 = icmp ne i64 %indvars.iv1, 4
  br i1 %exitcond3, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %exitcond = icmp ne i64 %indvars.iv, 4
  br i1 %exitcond, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %reach, i64 %indvars.iv1
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx5, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %0)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #2 {
entry:
  %graph = alloca [4 x [4 x i32]], align 16
  %0 = bitcast [4 x [4 x i32]]* %graph to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x [4 x i32]]* @__const.main.graph to i8*), i64 64, i1 false)
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %graph, i64 0, i64 0
  call void @_Z17transitiveClosurePA4_i([4 x i32]* %arraydecay)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
