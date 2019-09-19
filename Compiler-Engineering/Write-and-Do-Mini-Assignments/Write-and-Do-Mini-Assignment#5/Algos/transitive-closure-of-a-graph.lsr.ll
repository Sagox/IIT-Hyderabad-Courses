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
  %lsr.iv12 = phi [4 x i32]* [ %2, %for.inc10 ], [ %graph, %entry ]
  %lsr.iv7 = phi [4 x [4 x i32]]* [ %1, %for.inc10 ], [ %reach, %entry ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ]
  %cmp = icmp slt i32 %i.0, 4
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %lsr.iv9 = phi i64 [ %lsr.iv.next10, %for.inc ], [ 0, %for.body ]
  %tmp15 = trunc i64 %lsr.iv9 to i32
  %cmp2 = icmp slt i32 %tmp15, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %scevgep14 = getelementptr [4 x i32], [4 x i32]* %lsr.iv12, i64 0, i64 %lsr.iv9
  %0 = load i32, i32* %scevgep14, align 4
  %scevgep11 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* %lsr.iv7, i64 0, i64 0, i64 %lsr.iv9
  store i32 %0, i32* %scevgep11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %lsr.iv.next10 = add nuw nsw i64 %lsr.iv9, 1
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1
  %scevgep8 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* %lsr.iv7, i64 0, i64 1, i64 0
  %1 = bitcast i32* %scevgep8 to [4 x [4 x i32]]*
  %scevgep13 = getelementptr [4 x i32], [4 x i32]* %lsr.iv12, i64 1, i64 0
  %2 = bitcast i32* %scevgep13 to [4 x i32]*
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc46, %for.end12
  %lsr.iv4 = phi [4 x [4 x i32]]* [ %9, %for.inc46 ], [ %reach, %for.end12 ]
  %k.0 = phi i32 [ 0, %for.end12 ], [ %inc47, %for.inc46 ]
  %cmp14 = icmp slt i32 %k.0, 4
  br i1 %cmp14, label %for.body15, label %for.end48

for.body15:                                       ; preds = %for.cond13
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc43, %for.body15
  %lsr.iv = phi [4 x [4 x i32]]* [ %8, %for.inc43 ], [ %reach, %for.body15 ]
  %i.1 = phi i32 [ 0, %for.body15 ], [ %inc44, %for.inc43 ]
  %cmp17 = icmp slt i32 %i.1, 4
  br i1 %cmp17, label %for.body18, label %for.end45

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc40, %for.body18
  %lsr.iv1 = phi i64 [ %lsr.iv.next, %for.inc40 ], [ 0, %for.body18 ]
  %tmp = trunc i64 %lsr.iv1 to i32
  %cmp20 = icmp slt i32 %tmp, 4
  br i1 %cmp20, label %for.body21, label %for.end42

for.body21:                                       ; preds = %for.cond19
  %scevgep3 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* %lsr.iv, i64 0, i64 0, i64 %lsr.iv1
  %3 = load i32, i32* %scevgep3, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body21
  %idxprom26 = sext i32 %i.1 to i64
  %arrayidx27 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 %idxprom26
  %idxprom28 = sext i32 %k.0 to i64
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx27, i64 0, i64 %idxprom28
  %4 = load i32, i32* %arrayidx29, align 4
  %tobool30 = icmp ne i32 %4, 0
  br i1 %tobool30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %scevgep6 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* %lsr.iv4, i64 0, i64 0, i64 %lsr.iv1
  %5 = load i32, i32* %scevgep6, align 4
  %tobool35 = icmp ne i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %tobool35, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %for.body21
  %7 = phi i1 [ true, %for.body21 ], [ %6, %land.end ]
  %conv = zext i1 %7 to i32
  %scevgep2 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* %lsr.iv, i64 0, i64 0, i64 %lsr.iv1
  store i32 %conv, i32* %scevgep2, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %lor.end
  %lsr.iv.next = add nuw nsw i64 %lsr.iv1, 1
  br label %for.cond19

for.end42:                                        ; preds = %for.cond19
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %inc44 = add nsw i32 %i.1, 1
  %scevgep = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* %lsr.iv, i64 0, i64 1, i64 0
  %8 = bitcast i32* %scevgep to [4 x [4 x i32]]*
  br label %for.cond16

for.end45:                                        ; preds = %for.cond16
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %inc47 = add nsw i32 %k.0, 1
  %scevgep5 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* %lsr.iv4, i64 0, i64 1, i64 0
  %9 = bitcast i32* %scevgep5 to [4 x [4 x i32]]*
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
  %lsr.iv = phi [4 x i32]* [ %1, %for.inc8 ], [ %reach, %entry ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  %cmp = icmp slt i32 %i.0, 4
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %lsr.iv1 = phi i64 [ %lsr.iv.next, %for.inc ], [ 0, %for.body ]
  %tmp = trunc i64 %lsr.iv1 to i32
  %cmp2 = icmp slt i32 %tmp, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %scevgep2 = getelementptr [4 x i32], [4 x i32]* %lsr.iv, i64 0, i64 %lsr.iv1
  %0 = load i32, i32* %scevgep2, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %0)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %lsr.iv.next = add nuw nsw i64 %lsr.iv1, 1
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1
  %scevgep = getelementptr [4 x i32], [4 x i32]* %lsr.iv, i64 1, i64 0
  %1 = bitcast i32* %scevgep to [4 x i32]*
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
