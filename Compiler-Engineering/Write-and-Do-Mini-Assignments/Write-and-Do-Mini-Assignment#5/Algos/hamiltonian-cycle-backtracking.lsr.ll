; ModuleID = 'hamiltonian-cycle-backtracking.memopt.ll'
source_filename = "./hamiltonian-cycle-backtracking.cpp"
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
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [25 x i8] c"\0ASolution does not exist\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Solution Exists: Following is one Hamiltonian Cycle \0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__const.main.graph1 = private unnamed_addr constant [5 x [5 x i8]] [[5 x i8] c"\00\01\00\01\00", [5 x i8] c"\01\00\01\01\01", [5 x i8] c"\00\01\00\00\01", [5 x i8] c"\01\01\00\00\01", [5 x i8] c"\00\01\01\01\00"], align 16
@__const.main.graph2 = private unnamed_addr constant [5 x [5 x i8]] [[5 x i8] c"\00\01\00\01\00", [5 x i8] c"\01\00\01\01\01", [5 x i8] c"\00\01\00\00\01", [5 x i8] c"\01\01\00\00\00", [5 x i8] c"\00\01\01\00\00"], align 16
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_hamiltonian_cycle_backtracking.cpp, i8* null }]

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
define dso_local zeroext i1 @_Z6isSafeiPA5_bPii(i32 %v, [5 x i8]* %graph, i32* %path, i32 %pos) #4 {
entry:
  %sub = sub nsw i32 %pos, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %path, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %0 to i64
  %arrayidx2 = getelementptr inbounds [5 x i8], [5 x i8]* %graph, i64 %idxprom1
  %idxprom3 = sext i32 %v to i64
  %arrayidx4 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx2, i64 0, i64 %idxprom3
  %1 = load i8, i8* %arrayidx4, align 1
  %tobool = trunc i8 %1 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.inc ], [ 0, %if.end ]
  %tmp = trunc i64 %lsr.iv to i32
  %cmp5 = icmp slt i32 %tmp, %pos
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %scevgep = getelementptr i32, i32* %path, i64 %lsr.iv
  %2 = load i32, i32* %scevgep, align 4
  %cmp8 = icmp eq i32 %2, %v
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  br label %return

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then9, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then9 ], [ true, %for.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z12hamCycleUtilPA5_bPii([5 x i8]* %graph, i32* %path, i32 %pos) #0 {
entry:
  %cmp = icmp eq i32 %pos, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %pos, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %path, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %0 to i64
  %arrayidx2 = getelementptr inbounds [5 x i8], [5 x i8]* %graph, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds i32, i32* %path, i64 0
  %1 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %1 to i64
  %arrayidx5 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx2, i64 0, i64 %idxprom4
  %2 = load i8, i8* %arrayidx5, align 1
  %tobool = trunc i8 %2 to i1
  %conv = zext i1 %tobool to i32
  %cmp6 = icmp eq i32 %conv, 1
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  br label %return

if.else:                                          ; preds = %if.then
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %v.0 = phi i32 [ 1, %if.end ], [ %inc, %for.inc ]
  %cmp8 = icmp slt i32 %v.0, 5
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call zeroext i1 @_Z6isSafeiPA5_bPii(i32 %v.0, [5 x i8]* %graph, i32* %path, i32 %pos)
  br i1 %call, label %if.then9, label %if.end19

if.then9:                                         ; preds = %for.body
  %idxprom10 = sext i32 %pos to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %path, i64 %idxprom10
  store i32 %v.0, i32* %arrayidx11, align 4
  %add = add nsw i32 %pos, 1
  %call12 = call zeroext i1 @_Z12hamCycleUtilPA5_bPii([5 x i8]* %graph, i32* %path, i32 %add)
  %conv13 = zext i1 %call12 to i32
  %cmp14 = icmp eq i32 %conv13, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then9
  br label %return

if.end16:                                         ; preds = %if.then9
  %idxprom17 = sext i32 %pos to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %path, i64 %idxprom17
  store i32 -1, i32* %arrayidx18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %inc = add nsw i32 %v.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then15, %if.else, %if.then7
  %retval.0 = phi i1 [ true, %if.then7 ], [ false, %if.else ], [ true, %if.then15 ], [ false, %for.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z8hamCyclePA5_b([5 x i8]* %graph) #0 {
entry:
  %call = call i8* @_Znam(i64 20) #8
  %0 = bitcast i8* %call to i32*
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.inc ], [ 0, %entry ]
  %tmp = trunc i64 %lsr.iv to i32
  %cmp = icmp slt i32 %tmp, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = shl nuw nsw i64 %lsr.iv, 2
  %scevgep = getelementptr i8, i8* %call, i64 %1
  %scevgep1 = bitcast i8* %scevgep to i32*
  store i32 -1, i32* %scevgep1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds i32, i32* %0, i64 0
  store i32 0, i32* %arrayidx1, align 4
  %call2 = call zeroext i1 @_Z12hamCycleUtilPA5_bPii([5 x i8]* %graph, i32* %0, i32 1)
  %conv = zext i1 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %return

if.end:                                           ; preds = %for.end
  call void @_Z13printSolutionPi(i32* %0)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #5

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: noinline uwtable
define dso_local void @_Z13printSolutionPi(i32* %path) #0 {
entry:
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.inc ], [ 0, %entry ]
  %tmp = trunc i64 %lsr.iv to i32
  %cmp = icmp slt i32 %tmp, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %scevgep = getelementptr i32, i32* %path, i64 %lsr.iv
  %0 = load i32, i32* %scevgep, align 4
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %0)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds i32, i32* %path, i64 0
  %1 = load i32, i32* %arrayidx3, align 4
  %call4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %1)
  %call5 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %call6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %graph1 = alloca [5 x [5 x i8]], align 16
  %graph2 = alloca [5 x [5 x i8]], align 16
  %0 = bitcast [5 x [5 x i8]]* %graph1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([5 x [5 x i8]], [5 x [5 x i8]]* @__const.main.graph1, i32 0, i32 0, i32 0), i64 25, i1 false)
  %arraydecay = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %graph1, i64 0, i64 0
  %call = call zeroext i1 @_Z8hamCyclePA5_b([5 x i8]* %arraydecay)
  %1 = bitcast [5 x [5 x i8]]* %graph2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 getelementptr inbounds ([5 x [5 x i8]], [5 x [5 x i8]]* @__const.main.graph2, i32 0, i32 0, i32 0), i64 25, i1 false)
  %arraydecay1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %graph2, i64 0, i64 0
  %call2 = call zeroext i1 @_Z8hamCyclePA5_b([5 x i8]* %arraydecay1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_hamiltonian_cycle_backtracking.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
