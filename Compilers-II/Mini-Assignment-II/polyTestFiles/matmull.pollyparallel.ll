; ModuleID = 'matmul.c'
source_filename = "matmul.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@A = common dso_local local_unnamed_addr global [1536 x [1536 x float]] zeroinitializer, align 16
@B = common dso_local local_unnamed_addr global [1536 x [1536 x float]] zeroinitializer, align 16
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [5 x i8] c"%lf \00", align 1
@C = common dso_local local_unnamed_addr global [1536 x [1536 x float]] zeroinitializer, align 16

; Function Attrs: nofree norecurse nounwind uwtable writeonly
define dso_local void @init_array() local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc17, %entry
  %indvars.iv34 = phi i64 [ 0, %entry ], [ %indvars.iv.next35, %for.inc17 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next.1, %for.body3 ]
  %0 = mul nuw nsw i64 %indvars.iv, %indvars.iv34
  %1 = trunc i64 %0 to i32
  %rem = and i32 %1, 1022
  %add = or i32 %rem, 1
  %conv = sitofp i32 %add to double
  %div = fmul double %conv, 5.000000e-01
  %conv4 = fptrunc double %div to float
  %arrayidx6 = getelementptr inbounds [1536 x [1536 x float]], [1536 x [1536 x float]]* @A, i64 0, i64 %indvars.iv34, i64 %indvars.iv
  store float %conv4, float* %arrayidx6, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds [1536 x [1536 x float]], [1536 x [1536 x float]]* @B, i64 0, i64 %indvars.iv34, i64 %indvars.iv
  store float %conv4, float* %arrayidx16, align 8, !tbaa !2
  %indvars.iv.next = or i64 %indvars.iv, 1
  %2 = mul nuw nsw i64 %indvars.iv.next, %indvars.iv34
  %3 = trunc i64 %2 to i32
  %rem.1 = and i32 %3, 1023
  %add.1 = add nuw nsw i32 %rem.1, 1
  %conv.1 = sitofp i32 %add.1 to double
  %div.1 = fmul double %conv.1, 5.000000e-01
  %conv4.1 = fptrunc double %div.1 to float
  %arrayidx6.1 = getelementptr inbounds [1536 x [1536 x float]], [1536 x [1536 x float]]* @A, i64 0, i64 %indvars.iv34, i64 %indvars.iv.next
  store float %conv4.1, float* %arrayidx6.1, align 4, !tbaa !2
  %arrayidx16.1 = getelementptr inbounds [1536 x [1536 x float]], [1536 x [1536 x float]]* @B, i64 0, i64 %indvars.iv34, i64 %indvars.iv.next
  store float %conv4.1, float* %arrayidx16.1, align 4, !tbaa !2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 1536
  br i1 %exitcond.1, label %for.inc17, label %for.body3

for.inc17:                                        ; preds = %for.body3
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond36 = icmp eq i64 %indvars.iv.next35, 1536
  br i1 %exitcond36, label %for.end19, label %for.cond1.preheader

for.end19:                                        ; preds = %for.inc17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_array() local_unnamed_addr #1 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end, %entry
  %indvars.iv26 = phi i64 [ 0, %entry ], [ %indvars.iv.next27, %for.end ]
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  br label %for.body3

for.body3:                                        ; preds = %for.inc, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %1 = phi %struct._IO_FILE* [ %0, %for.cond1.preheader ], [ %4, %for.inc ]
  %j.024 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.inc ]
  %arrayidx5 = getelementptr inbounds [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %indvars.iv26, i64 %indvars.iv
  %2 = load float, float* %arrayidx5, align 4, !tbaa !2
  %conv = fpext float %2 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), double %conv)
  %rem.lhs.trunc = trunc i32 %j.024 to i16
  %rem23 = urem i16 %rem.lhs.trunc, 80
  %cmp6 = icmp eq i16 %rem23, 79
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %fputc22 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc = add nuw nsw i32 %j.024, 1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %exitcond = icmp eq i64 %indvars.iv.next, 1536
  br i1 %exitcond, label %for.end, label %for.body3

for.end:                                          ; preds = %for.inc
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %4)
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond28 = icmp eq i64 %indvars.iv.next27, 1536
  br i1 %exitcond28, label %for.end12, label %for.cond1.preheader

for.end12:                                        ; preds = %for.end
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
entry:
  %Packed_B918 = alloca [1048576 x float], align 64
  %Packed_A920 = alloca [49152 x float], align 64
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit147
  ret i32 0

polly.loop_header:                                ; preds = %polly.loop_exit58, %entry
  %polly.indvar = phi i64 [ 0, %entry ], [ %polly.indvar_next, %polly.loop_exit58 ]
  %0 = shl nsw i64 %polly.indvar, 5
  br label %polly.loop_header56

polly.loop_exit58:                                ; preds = %polly.loop_exit64
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond982 = icmp eq i64 %polly.indvar_next, 48
  br i1 %exitcond982, label %polly.loop_header75, label %polly.loop_header

polly.loop_header56:                              ; preds = %polly.loop_exit64, %polly.loop_header
  %polly.indvar59 = phi i64 [ 0, %polly.loop_header ], [ %polly.indvar_next60, %polly.loop_exit64 ]
  %1 = shl nsw i64 %polly.indvar59, 5
  br label %polly.loop_header62

polly.loop_exit64:                                ; preds = %polly.loop_exit70
  %polly.indvar_next60 = add nuw nsw i64 %polly.indvar59, 1
  %exitcond981 = icmp eq i64 %polly.indvar_next60, 48
  br i1 %exitcond981, label %polly.loop_exit58, label %polly.loop_header56

polly.loop_header62:                              ; preds = %polly.loop_exit70, %polly.loop_header56
  %polly.indvar65 = phi i64 [ 0, %polly.loop_header56 ], [ %polly.indvar_next66, %polly.loop_exit70 ]
  %2 = add nuw nsw i64 %polly.indvar65, %0
  %3 = trunc i64 %2 to i32
  br label %polly.loop_header68

polly.loop_exit70:                                ; preds = %polly.loop_header68
  %polly.indvar_next66 = add nuw nsw i64 %polly.indvar65, 1
  %exitcond980 = icmp eq i64 %polly.indvar_next66, 32
  br i1 %exitcond980, label %polly.loop_exit64, label %polly.loop_header62

polly.loop_header68:                              ; preds = %polly.loop_header68, %polly.loop_header62
  %polly.indvar71 = phi i64 [ 0, %polly.loop_header62 ], [ %polly.indvar_next72, %polly.loop_header68 ]
  %4 = add nuw nsw i64 %polly.indvar71, %1
  %5 = trunc i64 %4 to i32
  %6 = mul i32 %5, %3
  %7 = and i32 %6, 1023
  %8 = add nuw nsw i32 %7, 1
  %p_conv.i = sitofp i32 %8 to double
  %p_div.i = fmul double %p_conv.i, 5.000000e-01
  %p_conv4.i = fptrunc double %p_div.i to float
  %scevgep = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @A, i64 0, i64 %2, i64 %4
  store float %p_conv4.i, float* %scevgep, align 4, !alias.scope !8, !noalias !10
  %scevgep74 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @B, i64 0, i64 %2, i64 %4
  store float %p_conv4.i, float* %scevgep74, align 4, !alias.scope !11, !noalias !15
  %polly.indvar_next72 = add nuw nsw i64 %polly.indvar71, 1
  %exitcond979 = icmp eq i64 %polly.indvar_next72, 32
  br i1 %exitcond979, label %polly.loop_exit70, label %polly.loop_header68

polly.loop_header75:                              ; preds = %polly.loop_exit58, %polly.loop_exit83
  %polly.indvar78 = phi i64 [ %polly.indvar_next79, %polly.loop_exit83 ], [ 0, %polly.loop_exit58 ]
  %9 = shl nuw nsw i64 %polly.indvar78, 5
  %10 = or i64 %9, 1
  %11 = or i64 %9, 2
  %12 = or i64 %9, 3
  %13 = or i64 %9, 4
  %14 = or i64 %9, 5
  %15 = or i64 %9, 6
  %16 = or i64 %9, 7
  %17 = or i64 %9, 8
  %18 = or i64 %9, 9
  %19 = or i64 %9, 10
  %20 = or i64 %9, 11
  %21 = or i64 %9, 12
  %22 = or i64 %9, 13
  %23 = or i64 %9, 14
  %24 = or i64 %9, 15
  %25 = or i64 %9, 16
  %26 = or i64 %9, 17
  %27 = or i64 %9, 18
  %28 = or i64 %9, 19
  %29 = or i64 %9, 20
  %30 = or i64 %9, 21
  %31 = or i64 %9, 22
  %32 = or i64 %9, 23
  %33 = or i64 %9, 24
  %34 = or i64 %9, 25
  %35 = or i64 %9, 26
  %36 = or i64 %9, 27
  %37 = or i64 %9, 28
  %38 = or i64 %9, 29
  %39 = or i64 %9, 30
  %40 = or i64 %9, 31
  br label %polly.loop_header81

polly.loop_exit83:                                ; preds = %polly.loop_header81
  %polly.indvar_next79 = add nuw nsw i64 %polly.indvar78, 1
  %exitcond978 = icmp eq i64 %polly.indvar_next79, 48
  br i1 %exitcond978, label %polly.loop_header100, label %polly.loop_header75

polly.loop_header81:                              ; preds = %polly.loop_header81, %polly.loop_header75
  %polly.indvar84 = phi i64 [ 0, %polly.loop_header75 ], [ %polly.indvar_next85, %polly.loop_header81 ]
  %41 = shl nuw nsw i64 %polly.indvar84, 5
  %scevgep974 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %9, i64 %41
  %scevgep974975 = bitcast float* %scevgep974 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975, i8 0, i64 128, i1 false)
  %scevgep974.1 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %10, i64 %41
  %scevgep974975.1 = bitcast float* %scevgep974.1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.1, i8 0, i64 128, i1 false)
  %scevgep974.2 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %11, i64 %41
  %scevgep974975.2 = bitcast float* %scevgep974.2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.2, i8 0, i64 128, i1 false)
  %scevgep974.3 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %12, i64 %41
  %scevgep974975.3 = bitcast float* %scevgep974.3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.3, i8 0, i64 128, i1 false)
  %scevgep974.4 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %13, i64 %41
  %scevgep974975.4 = bitcast float* %scevgep974.4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.4, i8 0, i64 128, i1 false)
  %scevgep974.5 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %14, i64 %41
  %scevgep974975.5 = bitcast float* %scevgep974.5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.5, i8 0, i64 128, i1 false)
  %scevgep974.6 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %15, i64 %41
  %scevgep974975.6 = bitcast float* %scevgep974.6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.6, i8 0, i64 128, i1 false)
  %scevgep974.7 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %16, i64 %41
  %scevgep974975.7 = bitcast float* %scevgep974.7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.7, i8 0, i64 128, i1 false)
  %scevgep974.8 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %17, i64 %41
  %scevgep974975.8 = bitcast float* %scevgep974.8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.8, i8 0, i64 128, i1 false)
  %scevgep974.9 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %18, i64 %41
  %scevgep974975.9 = bitcast float* %scevgep974.9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.9, i8 0, i64 128, i1 false)
  %scevgep974.10 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %19, i64 %41
  %scevgep974975.10 = bitcast float* %scevgep974.10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.10, i8 0, i64 128, i1 false)
  %scevgep974.11 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %20, i64 %41
  %scevgep974975.11 = bitcast float* %scevgep974.11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.11, i8 0, i64 128, i1 false)
  %scevgep974.12 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %21, i64 %41
  %scevgep974975.12 = bitcast float* %scevgep974.12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.12, i8 0, i64 128, i1 false)
  %scevgep974.13 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %22, i64 %41
  %scevgep974975.13 = bitcast float* %scevgep974.13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.13, i8 0, i64 128, i1 false)
  %scevgep974.14 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %23, i64 %41
  %scevgep974975.14 = bitcast float* %scevgep974.14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.14, i8 0, i64 128, i1 false)
  %scevgep974.15 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %24, i64 %41
  %scevgep974975.15 = bitcast float* %scevgep974.15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.15, i8 0, i64 128, i1 false)
  %scevgep974.16 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %25, i64 %41
  %scevgep974975.16 = bitcast float* %scevgep974.16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.16, i8 0, i64 128, i1 false)
  %scevgep974.17 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %26, i64 %41
  %scevgep974975.17 = bitcast float* %scevgep974.17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.17, i8 0, i64 128, i1 false)
  %scevgep974.18 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %27, i64 %41
  %scevgep974975.18 = bitcast float* %scevgep974.18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.18, i8 0, i64 128, i1 false)
  %scevgep974.19 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %28, i64 %41
  %scevgep974975.19 = bitcast float* %scevgep974.19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.19, i8 0, i64 128, i1 false)
  %scevgep974.20 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %29, i64 %41
  %scevgep974975.20 = bitcast float* %scevgep974.20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.20, i8 0, i64 128, i1 false)
  %scevgep974.21 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %30, i64 %41
  %scevgep974975.21 = bitcast float* %scevgep974.21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.21, i8 0, i64 128, i1 false)
  %scevgep974.22 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %31, i64 %41
  %scevgep974975.22 = bitcast float* %scevgep974.22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.22, i8 0, i64 128, i1 false)
  %scevgep974.23 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %32, i64 %41
  %scevgep974975.23 = bitcast float* %scevgep974.23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.23, i8 0, i64 128, i1 false)
  %scevgep974.24 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %33, i64 %41
  %scevgep974975.24 = bitcast float* %scevgep974.24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.24, i8 0, i64 128, i1 false)
  %scevgep974.25 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %34, i64 %41
  %scevgep974975.25 = bitcast float* %scevgep974.25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.25, i8 0, i64 128, i1 false)
  %scevgep974.26 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %35, i64 %41
  %scevgep974975.26 = bitcast float* %scevgep974.26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.26, i8 0, i64 128, i1 false)
  %scevgep974.27 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %36, i64 %41
  %scevgep974975.27 = bitcast float* %scevgep974.27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.27, i8 0, i64 128, i1 false)
  %scevgep974.28 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %37, i64 %41
  %scevgep974975.28 = bitcast float* %scevgep974.28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.28, i8 0, i64 128, i1 false)
  %scevgep974.29 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %38, i64 %41
  %scevgep974975.29 = bitcast float* %scevgep974.29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.29, i8 0, i64 128, i1 false)
  %scevgep974.30 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %39, i64 %41
  %scevgep974975.30 = bitcast float* %scevgep974.30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.30, i8 0, i64 128, i1 false)
  %scevgep974.31 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %40, i64 %41
  %scevgep974975.31 = bitcast float* %scevgep974.31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep974975.31, i8 0, i64 128, i1 false)
  %polly.indvar_next85 = add nuw nsw i64 %polly.indvar84, 1
  %exitcond977 = icmp eq i64 %polly.indvar_next85, 48
  br i1 %exitcond977, label %polly.loop_exit83, label %polly.loop_header81

polly.loop_header100:                             ; preds = %polly.loop_exit83, %polly.loop_exit108
  %polly.indvar103 = phi i64 [ %polly.indvar_next104, %polly.loop_exit108 ], [ 0, %polly.loop_exit83 ]
  %42 = shl nuw nsw i64 %polly.indvar103, 5
  %43 = or i64 %42, 1
  %44 = or i64 %42, 2
  %45 = or i64 %42, 3
  %46 = or i64 %42, 4
  %47 = or i64 %42, 5
  %48 = or i64 %42, 6
  %49 = or i64 %42, 7
  %50 = or i64 %42, 8
  %51 = or i64 %42, 9
  %52 = or i64 %42, 10
  %53 = or i64 %42, 11
  %54 = or i64 %42, 12
  %55 = or i64 %42, 13
  %56 = or i64 %42, 14
  %57 = or i64 %42, 15
  %58 = or i64 %42, 16
  %59 = or i64 %42, 17
  %60 = or i64 %42, 18
  %61 = or i64 %42, 19
  %62 = or i64 %42, 20
  %63 = or i64 %42, 21
  %64 = or i64 %42, 22
  %65 = or i64 %42, 23
  %66 = or i64 %42, 24
  %67 = or i64 %42, 25
  %68 = or i64 %42, 26
  %69 = or i64 %42, 27
  %70 = or i64 %42, 28
  %71 = or i64 %42, 29
  %72 = or i64 %42, 30
  %73 = or i64 %42, 31
  br label %polly.loop_header106

polly.loop_exit108:                               ; preds = %polly.loop_header106
  %polly.indvar_next104 = add nuw nsw i64 %polly.indvar103, 1
  %exitcond972 = icmp eq i64 %polly.indvar_next104, 48
  br i1 %exitcond972, label %polly.loop_header125, label %polly.loop_header100

polly.loop_header106:                             ; preds = %polly.loop_header106, %polly.loop_header100
  %polly.indvar109 = phi i64 [ 0, %polly.loop_header100 ], [ %polly.indvar_next110, %polly.loop_header106 ]
  %74 = shl nuw nsw i64 %polly.indvar109, 5
  %scevgep968 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %42, i64 %74
  %scevgep968969 = bitcast float* %scevgep968 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969, i8 0, i64 128, i1 false)
  %scevgep968.1 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %43, i64 %74
  %scevgep968969.1 = bitcast float* %scevgep968.1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.1, i8 0, i64 128, i1 false)
  %scevgep968.2 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %44, i64 %74
  %scevgep968969.2 = bitcast float* %scevgep968.2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.2, i8 0, i64 128, i1 false)
  %scevgep968.3 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %45, i64 %74
  %scevgep968969.3 = bitcast float* %scevgep968.3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.3, i8 0, i64 128, i1 false)
  %scevgep968.4 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %46, i64 %74
  %scevgep968969.4 = bitcast float* %scevgep968.4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.4, i8 0, i64 128, i1 false)
  %scevgep968.5 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %47, i64 %74
  %scevgep968969.5 = bitcast float* %scevgep968.5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.5, i8 0, i64 128, i1 false)
  %scevgep968.6 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %48, i64 %74
  %scevgep968969.6 = bitcast float* %scevgep968.6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.6, i8 0, i64 128, i1 false)
  %scevgep968.7 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %49, i64 %74
  %scevgep968969.7 = bitcast float* %scevgep968.7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.7, i8 0, i64 128, i1 false)
  %scevgep968.8 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %50, i64 %74
  %scevgep968969.8 = bitcast float* %scevgep968.8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.8, i8 0, i64 128, i1 false)
  %scevgep968.9 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %51, i64 %74
  %scevgep968969.9 = bitcast float* %scevgep968.9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.9, i8 0, i64 128, i1 false)
  %scevgep968.10 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %52, i64 %74
  %scevgep968969.10 = bitcast float* %scevgep968.10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.10, i8 0, i64 128, i1 false)
  %scevgep968.11 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %53, i64 %74
  %scevgep968969.11 = bitcast float* %scevgep968.11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.11, i8 0, i64 128, i1 false)
  %scevgep968.12 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %54, i64 %74
  %scevgep968969.12 = bitcast float* %scevgep968.12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.12, i8 0, i64 128, i1 false)
  %scevgep968.13 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %55, i64 %74
  %scevgep968969.13 = bitcast float* %scevgep968.13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.13, i8 0, i64 128, i1 false)
  %scevgep968.14 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %56, i64 %74
  %scevgep968969.14 = bitcast float* %scevgep968.14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.14, i8 0, i64 128, i1 false)
  %scevgep968.15 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %57, i64 %74
  %scevgep968969.15 = bitcast float* %scevgep968.15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.15, i8 0, i64 128, i1 false)
  %scevgep968.16 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %58, i64 %74
  %scevgep968969.16 = bitcast float* %scevgep968.16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.16, i8 0, i64 128, i1 false)
  %scevgep968.17 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %59, i64 %74
  %scevgep968969.17 = bitcast float* %scevgep968.17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.17, i8 0, i64 128, i1 false)
  %scevgep968.18 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %60, i64 %74
  %scevgep968969.18 = bitcast float* %scevgep968.18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.18, i8 0, i64 128, i1 false)
  %scevgep968.19 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %61, i64 %74
  %scevgep968969.19 = bitcast float* %scevgep968.19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.19, i8 0, i64 128, i1 false)
  %scevgep968.20 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %62, i64 %74
  %scevgep968969.20 = bitcast float* %scevgep968.20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.20, i8 0, i64 128, i1 false)
  %scevgep968.21 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %63, i64 %74
  %scevgep968969.21 = bitcast float* %scevgep968.21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.21, i8 0, i64 128, i1 false)
  %scevgep968.22 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %64, i64 %74
  %scevgep968969.22 = bitcast float* %scevgep968.22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.22, i8 0, i64 128, i1 false)
  %scevgep968.23 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %65, i64 %74
  %scevgep968969.23 = bitcast float* %scevgep968.23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.23, i8 0, i64 128, i1 false)
  %scevgep968.24 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %66, i64 %74
  %scevgep968969.24 = bitcast float* %scevgep968.24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.24, i8 0, i64 128, i1 false)
  %scevgep968.25 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %67, i64 %74
  %scevgep968969.25 = bitcast float* %scevgep968.25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.25, i8 0, i64 128, i1 false)
  %scevgep968.26 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %68, i64 %74
  %scevgep968969.26 = bitcast float* %scevgep968.26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.26, i8 0, i64 128, i1 false)
  %scevgep968.27 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %69, i64 %74
  %scevgep968969.27 = bitcast float* %scevgep968.27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.27, i8 0, i64 128, i1 false)
  %scevgep968.28 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %70, i64 %74
  %scevgep968969.28 = bitcast float* %scevgep968.28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.28, i8 0, i64 128, i1 false)
  %scevgep968.29 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %71, i64 %74
  %scevgep968969.29 = bitcast float* %scevgep968.29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.29, i8 0, i64 128, i1 false)
  %scevgep968.30 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %72, i64 %74
  %scevgep968969.30 = bitcast float* %scevgep968.30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.30, i8 0, i64 128, i1 false)
  %scevgep968.31 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 %73, i64 %74
  %scevgep968969.31 = bitcast float* %scevgep968.31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep968969.31, i8 0, i64 128, i1 false)
  %polly.indvar_next110 = add nuw nsw i64 %polly.indvar109, 1
  %exitcond971 = icmp eq i64 %polly.indvar_next110, 48
  br i1 %exitcond971, label %polly.loop_exit108, label %polly.loop_header106

polly.loop_header125:                             ; preds = %polly.loop_exit108, %polly.loop_exit147
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit147 ], [ 512, %polly.loop_exit108 ]
  %polly.indvar128 = phi i64 [ %polly.indvar_next129, %polly.loop_exit147 ], [ 0, %polly.loop_exit108 ]
  %75 = shl nsw i64 %polly.indvar128, 9
  %76 = mul nsw i64 %polly.indvar128, -512
  br label %polly.loop_header131

polly.loop_exit147:                               ; preds = %polly.loop_exit169
  %polly.indvar_next129 = add nuw nsw i64 %polly.indvar128, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 512
  %exitcond966 = icmp eq i64 %polly.indvar_next129, 3
  br i1 %exitcond966, label %polly.exiting, label %polly.loop_header125

polly.loop_header131:                             ; preds = %polly.loop_exit139, %polly.loop_header125
  %polly.indvar134 = phi i64 [ 0, %polly.loop_header125 ], [ %polly.indvar_next135, %polly.loop_exit139 ]
  %pexp.p_div_q = lshr i64 %polly.indvar134, 3
  %polly.access.mul.Packed_B = shl i64 %pexp.p_div_q, 9
  %77 = add i64 %polly.access.mul.Packed_B, %76
  %pexp.pdiv_r = and i64 %polly.indvar134, 7
  br label %polly.loop_header137

polly.loop_exit139:                               ; preds = %polly.loop_header137
  %polly.indvar_next135 = add nuw nsw i64 %polly.indvar134, 1
  %exitcond957 = icmp eq i64 %polly.indvar_next135, 1536
  br i1 %exitcond957, label %polly.loop_header145, label %polly.loop_header131

polly.loop_header137:                             ; preds = %polly.loop_header137, %polly.loop_header131
  %polly.indvar140 = phi i64 [ %75, %polly.loop_header131 ], [ %polly.indvar_next141.1, %polly.loop_header137 ]
  %polly.access.mul.B = mul nuw nsw i64 %polly.indvar140, 1536
  %polly.access.add.B = add nuw nsw i64 %polly.access.mul.B, %polly.indvar134
  %polly.access.B = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @B, i64 0, i64 0, i64 %polly.access.add.B
  %78 = bitcast float* %polly.access.B to i32*
  %polly.access.B.load917 = load i32, i32* %78, align 4, !alias.scope !11, !noalias !15
  %polly.access.add.Packed_B = add i64 %77, %polly.indvar140
  %polly.access.mul.Packed_B143 = shl nsw i64 %polly.access.add.Packed_B, 3
  %polly.access.add.Packed_B144 = or i64 %polly.access.mul.Packed_B143, %pexp.pdiv_r
  %polly.access.Packed_B = getelementptr [1048576 x float], [1048576 x float]* %Packed_B918, i64 0, i64 %polly.access.add.Packed_B144
  %79 = bitcast float* %polly.access.Packed_B to i32*
  store i32 %polly.access.B.load917, i32* %79, align 4, !alias.scope !13, !noalias !16
  %polly.indvar_next141 = or i64 %polly.indvar140, 1
  %polly.access.mul.B.1 = mul nuw nsw i64 %polly.indvar_next141, 1536
  %polly.access.add.B.1 = add nuw nsw i64 %polly.access.mul.B.1, %polly.indvar134
  %polly.access.B.1 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @B, i64 0, i64 0, i64 %polly.access.add.B.1
  %80 = bitcast float* %polly.access.B.1 to i32*
  %polly.access.B.load917.1 = load i32, i32* %80, align 4, !alias.scope !11, !noalias !15
  %polly.access.add.Packed_B.1 = add i64 %77, %polly.indvar_next141
  %polly.access.mul.Packed_B143.1 = shl nsw i64 %polly.access.add.Packed_B.1, 3
  %polly.access.add.Packed_B144.1 = or i64 %polly.access.mul.Packed_B143.1, %pexp.pdiv_r
  %polly.access.Packed_B.1 = getelementptr [1048576 x float], [1048576 x float]* %Packed_B918, i64 0, i64 %polly.access.add.Packed_B144.1
  %81 = bitcast float* %polly.access.Packed_B.1 to i32*
  store i32 %polly.access.B.load917.1, i32* %81, align 4, !alias.scope !13, !noalias !16
  %polly.indvar_next141.1 = add nuw nsw i64 %polly.indvar140, 2
  %exitcond.1 = icmp eq i64 %polly.indvar_next141.1, %indvars.iv
  br i1 %exitcond.1, label %polly.loop_exit139, label %polly.loop_header137

polly.loop_header145:                             ; preds = %polly.loop_exit139, %polly.loop_exit169
  %indvars.iv959 = phi i64 [ %indvars.iv.next960, %polly.loop_exit169 ], [ 96, %polly.loop_exit139 ]
  %polly.indvar148 = phi i64 [ %polly.indvar_next149, %polly.loop_exit169 ], [ 0, %polly.loop_exit139 ]
  %82 = mul nuw nsw i64 %polly.indvar148, 96
  %83 = mul nsw i64 %polly.indvar148, -24
  br label %polly.loop_header151

polly.loop_exit169:                               ; preds = %polly.loop_exit175
  %polly.indvar_next149 = add nuw nsw i64 %polly.indvar148, 1
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 96
  %exitcond965 = icmp eq i64 %polly.indvar_next149, 16
  br i1 %exitcond965, label %polly.loop_exit147, label %polly.loop_header145

polly.loop_header151:                             ; preds = %polly.loop_exit159, %polly.loop_header145
  %polly.indvar154 = phi i64 [ %82, %polly.loop_header145 ], [ %polly.indvar_next155, %polly.loop_exit159 ]
  %polly.access.mul.A = mul nuw nsw i64 %polly.indvar154, 1536
  %pexp.p_div_q163 = lshr i64 %polly.indvar154, 2
  %84 = add nsw i64 %pexp.p_div_q163, %83
  %polly.access.mul.Packed_A = shl i64 %84, 9
  %85 = add i64 %polly.access.mul.Packed_A, %76
  %pexp.pdiv_r165 = and i64 %polly.indvar154, 3
  br label %polly.loop_header157

polly.loop_exit159:                               ; preds = %polly.loop_header157
  %polly.indvar_next155 = add nuw nsw i64 %polly.indvar154, 1
  %exitcond961 = icmp eq i64 %polly.indvar_next155, %indvars.iv959
  br i1 %exitcond961, label %polly.loop_header167, label %polly.loop_header151

polly.loop_header157:                             ; preds = %polly.loop_header157, %polly.loop_header151
  %polly.indvar160 = phi i64 [ %75, %polly.loop_header151 ], [ %polly.indvar_next161.1, %polly.loop_header157 ]
  %polly.access.add.A = add nuw nsw i64 %polly.indvar160, %polly.access.mul.A
  %polly.access.A = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @A, i64 0, i64 0, i64 %polly.access.add.A
  %86 = bitcast float* %polly.access.A to i32*
  %polly.access.A.load919 = load i32, i32* %86, align 8, !alias.scope !8, !noalias !10
  %polly.access.add.Packed_A = add i64 %85, %polly.indvar160
  %polly.access.mul.Packed_A164 = shl nsw i64 %polly.access.add.Packed_A, 2
  %polly.access.add.Packed_A166 = or i64 %polly.access.mul.Packed_A164, %pexp.pdiv_r165
  %polly.access.Packed_A = getelementptr [49152 x float], [49152 x float]* %Packed_A920, i64 0, i64 %polly.access.add.Packed_A166
  %87 = bitcast float* %polly.access.Packed_A to i32*
  store i32 %polly.access.A.load919, i32* %87, align 4, !alias.scope !14, !noalias !17
  %polly.indvar_next161 = or i64 %polly.indvar160, 1
  %polly.access.add.A.1 = add nuw nsw i64 %polly.indvar_next161, %polly.access.mul.A
  %polly.access.A.1 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @A, i64 0, i64 0, i64 %polly.access.add.A.1
  %88 = bitcast float* %polly.access.A.1 to i32*
  %polly.access.A.load919.1 = load i32, i32* %88, align 4, !alias.scope !8, !noalias !10
  %polly.access.add.Packed_A.1 = add i64 %85, %polly.indvar_next161
  %polly.access.mul.Packed_A164.1 = shl nsw i64 %polly.access.add.Packed_A.1, 2
  %polly.access.add.Packed_A166.1 = or i64 %polly.access.mul.Packed_A164.1, %pexp.pdiv_r165
  %polly.access.Packed_A.1 = getelementptr [49152 x float], [49152 x float]* %Packed_A920, i64 0, i64 %polly.access.add.Packed_A166.1
  %89 = bitcast float* %polly.access.Packed_A.1 to i32*
  store i32 %polly.access.A.load919.1, i32* %89, align 4, !alias.scope !14, !noalias !17
  %polly.indvar_next161.1 = add nuw nsw i64 %polly.indvar160, 2
  %exitcond958.1 = icmp eq i64 %polly.indvar_next161.1, %indvars.iv
  br i1 %exitcond958.1, label %polly.loop_exit159, label %polly.loop_header157

polly.loop_header167:                             ; preds = %polly.loop_exit159, %polly.loop_exit175
  %polly.indvar170 = phi i64 [ %polly.indvar_next171, %polly.loop_exit175 ], [ 0, %polly.loop_exit159 ]
  %90 = shl nsw i64 %polly.indvar170, 3
  %polly.access.mul.Packed_B195 = shl i64 %polly.indvar170, 9
  %91 = or i64 %90, 4
  br label %polly.loop_header173

polly.loop_exit175:                               ; preds = %polly.loop_exit181
  %polly.indvar_next171 = add nuw nsw i64 %polly.indvar170, 1
  %exitcond964 = icmp eq i64 %polly.indvar_next171, 192
  br i1 %exitcond964, label %polly.loop_exit169, label %polly.loop_header167

polly.loop_header173:                             ; preds = %polly.loop_exit181, %polly.loop_header167
  %polly.indvar176 = phi i64 [ 0, %polly.loop_header167 ], [ %polly.indvar_next177, %polly.loop_exit181 ]
  %92 = shl nsw i64 %polly.indvar176, 2
  %93 = add nuw nsw i64 %92, %82
  %polly.access.mul.C185 = mul nuw nsw i64 %93, 1536
  %polly.access.add.C186 = add nuw nsw i64 %polly.access.mul.C185, %90
  %polly.access.C187 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 0, i64 %polly.access.add.C186
  %polly.access.mul.Packed_A189 = shl i64 %polly.indvar176, 9
  %polly.access.add.C275 = add nuw nsw i64 %polly.access.mul.C185, %91
  %polly.access.C276 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 0, i64 %polly.access.add.C275
  %94 = or i64 %93, 1
  %polly.access.mul.C366 = mul nuw nsw i64 %94, 1536
  %polly.access.add.C367 = add nuw nsw i64 %polly.access.mul.C366, %90
  %polly.access.C368 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 0, i64 %polly.access.add.C367
  %polly.access.add.C459 = add nuw nsw i64 %polly.access.mul.C366, %91
  %polly.access.C460 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 0, i64 %polly.access.add.C459
  %95 = or i64 %93, 2
  %polly.access.mul.C550 = mul nuw nsw i64 %95, 1536
  %polly.access.add.C551 = add nuw nsw i64 %polly.access.mul.C550, %90
  %polly.access.C552 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 0, i64 %polly.access.add.C551
  %polly.access.add.C643 = add nuw nsw i64 %polly.access.mul.C550, %91
  %polly.access.C644 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 0, i64 %polly.access.add.C643
  %96 = or i64 %93, 3
  %polly.access.mul.C734 = mul nuw nsw i64 %96, 1536
  %polly.access.add.C735 = add nuw nsw i64 %polly.access.mul.C734, %90
  %polly.access.C736 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 0, i64 %polly.access.add.C735
  %polly.access.add.C827 = add nuw nsw i64 %polly.access.mul.C734, %91
  %polly.access.C828 = getelementptr [1536 x [1536 x float]], [1536 x [1536 x float]]* @C, i64 0, i64 0, i64 %polly.access.add.C827
  %97 = bitcast float* %polly.access.C187 to <4 x float>*
  %98 = load <4 x float>, <4 x float>* %97, align 16, !alias.scope !18, !noalias !23
  %99 = bitcast float* %polly.access.C276 to <4 x float>*
  %100 = load <4 x float>, <4 x float>* %99, align 16, !alias.scope !24, !noalias !29
  %101 = bitcast float* %polly.access.C368 to <4 x float>*
  %102 = load <4 x float>, <4 x float>* %101, align 16, !alias.scope !30, !noalias !35
  %103 = bitcast float* %polly.access.C460 to <4 x float>*
  %104 = load <4 x float>, <4 x float>* %103, align 16, !alias.scope !36, !noalias !41
  %105 = bitcast float* %polly.access.C552 to <4 x float>*
  %106 = load <4 x float>, <4 x float>* %105, align 16, !alias.scope !42, !noalias !47
  %107 = bitcast float* %polly.access.C644 to <4 x float>*
  %108 = load <4 x float>, <4 x float>* %107, align 16, !alias.scope !48, !noalias !53
  %109 = bitcast float* %polly.access.C736 to <4 x float>*
  %110 = load <4 x float>, <4 x float>* %109, align 16, !alias.scope !54, !noalias !59
  %111 = bitcast float* %polly.access.C828 to <4 x float>*
  %112 = load <4 x float>, <4 x float>* %111, align 16, !alias.scope !60, !noalias !65
  br label %polly.loop_header179

polly.loop_exit181:                               ; preds = %polly.loop_header179
  %113 = bitcast float* %polly.access.C187 to <4 x float>*
  store <4 x float> %134, <4 x float>* %113, align 16, !alias.scope !18, !noalias !23
  %114 = bitcast float* %polly.access.C276 to <4 x float>*
  store <4 x float> %138, <4 x float>* %114, align 16, !alias.scope !24, !noalias !29
  %115 = bitcast float* %polly.access.C368 to <4 x float>*
  store <4 x float> %142, <4 x float>* %115, align 16, !alias.scope !30, !noalias !35
  %116 = bitcast float* %polly.access.C460 to <4 x float>*
  store <4 x float> %144, <4 x float>* %116, align 16, !alias.scope !36, !noalias !41
  %117 = bitcast float* %polly.access.C552 to <4 x float>*
  store <4 x float> %148, <4 x float>* %117, align 16, !alias.scope !42, !noalias !47
  %118 = bitcast float* %polly.access.C644 to <4 x float>*
  store <4 x float> %150, <4 x float>* %118, align 16, !alias.scope !48, !noalias !53
  %119 = bitcast float* %polly.access.C736 to <4 x float>*
  store <4 x float> %154, <4 x float>* %119, align 16, !alias.scope !54, !noalias !59
  %120 = bitcast float* %polly.access.C828 to <4 x float>*
  store <4 x float> %156, <4 x float>* %120, align 16, !alias.scope !60, !noalias !65
  %polly.indvar_next177 = add nuw nsw i64 %polly.indvar176, 1
  %exitcond963 = icmp eq i64 %polly.indvar_next177, 24
  br i1 %exitcond963, label %polly.loop_exit175, label %polly.loop_header173

polly.loop_header179:                             ; preds = %polly.loop_header179, %polly.loop_header173
  %polly.indvar182 = phi i64 [ 0, %polly.loop_header173 ], [ %polly.indvar_next183, %polly.loop_header179 ]
  %121 = phi <4 x float> [ %98, %polly.loop_header173 ], [ %134, %polly.loop_header179 ]
  %122 = phi <4 x float> [ %100, %polly.loop_header173 ], [ %138, %polly.loop_header179 ]
  %123 = phi <4 x float> [ %102, %polly.loop_header173 ], [ %142, %polly.loop_header179 ]
  %124 = phi <4 x float> [ %104, %polly.loop_header173 ], [ %144, %polly.loop_header179 ]
  %125 = phi <4 x float> [ %106, %polly.loop_header173 ], [ %148, %polly.loop_header179 ]
  %126 = phi <4 x float> [ %108, %polly.loop_header173 ], [ %150, %polly.loop_header179 ]
  %127 = phi <4 x float> [ %110, %polly.loop_header173 ], [ %154, %polly.loop_header179 ]
  %128 = phi <4 x float> [ %112, %polly.loop_header173 ], [ %156, %polly.loop_header179 ]
  %polly.access.add.Packed_A190 = add nuw nsw i64 %polly.indvar182, %polly.access.mul.Packed_A189
  %polly.access.mul.Packed_A191 = shl nsw i64 %polly.access.add.Packed_A190, 2
  %polly.access.Packed_A193 = getelementptr [49152 x float], [49152 x float]* %Packed_A920, i64 0, i64 %polly.access.mul.Packed_A191
  %_p_scalar_ = load float, float* %polly.access.Packed_A193, align 16, !alias.scope !14, !noalias !17
  %polly.access.add.Packed_B196 = add nuw nsw i64 %polly.indvar182, %polly.access.mul.Packed_B195
  %polly.access.mul.Packed_B197 = shl nsw i64 %polly.access.add.Packed_B196, 3
  %polly.access.Packed_B199 = getelementptr [1048576 x float], [1048576 x float]* %Packed_B918, i64 0, i64 %polly.access.mul.Packed_B197
  %129 = bitcast float* %polly.access.Packed_B199 to <4 x float>*
  %130 = load <4 x float>, <4 x float>* %129, align 32, !alias.scope !13, !noalias !16
  %131 = insertelement <4 x float> undef, float %_p_scalar_, i32 0
  %132 = shufflevector <4 x float> %131, <4 x float> undef, <4 x i32> zeroinitializer
  %133 = fmul <4 x float> %132, %130
  %134 = fadd <4 x float> %121, %133
  %polly.access.add.Packed_B288 = or i64 %polly.access.mul.Packed_B197, 4
  %polly.access.Packed_B289 = getelementptr [1048576 x float], [1048576 x float]* %Packed_B918, i64 0, i64 %polly.access.add.Packed_B288
  %135 = bitcast float* %polly.access.Packed_B289 to <4 x float>*
  %136 = load <4 x float>, <4 x float>* %135, align 16, !alias.scope !13, !noalias !16
  %137 = fmul <4 x float> %132, %136
  %138 = fadd <4 x float> %122, %137
  %polly.access.add.Packed_A373 = or i64 %polly.access.mul.Packed_A191, 1
  %polly.access.Packed_A374 = getelementptr [49152 x float], [49152 x float]* %Packed_A920, i64 0, i64 %polly.access.add.Packed_A373
  %_p_scalar_375 = load float, float* %polly.access.Packed_A374, align 4, !alias.scope !14, !noalias !17
  %139 = insertelement <4 x float> undef, float %_p_scalar_375, i32 0
  %140 = shufflevector <4 x float> %139, <4 x float> undef, <4 x i32> zeroinitializer
  %141 = fmul <4 x float> %130, %140
  %142 = fadd <4 x float> %123, %141
  %143 = fmul <4 x float> %136, %140
  %144 = fadd <4 x float> %143, %124
  %polly.access.add.Packed_A557 = or i64 %polly.access.mul.Packed_A191, 2
  %polly.access.Packed_A558 = getelementptr [49152 x float], [49152 x float]* %Packed_A920, i64 0, i64 %polly.access.add.Packed_A557
  %_p_scalar_559 = load float, float* %polly.access.Packed_A558, align 8, !alias.scope !14, !noalias !17
  %145 = insertelement <4 x float> undef, float %_p_scalar_559, i32 0
  %146 = shufflevector <4 x float> %145, <4 x float> undef, <4 x i32> zeroinitializer
  %147 = fmul <4 x float> %130, %146
  %148 = fadd <4 x float> %125, %147
  %149 = fmul <4 x float> %136, %146
  %150 = fadd <4 x float> %149, %126
  %polly.access.add.Packed_A741 = or i64 %polly.access.mul.Packed_A191, 3
  %polly.access.Packed_A742 = getelementptr [49152 x float], [49152 x float]* %Packed_A920, i64 0, i64 %polly.access.add.Packed_A741
  %_p_scalar_743 = load float, float* %polly.access.Packed_A742, align 4, !alias.scope !14, !noalias !17
  %151 = insertelement <4 x float> undef, float %_p_scalar_743, i32 0
  %152 = shufflevector <4 x float> %151, <4 x float> undef, <4 x i32> zeroinitializer
  %153 = fmul <4 x float> %130, %152
  %154 = fadd <4 x float> %127, %153
  %155 = fmul <4 x float> %136, %152
  %156 = fadd <4 x float> %155, %128
  %polly.indvar_next183 = add nuw nsw i64 %polly.indvar182, 1
  %exitcond962 = icmp eq i64 %polly.indvar_next183, 512
  br i1 %exitcond962, label %polly.loop_exit181, label %polly.loop_header179, !llvm.loop !66
}

; Function Attrs: nofree nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nofree norecurse nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind }
attributes #5 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (git@github.com:llvm/llvm-project.git bbb6d04f6e7571fbba7db3c6e151a09b270b5f08)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"float", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = distinct !{!8, !9, !"polly.alias.scope.MemRef0"}
!9 = distinct !{!9, !"polly.alias.scope.domain"}
!10 = !{!11, !12, !13, !14}
!11 = distinct !{!11, !9, !"polly.alias.scope.MemRef1"}
!12 = distinct !{!12, !9, !"polly.alias.scope.MemRef2"}
!13 = distinct !{!13, !9, !"polly.alias.scope.Packed_B"}
!14 = distinct !{!14, !9, !"polly.alias.scope.Packed_A"}
!15 = !{!8, !12, !13, !14}
!16 = !{!8, !11, !12, !14}
!17 = !{!8, !11, !12, !13}
!18 = !{!19, !12, !"second level alias metadata", !20, !21, !22}
!19 = distinct !{!19, !12, !"second level alias metadata"}
!20 = distinct !{!20, !12, !"second level alias metadata"}
!21 = distinct !{!21, !12, !"second level alias metadata"}
!22 = distinct !{!22, !12, !"second level alias metadata"}
!23 = !{!8, !11, !13, !14}
!24 = !{!25, !12, !"second level alias metadata", !26, !27, !28}
!25 = distinct !{!25, !12, !"second level alias metadata"}
!26 = distinct !{!26, !12, !"second level alias metadata"}
!27 = distinct !{!27, !12, !"second level alias metadata"}
!28 = distinct !{!28, !12, !"second level alias metadata"}
!29 = !{!8, !11, !13, !14, !19, !20, !21, !22}
!30 = !{!31, !12, !"second level alias metadata", !32, !33, !34}
!31 = distinct !{!31, !12, !"second level alias metadata"}
!32 = distinct !{!32, !12, !"second level alias metadata"}
!33 = distinct !{!33, !12, !"second level alias metadata"}
!34 = distinct !{!34, !12, !"second level alias metadata"}
!35 = !{!8, !11, !13, !14, !19, !20, !21, !22, !25, !26, !27, !28}
!36 = !{!37, !12, !"second level alias metadata", !38, !39, !40}
!37 = distinct !{!37, !12, !"second level alias metadata"}
!38 = distinct !{!38, !12, !"second level alias metadata"}
!39 = distinct !{!39, !12, !"second level alias metadata"}
!40 = distinct !{!40, !12, !"second level alias metadata"}
!41 = !{!8, !11, !13, !14, !19, !20, !21, !22, !25, !26, !27, !28, !31, !32, !33, !34}
!42 = !{!43, !12, !"second level alias metadata", !44, !45, !46}
!43 = distinct !{!43, !12, !"second level alias metadata"}
!44 = distinct !{!44, !12, !"second level alias metadata"}
!45 = distinct !{!45, !12, !"second level alias metadata"}
!46 = distinct !{!46, !12, !"second level alias metadata"}
!47 = !{!8, !11, !13, !14, !19, !20, !21, !22, !25, !26, !27, !28, !31, !32, !33, !34, !37, !38, !39, !40}
!48 = !{!49, !12, !"second level alias metadata", !50, !51, !52}
!49 = distinct !{!49, !12, !"second level alias metadata"}
!50 = distinct !{!50, !12, !"second level alias metadata"}
!51 = distinct !{!51, !12, !"second level alias metadata"}
!52 = distinct !{!52, !12, !"second level alias metadata"}
!53 = !{!8, !11, !13, !14, !19, !20, !21, !22, !25, !26, !27, !28, !31, !32, !33, !34, !37, !38, !39, !40, !43, !44, !45, !46}
!54 = !{!55, !12, !"second level alias metadata", !56, !57, !58}
!55 = distinct !{!55, !12, !"second level alias metadata"}
!56 = distinct !{!56, !12, !"second level alias metadata"}
!57 = distinct !{!57, !12, !"second level alias metadata"}
!58 = distinct !{!58, !12, !"second level alias metadata"}
!59 = !{!8, !11, !13, !14, !19, !20, !21, !22, !25, !26, !27, !28, !31, !32, !33, !34, !37, !38, !39, !40, !43, !44, !45, !46, !49, !50, !51, !52}
!60 = !{!61, !12, !"second level alias metadata", !62, !63, !64}
!61 = distinct !{!61, !12, !"second level alias metadata"}
!62 = distinct !{!62, !12, !"second level alias metadata"}
!63 = distinct !{!63, !12, !"second level alias metadata"}
!64 = distinct !{!64, !12, !"second level alias metadata"}
!65 = !{!8, !11, !13, !14, !19, !20, !21, !22, !25, !26, !27, !28, !31, !32, !33, !34, !37, !38, !39, !40, !43, !44, !45, !46, !49, !50, !51, !52, !55, !56, !57, !58}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.vectorize.enable", i1 false}
