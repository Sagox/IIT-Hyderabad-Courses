; ModuleID = 'matrix-chain-multiplication.memopt.ll'
source_filename = "./matrix-chain-multiplication.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.arr = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [38 x i8] c"Minimum number of multiplications is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_matrix_chain_multiplication.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z16MatrixChainOrderPii(i32* %p, i32 %n) #4 {
entry:
  %0 = zext i32 %n to i64
  %1 = zext i32 %n to i64
  %2 = call i8* @llvm.stacksave()
  %3 = mul nuw i64 %0, %1
  %vla = alloca i32, i64 %3, align 16
  %4 = sext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc ], [ 1, %entry ]
  %cmp = icmp slt i64 %indvars.iv11, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = mul nuw nsw i64 %indvars.iv11, %1
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %5
  %arrayidx2 = getelementptr inbounds i32, i32* %arrayidx, i64 %indvars.iv11
  store i32 0, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = sext i32 %n to i64
  %7 = sext i32 %n to i64
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc53, %for.end
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc53 ], [ 2, %for.end ]
  %cmp4 = icmp slt i64 %indvars.iv7, %6
  br i1 %cmp4, label %for.body5, label %for.end55

for.body5:                                        ; preds = %for.cond3
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc50, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc50 ], [ 1, %for.body5 ]
  %8 = sub nsw i64 %7, %indvars.iv7
  %9 = add nsw i64 %8, 1
  %cmp7 = icmp slt i64 %indvars.iv, %9
  br i1 %cmp7, label %for.body8, label %for.end52

for.body8:                                        ; preds = %for.cond6
  %10 = add nuw nsw i64 %indvars.iv, %indvars.iv7
  %11 = sub nuw nsw i64 %10, 1
  %12 = mul nuw nsw i64 %indvars.iv, %1
  %arrayidx12 = getelementptr inbounds i32, i32* %vla, i64 %12
  %arrayidx14 = getelementptr inbounds i32, i32* %arrayidx12, i64 %11
  store i32 2147483647, i32* %arrayidx14, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc47, %for.body8
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc47 ], [ %indvars.iv, %for.body8 ]
  %13 = sub nuw nsw i64 %11, 1
  %cmp17 = icmp ule i64 %indvars.iv1, %13
  br i1 %cmp17, label %for.body18, label %for.end49

for.body18:                                       ; preds = %for.cond15
  %14 = mul nuw nsw i64 %indvars.iv, %1
  %arrayidx20 = getelementptr inbounds i32, i32* %vla, i64 %14
  %arrayidx22 = getelementptr inbounds i32, i32* %arrayidx20, i64 %indvars.iv1
  %15 = load i32, i32* %arrayidx22, align 4
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  %16 = mul nuw nsw i64 %indvars.iv.next2, %1
  %arrayidx25 = getelementptr inbounds i32, i32* %vla, i64 %16
  %arrayidx27 = getelementptr inbounds i32, i32* %arrayidx25, i64 %11
  %17 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 %15, %17
  %18 = sub nuw nsw i64 %indvars.iv, 1
  %arrayidx31 = getelementptr inbounds i32, i32* %p, i64 %18
  %19 = load i32, i32* %arrayidx31, align 4
  %arrayidx33 = getelementptr inbounds i32, i32* %p, i64 %indvars.iv1
  %20 = load i32, i32* %arrayidx33, align 4
  %mul = mul nsw i32 %19, %20
  %arrayidx35 = getelementptr inbounds i32, i32* %p, i64 %11
  %21 = load i32, i32* %arrayidx35, align 4
  %mul36 = mul nsw i32 %mul, %21
  %add37 = add nsw i32 %add28, %mul36
  %22 = mul nuw nsw i64 %indvars.iv, %1
  %arrayidx39 = getelementptr inbounds i32, i32* %vla, i64 %22
  %arrayidx41 = getelementptr inbounds i32, i32* %arrayidx39, i64 %11
  %23 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp slt i32 %add37, %23
  br i1 %cmp42, label %if.then, label %if.end

if.then:                                          ; preds = %for.body18
  %24 = mul nuw nsw i64 %indvars.iv, %1
  %arrayidx44 = getelementptr inbounds i32, i32* %vla, i64 %24
  %arrayidx46 = getelementptr inbounds i32, i32* %arrayidx44, i64 %11
  store i32 %add37, i32* %arrayidx46, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body18
  br label %for.inc47

for.inc47:                                        ; preds = %if.end
  br label %for.cond15

for.end49:                                        ; preds = %for.cond15
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6

for.end52:                                        ; preds = %for.cond6
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond3

for.end55:                                        ; preds = %for.cond3
  %25 = mul nsw i64 1, %1
  %arrayidx56 = getelementptr inbounds i32, i32* %vla, i64 %25
  %sub57 = sub nsw i32 %n, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* %arrayidx56, i64 %idxprom58
  %26 = load i32, i32* %arrayidx59, align 4
  call void @llvm.stackrestore(i8* %2)
  ret i32 %26
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %arr = alloca [4 x i32], align 16
  %0 = bitcast [4 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i32]* @__const.main.arr to i8*), i64 16, i1 false)
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %arr, i64 0, i64 0
  %call1 = call i32 @_Z16MatrixChainOrderPii(i32* %arraydecay, i32 4)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call1)
  %call3 = call i32 @getchar()
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local i32 @getchar() #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_matrix_chain_multiplication.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
