; ModuleID = 'shellSort.c'
source_filename = "shellSort.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.data = private unnamed_addr constant [10 x i32] [i32 9, i32 12, i32 54, i32 90, i32 0, i32 100, i32 65, i32 32, i32 54, i32 81], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @shellsort(i32* nocapture %v, i32 %n) local_unnamed_addr #0 {
entry:
  %cmp61 = icmp sgt i32 %n, 1
  br i1 %cmp61, label %for.cond1.preheader, label %for.end25

for.cond.loopexit:                                ; preds = %for.inc21, %for.cond1.preheader
  %cmp = icmp sgt i32 %gap.062.in, 3
  br i1 %cmp, label %for.cond1.preheader, label %for.end25

for.cond1.preheader:                              ; preds = %entry, %for.cond.loopexit
  %gap.062.in = phi i32 [ %gap.062, %for.cond.loopexit ], [ %n, %entry ]
  %gap.062 = sdiv i32 %gap.062.in, 2
  %cmp257 = icmp slt i32 %gap.062, %n
  br i1 %cmp257, label %for.cond4.preheader, label %for.cond.loopexit

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc21
  %i.058 = phi i32 [ %inc, %for.inc21 ], [ %gap.062, %for.cond1.preheader ]
  %j.053 = sub nsw i32 %i.058, %gap.062
  %cmp554 = icmp sgt i32 %j.053, -1
  br i1 %cmp554, label %land.rhs, label %for.inc21

land.rhs:                                         ; preds = %for.cond4.preheader, %for.body9
  %j.056 = phi i32 [ %j.0, %for.body9 ], [ %j.053, %for.cond4.preheader ]
  %i.0.pn55 = phi i32 [ %j.056, %for.body9 ], [ %i.058, %for.cond4.preheader ]
  %idxprom = sext i32 %j.056 to i64
  %arrayidx = getelementptr inbounds i32, i32* %v, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !2
  %idxprom6 = sext i32 %i.0.pn55 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %v, i64 %idxprom6
  %1 = load i32, i32* %arrayidx7, align 4, !tbaa !2
  %cmp8 = icmp sgt i32 %0, %1
  br i1 %cmp8, label %for.body9, label %for.inc21

for.body9:                                        ; preds = %land.rhs
  store i32 %1, i32* %arrayidx, align 4, !tbaa !2
  store i32 %0, i32* %arrayidx7, align 4, !tbaa !2
  %j.0 = sub nsw i32 %j.056, %gap.062
  %cmp5 = icmp sgt i32 %j.0, -1
  br i1 %cmp5, label %land.rhs, label %for.inc21

for.inc21:                                        ; preds = %for.body9, %land.rhs, %for.cond4.preheader
  %inc = add nsw i32 %i.058, 1
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.cond.loopexit, label %for.cond4.preheader

for.end25:                                        ; preds = %for.cond.loopexit, %entry
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
entry:
  %data = alloca [10 x i32], align 16
  %0 = bitcast [10 x i32]* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.data to i8*), i64 40, i1 false)
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv18 = phi i64 [ 0, %entry ], [ %indvars.iv.next19, %for.body ]
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %data, i64 0, i64 %indvars.iv18
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !2
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %1)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond20 = icmp eq i64 %indvars.iv.next19, 10
  br i1 %exitcond20, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %data, i64 0, i64 0
  call void @shellsort(i32* nonnull %arraydecay, i32 10)
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.end
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %data, i64 0, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx5, align 4, !tbaa !2
  %call6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond, label %for.end9, label %for.body3

for.end9:                                         ; preds = %for.body3
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
