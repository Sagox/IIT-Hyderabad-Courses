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
  %4 = add nuw nsw i64 %1, 1
  %scevgep16 = getelementptr i32, i32* %vla, i64 %4
  %5 = shl nuw nsw i64 %1, 2
  %6 = add nuw nsw i64 %5, 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %lsr.iv17 = phi i32* [ %7, %for.inc ], [ %scevgep16, %entry ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %lsr.iv1718 = bitcast i32* %lsr.iv17 to i1*
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %lsr.iv17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  %scevgep19 = getelementptr i1, i1* %lsr.iv1718, i64 %6
  %7 = bitcast i1* %scevgep19 to i32*
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %scevgep = getelementptr i32, i32* %p, i64 1
  %8 = add nuw nsw i64 %1, 1
  %scevgep9 = getelementptr i32, i32* %vla, i64 %8
  %9 = shl nuw nsw i64 %1, 2
  %10 = add nuw nsw i64 %9, 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc53, %for.end
  %L.0 = phi i32 [ 2, %for.end ], [ %inc54, %for.inc53 ]
  %cmp4 = icmp slt i32 %L.0, %n
  br i1 %cmp4, label %for.body5, label %for.end55

for.body5:                                        ; preds = %for.cond3
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc50, %for.body5
  %lsr.iv10 = phi i32* [ %22, %for.inc50 ], [ %scevgep9, %for.body5 ]
  %lsr.iv5 = phi i32 [ %lsr.iv.next6, %for.inc50 ], [ 2, %for.body5 ]
  %lsr.iv = phi i32* [ %scevgep1, %for.inc50 ], [ %scevgep, %for.body5 ]
  %i.1 = phi i32 [ 1, %for.body5 ], [ %inc51, %for.inc50 ]
  %lsr.iv1013 = bitcast i32* %lsr.iv10 to i8*
  %lsr.iv1011 = bitcast i32* %lsr.iv10 to i1*
  %lsr.iv3 = bitcast i32* %lsr.iv to i8*
  %sub = sub nsw i32 %n, %L.0
  %add = add nsw i32 %sub, 1
  %cmp7 = icmp slt i32 %i.1, %add
  br i1 %cmp7, label %for.body8, label %for.end52

for.body8:                                        ; preds = %for.cond6
  %add9 = add nsw i32 %i.1, %L.0
  %sub10 = sub nsw i32 %add9, 1
  %idxprom11 = sext i32 %i.1 to i64
  %11 = mul nsw i64 %idxprom11, %1
  %arrayidx12 = getelementptr inbounds i32, i32* %vla, i64 %11
  %idxprom13 = sext i32 %sub10 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %arrayidx12, i64 %idxprom13
  store i32 2147483647, i32* %arrayidx14, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc47, %for.body8
  %lsr.iv7 = phi i32 [ %lsr.iv.next8, %for.inc47 ], [ %lsr.iv5, %for.body8 ]
  %lsr.iv2 = phi i64 [ %lsr.iv.next, %for.inc47 ], [ 0, %for.body8 ]
  %12 = add i32 %lsr.iv7, -1
  %sub16 = sub nsw i32 %sub10, 1
  %cmp17 = icmp sle i32 %12, %sub16
  br i1 %cmp17, label %for.body18, label %for.end49

for.body18:                                       ; preds = %for.cond15
  %uglygep14 = getelementptr i8, i8* %lsr.iv1013, i64 %lsr.iv2
  %uglygep1415 = bitcast i8* %uglygep14 to i32*
  %13 = load i32, i32* %uglygep1415, align 4
  %idxprom24 = sext i32 %lsr.iv7 to i64
  %14 = mul nsw i64 %idxprom24, %1
  %arrayidx25 = getelementptr inbounds i32, i32* %vla, i64 %14
  %idxprom26 = sext i32 %sub10 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %arrayidx25, i64 %idxprom26
  %15 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 %13, %15
  %sub29 = sub nsw i32 %i.1, 1
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %p, i64 %idxprom30
  %16 = load i32, i32* %arrayidx31, align 4
  %uglygep = getelementptr i8, i8* %lsr.iv3, i64 %lsr.iv2
  %uglygep4 = bitcast i8* %uglygep to i32*
  %17 = load i32, i32* %uglygep4, align 4
  %mul = mul nsw i32 %16, %17
  %idxprom34 = sext i32 %sub10 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %p, i64 %idxprom34
  %18 = load i32, i32* %arrayidx35, align 4
  %mul36 = mul nsw i32 %mul, %18
  %add37 = add nsw i32 %add28, %mul36
  %idxprom38 = sext i32 %i.1 to i64
  %19 = mul nsw i64 %idxprom38, %1
  %arrayidx39 = getelementptr inbounds i32, i32* %vla, i64 %19
  %idxprom40 = sext i32 %sub10 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %arrayidx39, i64 %idxprom40
  %20 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp slt i32 %add37, %20
  br i1 %cmp42, label %if.then, label %if.end

if.then:                                          ; preds = %for.body18
  %idxprom43 = sext i32 %i.1 to i64
  %21 = mul nsw i64 %idxprom43, %1
  %arrayidx44 = getelementptr inbounds i32, i32* %vla, i64 %21
  %idxprom45 = sext i32 %sub10 to i64
  %arrayidx46 = getelementptr inbounds i32, i32* %arrayidx44, i64 %idxprom45
  store i32 %add37, i32* %arrayidx46, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body18
  br label %for.inc47

for.inc47:                                        ; preds = %if.end
  %lsr.iv.next = add nuw nsw i64 %lsr.iv2, 4
  %lsr.iv.next8 = add i32 %lsr.iv7, 1
  br label %for.cond15

for.end49:                                        ; preds = %for.cond15
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %inc51 = add nsw i32 %i.1, 1
  %scevgep1 = getelementptr i32, i32* %lsr.iv, i64 1
  %lsr.iv.next6 = add nuw i32 %lsr.iv5, 1
  %scevgep12 = getelementptr i1, i1* %lsr.iv1011, i64 %10
  %22 = bitcast i1* %scevgep12 to i32*
  br label %for.cond6

for.end52:                                        ; preds = %for.cond6
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %L.0, 1
  br label %for.cond3

for.end55:                                        ; preds = %for.cond3
  %23 = mul nsw i64 1, %1
  %arrayidx56 = getelementptr inbounds i32, i32* %vla, i64 %23
  %sub57 = sub nsw i32 %n, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* %arrayidx56, i64 %idxprom58
  %24 = load i32, i32* %arrayidx59, align 4
  call void @llvm.stackrestore(i8* %2)
  ret i32 %24
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
