; ModuleID = 'subset-sum.ll'
source_filename = "./subset-sum.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@_ZL11total_nodes = internal global i32 0, align 4
@__const.main.weights = private unnamed_addr constant [8 x i32] [i32 15, i32 22, i32 14, i32 26, i32 32, i32 9, i32 16, i32 8], align 16
@.str.2 = private unnamed_addr constant [20 x i8] c"Nodes generated %dn\00", align 1

; Function Attrs: noinline uwtable
define dso_local void @_Z11printSubsetPii(i32* %A, i32 %size) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %size
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 5, i32 %0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z10comparatorPKvS0_(i8* %pLhs, i8* %pRhs) #2 {
entry:
  %0 = bitcast i8* %pLhs to i32*
  %1 = bitcast i8* %pRhs to i32*
  %2 = load i32, i32* %0, align 4
  %3 = load i32, i32* %1, align 4
  %cmp = icmp sgt i32 %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define dso_local void @_Z10subset_sumPiS_iiiii(i32* %s, i32* %t, i32 %s_size, i32 %t_size, i32 %sum, i32 %ite, i32 %target_sum) #0 {
entry:
  %0 = load i32, i32* @_ZL11total_nodes, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @_ZL11total_nodes, align 4
  %cmp = icmp eq i32 %target_sum, %sum
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @_Z11printSubsetPii(i32* %t, i32 %t_size)
  %add = add nsw i32 %ite, 1
  %cmp1 = icmp slt i32 %add, %s_size
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %idxprom = sext i32 %ite to i64
  %arrayidx = getelementptr inbounds i32, i32* %s, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %sum, %1
  %add2 = add nsw i32 %ite, 1
  %idxprom3 = sext i32 %add2 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %s, i64 %idxprom3
  %2 = load i32, i32* %arrayidx4, align 4
  %add5 = add nsw i32 %sub, %2
  %cmp6 = icmp sle i32 %add5, %target_sum
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %sub8 = sub nsw i32 %t_size, 1
  %idxprom9 = sext i32 %ite to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %s, i64 %idxprom9
  %3 = load i32, i32* %arrayidx10, align 4
  %sub11 = sub nsw i32 %sum, %3
  %add12 = add nsw i32 %ite, 1
  call void @_Z10subset_sumPiS_iiiii(i32* %s, i32* %t, i32 %s_size, i32 %sub8, i32 %sub11, i32 %add12, i32 %target_sum)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then
  br label %if.end38

if.else:                                          ; preds = %entry
  %cmp13 = icmp slt i32 %ite, %s_size
  br i1 %cmp13, label %land.lhs.true14, label %if.end37

land.lhs.true14:                                  ; preds = %if.else
  %idxprom15 = sext i32 %ite to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %s, i64 %idxprom15
  %4 = load i32, i32* %arrayidx16, align 4
  %add17 = add nsw i32 %sum, %4
  %cmp18 = icmp sle i32 %add17, %target_sum
  br i1 %cmp18, label %if.then19, label %if.end37

if.then19:                                        ; preds = %land.lhs.true14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then19
  %i.0 = phi i32 [ %ite, %if.then19 ], [ %inc36, %for.inc ]
  %cmp20 = icmp slt i32 %i.0, %s_size
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom21 = sext i32 %i.0 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %s, i64 %idxprom21
  %5 = load i32, i32* %arrayidx22, align 4
  %idxprom23 = sext i32 %t_size to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %t, i64 %idxprom23
  store i32 %5, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %i.0 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %s, i64 %idxprom25
  %6 = load i32, i32* %arrayidx26, align 4
  %add27 = add nsw i32 %sum, %6
  %cmp28 = icmp sle i32 %add27, %target_sum
  br i1 %cmp28, label %if.then29, label %if.end35

if.then29:                                        ; preds = %for.body
  %add30 = add nsw i32 %t_size, 1
  %idxprom31 = sext i32 %i.0 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %s, i64 %idxprom31
  %7 = load i32, i32* %arrayidx32, align 4
  %add33 = add nsw i32 %sum, %7
  %add34 = add nsw i32 %i.0, 1
  call void @_Z10subset_sumPiS_iiiii(i32* %s, i32* %t, i32 %s_size, i32 %add30, i32 %add33, i32 %add34, i32 %target_sum)
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %inc36 = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end37

if.end37:                                         ; preds = %for.end, %land.lhs.true14, %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z15generateSubsetsPiii(i32* %s, i32 %size, i32 %target_sum) #0 {
entry:
  %conv = sext i32 %size to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #6
  %0 = bitcast i8* %call to i32*
  %1 = bitcast i32* %s to i8*
  %conv1 = sext i32 %size to i64
  call void @qsort(i8* %1, i64 %conv1, i64 4, i32 (i8*, i8*)* @_Z10comparatorPKvS0_)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %total.0 = phi i32 [ 0, %entry ], [ %add, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %size
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %s, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %total.0, %2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds i32, i32* %s, i64 0
  %3 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp sle i32 %3, %target_sum
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %cmp4 = icmp sge i32 %total.0, %target_sum
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @_Z10subset_sumPiS_iiiii(i32* %s, i32* %0, i32 %size, i32 0, i32 0, i32 0, i32 %target_sum)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  %4 = bitcast i32* %0 to i8*
  call void @free(i8* %4) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %weights = alloca [8 x i32], align 16
  %0 = bitcast [8 x i32]* %weights to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x i32]* @__const.main.weights to i8*), i64 32, i1 false)
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %weights, i64 0, i64 0
  call void @_Z15generateSubsetsPiii(i32* %arraydecay, i32 8, i32 53)
  %1 = load i32, i32* @_ZL11total_nodes, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
