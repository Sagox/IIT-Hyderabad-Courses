; ModuleID = 'topological-sorting.memopt.ll'
source_filename = "./topological-sorting.cpp"
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
%class.Graph = type { i32, %"class.std::__cxx11::list"* }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl" }
%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl" = type { %"struct.std::_List_node" }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%"struct.std::_List_iterator" = type { %"struct.std::__detail::_List_node_base"* }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" = type { i32**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { i32*, i32*, i32*, i32** }
%"struct.std::_List_node.6" = type <{ %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf.7", [4 x i8] }>
%"struct.__gnu_cxx::__aligned_membuf.7" = type { [4 x i8] }
%"class.std::allocator.0" = type { i8 }
%"class.std::allocator.3" = type { i8 }
%"class.__gnu_cxx::new_allocator.1" = type { i8 }
%"class.__gnu_cxx::new_allocator.4" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::__allocated_ptr" = type { %"class.std::allocator"*, %"struct.std::_List_node.6"* }

$_ZNSt7__cxx114listIiSaIiEEC2Ev = comdat any

$_ZNSt7__cxx114listIiSaIiEE9push_backERKi = comdat any

$_ZNSt14_List_iteratorIiEC2Ev = comdat any

$_ZNSt7__cxx114listIiSaIiEE5beginEv = comdat any

$_ZNKSt14_List_iteratorIiEneERKS0_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE3endEv = comdat any

$_ZNKSt14_List_iteratorIiEdeEv = comdat any

$_ZNSt14_List_iteratorIiEppEv = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEE4pushERKi = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEEC2IS2_vEEv = comdat any

$_ZNKSt5stackIiSt5dequeIiSaIiEEE5emptyEv = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev = comdat any

$_ZNSt5dequeIiSaIiEED2Ev = comdat any

$_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_ = comdat any

$_ZNSt5dequeIiSaIiEE5beginEv = comdat any

$_ZNSt5dequeIiSaIiEE3endEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim = comdat any

$_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZSt16__deque_buf_sizem = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m = comdat any

$_ZNSaIPiED2Ev = comdat any

$_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIPiEC2IiEERKSaIT_E = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiED2Ev = comdat any

$_ZNSaIiED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv = comdat any

$_ZNSaISt10_List_nodeIiEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm = comdat any

$_ZNSt10_List_nodeImE9_M_valptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv = comdat any

$_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_ = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_ = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt10_List_nodeIiE9_M_valptrEv = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv = comdat any

$_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m = comdat any

$_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE = comdat any

$_ZNSt5dequeIiSaIiEE9push_backERKi = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv = comdat any

$_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_ = comdat any

$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb = comdat any

$_ZSt4copyIPPiS1_ET0_T_S3_S2_ = comdat any

$_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm = comdat any

$_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIPPiET_S2_ = comdat any

$_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIPPiET_S2_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_ = comdat any

$_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv = comdat any

$_ZNSt5dequeIiSaIiEEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_ = comdat any

$_ZNKSt5dequeIiSaIiEE5emptyEv = comdat any

$_ZSteqIiRiPiEbRKSt15_Deque_iteratorIT_T0_T1_ES8_ = comdat any

$_ZNSt5dequeIiSaIiEE4backEv = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEmmEv = comdat any

$_ZNKSt15_Deque_iteratorIiRiPiEdeEv = comdat any

$_ZNSt5dequeIiSaIiEE8pop_backEv = comdat any

$_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_ = comdat any

$_ZNSt5dequeIiSaIiEE15_M_pop_back_auxEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Following is a Topological Sort of the given graph \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_topological_sorting.cpp, i8* null }]

@_ZN5GraphC1Ei = dso_local unnamed_addr alias void (%class.Graph*, i32), void (%class.Graph*, i32)* @_ZN5GraphC2Ei

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

; Function Attrs: noinline uwtable
define dso_local void @_ZN5GraphC2Ei(%class.Graph* %this, i32 %V) unnamed_addr #0 align 2 {
entry:
  %V2 = getelementptr inbounds %class.Graph, %class.Graph* %this, i32 0, i32 0
  store i32 %V, i32* %V2, align 8
  %conv = sext i32 %V to i64
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 24)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %3 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 8)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = or i1 %1, %4
  %6 = extractvalue { i64, i1 } %3, 0
  %7 = select i1 %5, i64 -1, i64 %6
  %call = call i8* @_Znam(i64 %7) #12
  %8 = bitcast i8* %call to i64*
  store i64 %conv, i64* %8, align 16
  %9 = getelementptr inbounds i8, i8* %call, i64 8
  %10 = bitcast i8* %9 to %"class.std::__cxx11::list"*
  %isempty = icmp eq i64 %conv, 0
  br i1 %isempty, label %arrayctor.cont, label %new.ctorloop

new.ctorloop:                                     ; preds = %entry
  %arrayctor.end = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %10, i64 %conv
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %arrayctor.loop, %new.ctorloop
  %arrayctor.cur = phi %"class.std::__cxx11::list"* [ %10, %new.ctorloop ], [ %arrayctor.next, %arrayctor.loop ]
  call void @_ZNSt7__cxx114listIiSaIiEEC2Ev(%"class.std::__cxx11::list"* %arrayctor.cur) #3
  %arrayctor.next = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %"class.std::__cxx11::list"* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont.loopexit, label %arrayctor.loop

arrayctor.cont.loopexit:                          ; preds = %arrayctor.loop
  br label %arrayctor.cont

arrayctor.cont:                                   ; preds = %arrayctor.cont.loopexit, %entry
  %adj = getelementptr inbounds %class.Graph, %class.Graph* %this, i32 0, i32 1
  store %"class.std::__cxx11::list"* %10, %"class.std::__cxx11::list"** %adj, align 8
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEEC2Ev(%"class.std::__cxx11::list"* %this) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = bitcast %"class.std::__cxx11::list"* %this to %"class.std::__cxx11::_List_base"*
  invoke void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(%"class.std::__cxx11::_List_base"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #13
  unreachable
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN5Graph7addEdgeEii(%class.Graph* %this, i32 %v, i32 %w) #0 align 2 {
entry:
  %w.addr = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  %adj = getelementptr inbounds %class.Graph, %class.Graph* %this, i32 0, i32 1
  %0 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %adj, align 8
  %idxprom = sext i32 %v to i64
  %arrayidx = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %0, i64 %idxprom
  call void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* %arrayidx, i32* dereferenceable(4) %w.addr)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* %this, i32* dereferenceable(4) %__x) #0 comdat align 2 {
entry:
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %this) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive2, align 8
  call void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %0, i32* dereferenceable(4) %__x)
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN5Graph19topologicalSortUtilEiPbRSt5stackIiSt5dequeIiSaIiEEE(%class.Graph* %this, i32 %v, i8* %visited, %"class.std::stack"* dereferenceable(80) %Stack) #0 align 2 {
entry:
  %v.addr = alloca i32, align 4
  %i = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp4 = alloca %"struct.std::_List_iterator", align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds i8, i8* %visited, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  call void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* %i) #3
  %adj = getelementptr inbounds %class.Graph, %class.Graph* %this, i32 0, i32 1
  %1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %adj, align 8
  %2 = load i32, i32* %v.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %1, i64 %idxprom2
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %arrayidx3) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %3 = bitcast %"struct.std::_List_iterator"* %i to i8*
  %4 = bitcast %"struct.std::_List_iterator"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %adj5 = getelementptr inbounds %class.Graph, %class.Graph* %this, i32 0, i32 1
  %5 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %adj5, align 8
  %6 = load i32, i32* %v.addr, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %5, i64 %idxprom6
  %call8 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %arrayidx7) #3
  %coerce.dive9 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %ref.tmp4, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call8, %"struct.std::__detail::_List_node_base"** %coerce.dive9, align 8
  %call10 = call zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %i, %"struct.std::_List_iterator"* dereferenceable(8) %ref.tmp4) #3
  br i1 %call10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call11 = call dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i) #3
  %7 = load i32, i32* %call11, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %visited, i64 %idxprom12
  %8 = load i8, i8* %arrayidx13, align 1
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call14 = call dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i) #3
  %9 = load i32, i32* %call14, align 4
  call void @_ZN5Graph19topologicalSortUtilEiPbRSt5stackIiSt5dequeIiSaIiEEE(%class.Graph* %this, i32 %9, i8* %visited, %"class.std::stack"* dereferenceable(80) %Stack)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call15 = call dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %i) #3
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::stack"* %Stack, i32* dereferenceable(4) %v.addr)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* null, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %this) #6 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %2) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %3
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* dereferenceable(8) %__x) #6 comdat align 2 {
entry:
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__x, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  %cmp = icmp ne %"struct.std::__detail::_List_node_base"* %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %this) #6 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %1) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %this) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::__detail::_List_node_base"* %0 to %"struct.std::_List_node.6"*
  %call = invoke i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node.6"* %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret i32* %call

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #13
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %this) #6 comdat align 2 {
entry:
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %0, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  ret %"struct.std::_List_iterator"* %this
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::stack"* %this, i32* dereferenceable(4) %__x) #0 comdat align 2 {
entry:
  %c = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %this, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEE9push_backERKi(%"class.std::deque"* %c, i32* dereferenceable(4) %__x)
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN5Graph15topologicalSortEv(%class.Graph* %this) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %Stack = alloca %"class.std::stack", align 8
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEEC2IS2_vEEv(%"class.std::stack"* %Stack)
  %V = getelementptr inbounds %class.Graph, %class.Graph* %this, i32 0, i32 0
  %0 = load i32, i32* %V, align 8
  %conv = sext i32 %0 to i64
  %call = invoke i8* @_Znam(i64 %conv) #12
          to label %invoke.cont unwind label %lpad.loopexit.split-lp.loopexit.split-lp

invoke.cont:                                      ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.inc ], [ 0, %invoke.cont ]
  %V2 = getelementptr inbounds %class.Graph, %class.Graph* %this, i32 0, i32 0
  %1 = load i32, i32* %V2, align 8
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv6, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %indvars.iv6
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond

lpad.loopexit:                                    ; preds = %while.cond, %while.body, %invoke.cont20, %invoke.cont22, %invoke.cont24
  %lpad.loopexit1 = landingpad { i8*, i32 }
          cleanup
  br label %lpad

lpad.loopexit.split-lp.loopexit:                  ; preds = %if.then
  %lpad.loopexit3 = landingpad { i8*, i32 }
          cleanup
  br label %lpad.loopexit.split-lp

lpad.loopexit.split-lp.loopexit.split-lp:         ; preds = %entry
  %lpad.loopexit.split-lp4 = landingpad { i8*, i32 }
          cleanup
  br label %lpad.loopexit.split-lp

lpad.loopexit.split-lp:                           ; preds = %lpad.loopexit.split-lp.loopexit.split-lp, %lpad.loopexit.split-lp.loopexit
  %lpad.phi5 = phi { i8*, i32 } [ %lpad.loopexit3, %lpad.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp4, %lpad.loopexit.split-lp.loopexit.split-lp ]
  br label %lpad

lpad:                                             ; preds = %lpad.loopexit.split-lp, %lpad.loopexit
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit1, %lpad.loopexit ], [ %lpad.phi5, %lpad.loopexit.split-lp ]
  %3 = extractvalue { i8*, i32 } %lpad.phi, 0
  %4 = extractvalue { i8*, i32 } %lpad.phi, 1
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* %Stack) #3
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc13, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc13 ], [ 0, %for.end ]
  %V5 = getelementptr inbounds %class.Graph, %class.Graph* %this, i32 0, i32 0
  %5 = load i32, i32* %V5, align 8
  %6 = sext i32 %5 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %6
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds i8, i8* %call, i64 %indvars.iv
  %7 = load i8, i8* %arrayidx9, align 1
  %tobool = trunc i8 %7 to i1
  %conv10 = zext i1 %tobool to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %8 = trunc i64 %indvars.iv to i32
  invoke void @_ZN5Graph19topologicalSortUtilEiPbRSt5stackIiSt5dequeIiSaIiEEE(%class.Graph* %this, i32 %8, i8* %call, %"class.std::stack"* dereferenceable(80) %Stack)
          to label %invoke.cont12 unwind label %lpad.loopexit.split-lp.loopexit

invoke.cont12:                                    ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont12, %for.body7
  br label %for.inc13

for.inc13:                                        ; preds = %if.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4

for.end15:                                        ; preds = %for.cond4
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont26, %for.end15
  %call17 = invoke zeroext i1 @_ZNKSt5stackIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::stack"* %Stack)
          to label %invoke.cont16 unwind label %lpad.loopexit

invoke.cont16:                                    ; preds = %while.cond
  %conv18 = zext i1 %call17 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont16
  %call21 = invoke dereferenceable(4) i32* @_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv(%"class.std::stack"* %Stack)
          to label %invoke.cont20 unwind label %lpad.loopexit

invoke.cont20:                                    ; preds = %while.body
  %9 = load i32, i32* %call21, align 4
  %call23 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %9)
          to label %invoke.cont22 unwind label %lpad.loopexit

invoke.cont22:                                    ; preds = %invoke.cont20
  %call25 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
          to label %invoke.cont24 unwind label %lpad.loopexit

invoke.cont24:                                    ; preds = %invoke.cont22
  invoke void @_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv(%"class.std::stack"* %Stack)
          to label %invoke.cont26 unwind label %lpad.loopexit

invoke.cont26:                                    ; preds = %invoke.cont24
  br label %while.cond

while.end:                                        ; preds = %invoke.cont16
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* %Stack) #3
  ret void

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %3, 0
  %lpad.val27 = insertvalue { i8*, i32 } %lpad.val, i32 %4, 1
  resume { i8*, i32 } %lpad.val27
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEEC2IS2_vEEv(%"class.std::stack"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %c = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %this, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* %c)
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt5stackIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::stack"* %this) #6 comdat align 2 {
entry:
  %c = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %this, i32 0, i32 0
  %call = call zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* %c) #3
  ret i1 %call
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv(%"class.std::stack"* %this) #6 comdat align 2 {
entry:
  %c = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %this, i32 0, i32 0
  %call = call dereferenceable(4) i32* @_ZNSt5dequeIiSaIiEE4backEv(%"class.std::deque"* %c) #3
  ret i32* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv(%"class.std::stack"* %this) #6 comdat align 2 {
entry:
  %c = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %this, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEE8pop_backEv(%"class.std::deque"* %c) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %c = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %this, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %c) #3
  ret void
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #8 {
entry:
  %g = alloca %class.Graph, align 8
  call void @_ZN5GraphC1Ei(%class.Graph* %g, i32 6)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g, i32 5, i32 2)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g, i32 5, i32 0)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g, i32 4, i32 0)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g, i32 4, i32 1)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g, i32 2, i32 3)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g, i32 3, i32 1)
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  call void @_ZN5Graph15topologicalSortEv(%class.Graph* %g)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %this) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"class.std::deque"* %this) #3
  call void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* sret %agg.tmp2, %"class.std::deque"* %this) #3
  %0 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %call = call dereferenceable(1) %"class.std::allocator.0"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %0) #3
  invoke void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"class.std::allocator.0"* dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %1) #3
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %5) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  call void @__clang_call_terminate(i8* %3) #13
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator.0"* dereferenceable(1) %0) #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #6 comdat align 2 {
entry:
  %0 = bitcast %"struct.std::_Deque_iterator"* %agg.result to i8*
  %1 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_start) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #6 comdat align 2 {
entry:
  %0 = bitcast %"struct.std::_Deque_iterator"* %agg.result to i8*
  %1 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_finish) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator.0"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 0
  %0 = load i32**, i32*** %_M_map, align 8
  %tobool = icmp ne i32** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %1 = load i32**, i32*** %_M_node, align 8
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl3, i32 0, i32 3
  %_M_node4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %2 = load i32**, i32*** %_M_node4, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %2, i64 1
  call void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %1, i32** %add.ptr) #3
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5, i32 0, i32 0
  %3 = load i32**, i32*** %_M_map6, align 8
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl7, i32 0, i32 1
  %4 = load i64, i64* %_M_map_size, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %this, i32** %3, i64 %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8) #3
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #9 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #13
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"* dereferenceable(32) %__x) unnamed_addr #6 comdat align 2 {
entry:
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 0
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %__x, i32 0, i32 0
  %0 = load i32*, i32** %_M_cur2, align 8
  store i32* %0, i32** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 1
  %_M_first3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %__x, i32 0, i32 1
  %1 = load i32*, i32** %_M_first3, align 8
  store i32* %1, i32** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 2
  %_M_last4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %__x, i32 0, i32 2
  %2 = load i32*, i32** %_M_last4, align 8
  store i32* %2, i32** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 3
  %_M_node5 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %__x, i32 0, i32 3
  %3 = load i32**, i32*** %_M_node5, align 8
  store i32** %3, i32*** %_M_node, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %__nstart, i32** %__nfinish) #6 comdat align 2 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__n.0 = phi i32** [ %__nstart, %entry ], [ %incdec.ptr, %for.inc ]
  %cmp = icmp ult i32** %__n.0, %__nfinish
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32*, i32** %__n.0, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %this, i32* %0) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i32*, i32** %__n.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %this, i32** %__p, i64 %__n) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__map_alloc = alloca %"class.std::allocator.3", align 1
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.3"* sret %__map_alloc, %"class.std::_Deque_base"* %this) #3
  invoke void @_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m(%"class.std::allocator.3"* dereferenceable(1) %__map_alloc, i32** %__p, i64 %__n)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.3"* %__map_alloc) #3
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = extractvalue { i8*, i32 } %0, 1
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.3"* %__map_alloc) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  call void @__clang_call_terminate(i8* %1) #13
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this to %"class.std::allocator.0"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %this, i32* %__p) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator.0"*
  %call = invoke i64 @_ZSt16__deque_buf_sizem(i64 4)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.0"* dereferenceable(1) %0, i32* %__p, i64 %call)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #13
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.0"* dereferenceable(1) %__a, i32* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.0"* %__a to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.1"* %0, i32* %__p, i64 %__n)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZSt16__deque_buf_sizem(i64 %__size) #6 comdat {
entry:
  %cmp = icmp ult i64 %__size, 512
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %div = udiv i64 512, %__size
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div, %cond.true ], [ 1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.1"* %this, i32* %__p, i64 %0) #6 comdat align 2 {
entry:
  %1 = bitcast i32* %__p to i8*
  call void @_ZdlPv(i8* %1) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #10

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.3"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #6 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.3"* %agg.result to i8*
  %call = call dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #3
  call void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.3"* %agg.result, %"class.std::allocator.0"* dereferenceable(1) %call) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m(%"class.std::allocator.3"* dereferenceable(1) %__a, i32** %__p, i64 %__n) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.3"* %__a to %"class.__gnu_cxx::new_allocator.4"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.4"* %0, i32** %__p, i64 %__n)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIPiED2Ev(%"class.std::allocator.3"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.3"* %this to %"class.__gnu_cxx::new_allocator.4"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.4"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.3"* %this, %"class.std::allocator.0"* dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
entry:
  %1 = bitcast %"class.std::allocator.3"* %this to %"class.__gnu_cxx::new_allocator.4"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.4"* %1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.4"* %this) unnamed_addr #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.4"* %this, i32** %__p, i64 %0) #6 comdat align 2 {
entry:
  %1 = bitcast i32** %__p to i8*
  call void @_ZdlPv(i8* %1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.4"* %this) unnamed_addr #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.0"* %this to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.1"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(%"class.std::__cxx11::_List_base"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl) #3
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv(%"class.std::__cxx11::_List_base"* %this) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %0 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeIiEEC2Ev(%"class.std::allocator"* %0) #3
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv(%"class.std::__cxx11::_List_base"* %this) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node3 to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %_M_impl4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this, i32 0, i32 0
  %_M_node5 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl4, i32 0, i32 0
  %2 = bitcast %"struct.std::_List_node"* %_M_node5 to %"struct.std::__detail::_List_node_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this, i32 0, i32 0
  %_M_node7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl6, i32 0, i32 0
  %3 = bitcast %"struct.std::_List_node"* %_M_node7 to %"struct.std::__detail::_List_node_base"*
  %_M_prev = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %3, i32 0, i32 1
  store %"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"** %_M_prev, align 8
  invoke void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @__clang_call_terminate(i8* %5) #13
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaISt10_List_nodeIiEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator"* %this to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  store i64 %__n, i64* %call, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64* @_ZNSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %this) #6 comdat align 2 {
entry:
  %_M_storage = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %this, i32 0, i32 1
  %call = call i64* @_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %_M_storage) #3
  ret i64* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64* @_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #6 comdat align 2 {
entry:
  %call = call i8* @_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #3
  %0 = bitcast i8* %call to i64*
  ret i64* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i8* @_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #6 comdat align 2 {
entry:
  %_M_storage = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %this, i32 0, i32 0
  %0 = bitcast [8 x i8]* %_M_storage to i8*
  ret i8* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce, i32* dereferenceable(4) %__args) #0 comdat align 2 {
entry:
  %__position = alloca %"struct.std::_List_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %call = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %__args) #3
  %call2 = call %"struct.std::_List_node.6"* @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(%"class.std::__cxx11::list"* %this, i32* dereferenceable(4) %call)
  %0 = bitcast %"struct.std::_List_node.6"* %call2 to %"struct.std::__detail::_List_node_base"*
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"* %1) #3
  %2 = bitcast %"class.std::__cxx11::list"* %this to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %2, i64 1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %"struct.std::_List_node.6"* @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(%"class.std::__cxx11::list"* %this, i32* dereferenceable(4) %__args) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__guard = alloca %"struct.std::__allocated_ptr", align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this to %"class.std::__cxx11::_List_base"*
  %call = call %"struct.std::_List_node.6"* @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %0)
  %1 = bitcast %"class.std::__cxx11::list"* %this to %"class.std::__cxx11::_List_base"*
  %call2 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %1) #3
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(%"struct.std::__allocated_ptr"* %__guard, %"class.std::allocator"* dereferenceable(1) %call2, %"struct.std::_List_node.6"* %call) #3
  %call3 = invoke i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node.6"* %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %__args) #3
  invoke void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %call2, i32* %call3, i32* dereferenceable(4) %call4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %call6 = call dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(%"struct.std::__allocated_ptr"* %__guard, i8* null) #3
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(%"struct.std::__allocated_ptr"* %__guard) #3
  ret %"struct.std::_List_node.6"* %call

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(%"struct.std::__allocated_ptr"* %__guard) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %3, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %4, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %__t) #6 comdat {
entry:
  ret i32* %__t
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"*) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  %0 = load i64, i64* %call, align 8
  %add = add i64 %0, %__n
  store i64 %add, i64* %call, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %"struct.std::_List_node.6"* @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  %call = call %"struct.std::_List_node.6"* @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(%"class.std::allocator"* dereferenceable(1) %0, i64 1)
  ret %"struct.std::_List_node.6"* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(%"struct.std::__allocated_ptr"* %this, %"class.std::allocator"* dereferenceable(1) %__a, %"struct.std::_List_node.6"* %__ptr) unnamed_addr #6 comdat align 2 {
entry:
  %_M_alloc = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this, i32 0, i32 0
  %call = call %"class.std::allocator"* @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(%"class.std::allocator"* dereferenceable(1) %__a) #3
  store %"class.std::allocator"* %call, %"class.std::allocator"** %_M_alloc, align 8
  %_M_ptr = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this, i32 0, i32 1
  store %"struct.std::_List_node.6"* %__ptr, %"struct.std::_List_node.6"** %_M_ptr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %__a, i32* %__p, i32* dereferenceable(4) %__args) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator"* %__a to %"class.__gnu_cxx::new_allocator"*
  %call = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %__args) #3
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %0, i32* %__p, i32* dereferenceable(4) %call)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node.6"* %this) #6 comdat align 2 {
entry:
  %_M_storage = getelementptr inbounds %"struct.std::_List_node.6", %"struct.std::_List_node.6"* %this, i32 0, i32 1
  %call = call i32* @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf.7"* %_M_storage) #3
  ret i32* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(%"struct.std::__allocated_ptr"* %this, i8* %0) #6 comdat align 2 {
entry:
  %_M_ptr = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this, i32 0, i32 1
  store %"struct.std::_List_node.6"* null, %"struct.std::_List_node.6"** %_M_ptr, align 8
  ret %"struct.std::__allocated_ptr"* %this
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(%"struct.std::__allocated_ptr"* %this) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %_M_ptr = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this, i32 0, i32 1
  %0 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %_M_ptr, align 8
  %cmp = icmp ne %"struct.std::_List_node.6"* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_alloc = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this, i32 0, i32 0
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %_M_alloc, align 8
  %_M_ptr2 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this, i32 0, i32 1
  %2 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %_M_ptr2, align 8
  invoke void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(%"class.std::allocator"* dereferenceable(1) %1, %"struct.std::_List_node.6"* %2, i64 1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  ret void

terminate.lpad:                                   ; preds = %if.then
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @__clang_call_terminate(i8* %4) #13
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %"struct.std::_List_node.6"* @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator"* %__a to %"class.__gnu_cxx::new_allocator"*
  %call = call %"struct.std::_List_node.6"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %0, i64 %__n, i8* null)
  ret %"struct.std::_List_node.6"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %"struct.std::_List_node.6"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8* %0) #0 comdat align 2 {
entry:
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #3
  %cmp = icmp ugt i64 %__n, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %mul = mul i64 %__n, 24
  %call2 = call i8* @_Znwm(i64 %mul)
  %1 = bitcast i8* %call2 to %"struct.std::_List_node.6"*
  ret %"struct.std::_List_node.6"* %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #6 comdat align 2 {
entry:
  ret i64 768614336404564650
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %"class.std::allocator"* @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(%"class.std::allocator"* dereferenceable(1) %__r) #6 comdat {
entry:
  ret %"class.std::allocator"* %__r
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p, i32* dereferenceable(4) %__args) #6 comdat align 2 {
entry:
  %0 = bitcast i32* %__p to i8*
  %1 = bitcast i8* %0 to i32*
  %call = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %__args) #3
  %2 = load i32, i32* %call, align 4
  store i32 %2, i32* %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf.7"* %this) #6 comdat align 2 {
entry:
  %call = call i8* @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf.7"* %this) #3
  %0 = bitcast i8* %call to i32*
  ret i32* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i8* @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf.7"* %this) #6 comdat align 2 {
entry:
  %_M_storage = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf.7", %"struct.__gnu_cxx::__aligned_membuf.7"* %this, i32 0, i32 0
  %0 = bitcast [4 x i8]* %_M_storage to i8*
  ret i8* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(%"class.std::allocator"* dereferenceable(1) %__a, %"struct.std::_List_node.6"* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator"* %__a to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* %0, %"struct.std::_List_node.6"* %__p, i64 %__n)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::_List_node.6"* %__p, i64 %0) #6 comdat align 2 {
entry:
  %1 = bitcast %"struct.std::_List_node.6"* %__p to i8*
  call void @_ZdlPv(i8* %1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %this, %"struct.std::__detail::_List_node_base"* %__x) unnamed_addr #6 comdat align 2 {
entry:
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__x, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE9push_backERKi(%"class.std::deque"* %this, i32* dereferenceable(4) %__x) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 0
  %1 = load i32*, i32** %_M_cur, align 8
  %2 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish3, i32 0, i32 2
  %3 = load i32*, i32** %_M_last, align 8
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 -1
  %cmp = icmp ne i32* %1, %add.ptr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl4 to %"class.std::allocator.0"*
  %6 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_finish6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5, i32 0, i32 3
  %_M_cur7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish6, i32 0, i32 0
  %7 = load i32*, i32** %_M_cur7, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.0"* dereferenceable(1) %5, i32* %7, i32* dereferenceable(4) %__x)
  %8 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8, i32 0, i32 3
  %_M_cur10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish9, i32 0, i32 0
  %9 = load i32*, i32** %_M_cur10, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %incdec.ptr, i32** %_M_cur10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* %this, i32* dereferenceable(4) %__x)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.0"* dereferenceable(1) %__a, i32* %__p, i32* dereferenceable(4) %__args) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.0"* %__a to %"class.__gnu_cxx::new_allocator.1"*
  %call = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %__args) #3
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.1"* %0, i32* %__p, i32* dereferenceable(4) %call)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* %this, i32* dereferenceable(4) %__args) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* %this, i64 1)
  %0 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %call = call i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %0)
  %1 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %2 = load i32**, i32*** %_M_node, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %2, i64 1
  store i32* %call, i32** %add.ptr, align 8
  %3 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2 to %"class.std::allocator.0"*
  %5 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %5, i32 0, i32 0
  %_M_finish4 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl3, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish4, i32 0, i32 0
  %6 = load i32*, i32** %_M_cur, align 8
  %call5 = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %__args) #3
  invoke void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.0"* dereferenceable(1) %4, i32* %6, i32* dereferenceable(4) %call5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %7 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl6, i32 0, i32 3
  %8 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8, i32 0, i32 3
  %_M_node10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish9, i32 0, i32 3
  %9 = load i32**, i32*** %_M_node10, align 8
  %add.ptr11 = getelementptr inbounds i32*, i32** %9, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish7, i32** %add.ptr11) #3
  %10 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl12 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %10, i32 0, i32 0
  %_M_finish13 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl12, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish13, i32 0, i32 1
  %11 = load i32*, i32** %_M_first, align 8
  %12 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl14 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %_M_finish15 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl14, i32 0, i32 3
  %_M_cur16 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish15, i32 0, i32 0
  store i32* %11, i32** %_M_cur16, align 8
  br label %try.cont

lpad:                                             ; preds = %entry
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = extractvalue { i8*, i32 } %13, 1
  br label %catch

catch:                                            ; preds = %lpad
  %16 = call i8* @__cxa_begin_catch(i8* %14) #3
  %17 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %18 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl17 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %18, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl17, i32 0, i32 3
  %_M_node19 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish18, i32 0, i32 3
  %19 = load i32**, i32*** %_M_node19, align 8
  %add.ptr20 = getelementptr inbounds i32*, i32** %19, i64 1
  %20 = load i32*, i32** %add.ptr20, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %17, i32* %20) #3
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad21

lpad21:                                           ; preds = %catch
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  %23 = extractvalue { i8*, i32 } %21, 1
  invoke void @__cxa_end_catch()
          to label %invoke.cont22 unwind label %terminate.lpad

invoke.cont22:                                    ; preds = %lpad21
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  ret void

eh.resume:                                        ; preds = %invoke.cont22
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %22, 0
  %lpad.val24 = insertvalue { i8*, i32 } %lpad.val, i32 %23, 1
  resume { i8*, i32 } %lpad.val24

terminate.lpad:                                   ; preds = %lpad21
  %24 = landingpad { i8*, i32 }
          catch i8* null
  %25 = extractvalue { i8*, i32 } %24, 0
  call void @__clang_call_terminate(i8* %25) #13
  unreachable

unreachable:                                      ; preds = %catch
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.1"* %this, i32* %__p, i32* dereferenceable(4) %__args) #6 comdat align 2 {
entry:
  %0 = bitcast i32* %__p to i8*
  %1 = bitcast i8* %0 to i32*
  %call = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %__args) #3
  %2 = load i32, i32* %call, align 4
  store i32 %2, i32* %1, align 4
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* %this, i64 %__nodes_to_add) #0 comdat align 2 {
entry:
  %add = add i64 %__nodes_to_add, 1
  %0 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 1
  %1 = load i64, i64* %_M_map_size, align 8
  %2 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %3 = load i32**, i32*** %_M_node, align 8
  %4 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl3, i32 0, i32 0
  %5 = load i32**, i32*** %_M_map, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub i64 %1, %sub.ptr.div
  %cmp = icmp ugt i64 %add, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* %this, i64 %__nodes_to_add, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #0 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator.0"*
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %call2 = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.0"* dereferenceable(1) %0, i64 %call)
  ret i32* %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this, i32** %__new_node) #6 comdat align 2 {
entry:
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 3
  store i32** %__new_node, i32*** %_M_node, align 8
  %0 = load i32*, i32** %__new_node, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 1
  store i32* %0, i32** %_M_first, align 8
  %_M_first2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 1
  %1 = load i32*, i32** %_M_first2, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #3
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %call
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 2
  store i32* %add.ptr, i32** %_M_last, align 8
  ret void
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #0 comdat align 2 {
entry:
  %__nodes_to_add.addr = alloca i64, align 8
  store i64 %__nodes_to_add, i64* %__nodes_to_add.addr, align 8
  %frombool = zext i1 %__add_at_front to i8
  %0 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %1 = load i32**, i32*** %_M_node, align 8
  %2 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %_M_node3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %3 = load i32**, i32*** %_M_node3, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %4 = load i64, i64* %__nodes_to_add.addr, align 8
  %add4 = add i64 %add, %4
  %5 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %5, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5, i32 0, i32 1
  %6 = load i64, i64* %_M_map_size, align 8
  %mul = mul i64 2, %add4
  %cmp = icmp ugt i64 %6, %mul
  br i1 %cmp, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  %7 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl6, i32 0, i32 0
  %8 = load i32**, i32*** %_M_map, align 8
  %9 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %9, i32 0, i32 0
  %_M_map_size8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl7, i32 0, i32 1
  %10 = load i64, i64* %_M_map_size8, align 8
  %sub = sub i64 %10, %add4
  %div = udiv i64 %sub, 2
  %add.ptr = getelementptr inbounds i32*, i32** %8, i64 %div
  %tobool = trunc i8 %frombool to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load i64, i64* %__nodes_to_add.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ 0, %cond.false ]
  %add.ptr9 = getelementptr inbounds i32*, i32** %add.ptr, i64 %cond
  %12 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl10 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %_M_start11 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl10, i32 0, i32 2
  %_M_node12 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start11, i32 0, i32 3
  %13 = load i32**, i32*** %_M_node12, align 8
  %cmp13 = icmp ult i32** %add.ptr9, %13
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %cond.end
  %14 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl15 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %14, i32 0, i32 0
  %_M_start16 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl15, i32 0, i32 2
  %_M_node17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start16, i32 0, i32 3
  %15 = load i32**, i32*** %_M_node17, align 8
  %16 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl18 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %16, i32 0, i32 0
  %_M_finish19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl18, i32 0, i32 3
  %_M_node20 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish19, i32 0, i32 3
  %17 = load i32**, i32*** %_M_node20, align 8
  %add.ptr21 = getelementptr inbounds i32*, i32** %17, i64 1
  %call = call i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %15, i32** %add.ptr21, i32** %add.ptr9)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %18 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl22 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %18, i32 0, i32 0
  %_M_start23 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl22, i32 0, i32 2
  %_M_node24 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start23, i32 0, i32 3
  %19 = load i32**, i32*** %_M_node24, align 8
  %20 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %20, i32 0, i32 0
  %_M_finish26 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl25, i32 0, i32 3
  %_M_node27 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish26, i32 0, i32 3
  %21 = load i32**, i32*** %_M_node27, align 8
  %add.ptr28 = getelementptr inbounds i32*, i32** %21, i64 1
  %add.ptr29 = getelementptr inbounds i32*, i32** %add.ptr9, i64 %add
  %call30 = call i32** @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(i32** %19, i32** %add.ptr28, i32** %add.ptr29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  br label %if.end65

if.else31:                                        ; preds = %entry
  %22 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %22, i32 0, i32 0
  %_M_map_size33 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl32, i32 0, i32 1
  %23 = load i64, i64* %_M_map_size33, align 8
  %24 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl34 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %24, i32 0, i32 0
  %_M_map_size35 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl34, i32 0, i32 1
  %call36 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %_M_map_size35, i64* dereferenceable(8) %__nodes_to_add.addr)
  %25 = load i64, i64* %call36, align 8
  %add37 = add i64 %23, %25
  %add38 = add i64 %add37, 2
  %26 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %call39 = call i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %26, i64 %add38)
  %sub40 = sub i64 %add38, %add4
  %div41 = udiv i64 %sub40, 2
  %add.ptr42 = getelementptr inbounds i32*, i32** %call39, i64 %div41
  %tobool43 = trunc i8 %frombool to i1
  br i1 %tobool43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %if.else31
  %27 = load i64, i64* %__nodes_to_add.addr, align 8
  br label %cond.end46

cond.false45:                                     ; preds = %if.else31
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.true44
  %cond47 = phi i64 [ %27, %cond.true44 ], [ 0, %cond.false45 ]
  %add.ptr48 = getelementptr inbounds i32*, i32** %add.ptr42, i64 %cond47
  %28 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl49 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %28, i32 0, i32 0
  %_M_start50 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl49, i32 0, i32 2
  %_M_node51 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start50, i32 0, i32 3
  %29 = load i32**, i32*** %_M_node51, align 8
  %30 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl52 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %30, i32 0, i32 0
  %_M_finish53 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl52, i32 0, i32 3
  %_M_node54 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish53, i32 0, i32 3
  %31 = load i32**, i32*** %_M_node54, align 8
  %add.ptr55 = getelementptr inbounds i32*, i32** %31, i64 1
  %call56 = call i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %29, i32** %add.ptr55, i32** %add.ptr48)
  %32 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %33 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl57 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %33, i32 0, i32 0
  %_M_map58 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl57, i32 0, i32 0
  %34 = load i32**, i32*** %_M_map58, align 8
  %35 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl59 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %35, i32 0, i32 0
  %_M_map_size60 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl59, i32 0, i32 1
  %36 = load i64, i64* %_M_map_size60, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %32, i32** %34, i64 %36) #3
  %37 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl61 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %37, i32 0, i32 0
  %_M_map62 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl61, i32 0, i32 0
  store i32** %call39, i32*** %_M_map62, align 8
  %38 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl63 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %38, i32 0, i32 0
  %_M_map_size64 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl63, i32 0, i32 1
  store i64 %add38, i64* %_M_map_size64, align 8
  br label %if.end65

if.end65:                                         ; preds = %cond.end46, %if.end
  %__new_nstart.0 = phi i32** [ %add.ptr9, %if.end ], [ %add.ptr48, %cond.end46 ]
  %39 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl66 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %39, i32 0, i32 0
  %_M_start67 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl66, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_start67, i32** %__new_nstart.0) #3
  %40 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl68 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %40, i32 0, i32 0
  %_M_finish69 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl68, i32 0, i32 3
  %add.ptr70 = getelementptr inbounds i32*, i32** %__new_nstart.0, i64 %add
  %add.ptr71 = getelementptr inbounds i32*, i32** %add.ptr70, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish69, i32** %add.ptr71) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %call = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %__first)
  %call1 = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %__last)
  %call2 = call i32** @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %__result)
  ret i32** %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %call = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %__first)
  %call1 = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %__last)
  %call2 = call i32** @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %__result)
  ret i32** %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #6 comdat {
entry:
  %0 = load i64, i64* %__a, align 8
  %1 = load i64, i64* %__b, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64* [ %__b, %if.then ], [ %__a, %if.end ]
  ret i64* %retval.0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__map_alloc = alloca %"class.std::allocator.3", align 1
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.3"* sret %__map_alloc, %"class.std::_Deque_base"* %this) #3
  %call = invoke i32** @_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m(%"class.std::allocator.3"* dereferenceable(1) %__map_alloc, i64 %__n)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.3"* %__map_alloc) #3
  ret i32** %call

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = extractvalue { i8*, i32 } %0, 1
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.3"* %__map_alloc) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %1, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %2, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %call = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %__first)
  %call1 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %__last)
  %call2 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %__result)
  %call3 = call i32** @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %call2)
  ret i32** %call3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %__it) #6 comdat {
entry:
  ret i32** %__it
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %call = call i32** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(i32** %__first, i32** %__last, i32** %__result)
  ret i32** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %__it) #6 comdat {
entry:
  ret i32** %__it
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(i32** %__first, i32** %__last, i32** %__result) #6 comdat align 2 {
entry:
  %sub.ptr.lhs.cast = ptrtoint i32** %__last to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %tobool = icmp ne i64 %sub.ptr.div, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast i32** %__result to i8*
  %1 = bitcast i32** %__first to i8*
  %mul = mul i64 8, %sub.ptr.div
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr inbounds i32*, i32** %__result, i64 %sub.ptr.div
  ret i32** %add.ptr
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %call = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %__first)
  %call1 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %__last)
  %call2 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %__result)
  %call3 = call i32** @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %call2)
  ret i32** %call3
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %call = call i32** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(i32** %__first, i32** %__last, i32** %__result)
  ret i32** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(i32** %__first, i32** %__last, i32** %__result) #6 comdat align 2 {
entry:
  %sub.ptr.lhs.cast = ptrtoint i32** %__last to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %tobool = icmp ne i64 %sub.ptr.div, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idx.neg = sub i64 0, %sub.ptr.div
  %add.ptr = getelementptr inbounds i32*, i32** %__result, i64 %idx.neg
  %0 = bitcast i32** %add.ptr to i8*
  %1 = bitcast i32** %__first to i8*
  %mul = mul i64 8, %sub.ptr.div
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %idx.neg1 = sub i64 0, %sub.ptr.div
  %add.ptr2 = getelementptr inbounds i32*, i32** %__result, i64 %idx.neg1
  ret i32** %add.ptr2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m(%"class.std::allocator.3"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.3"* %__a to %"class.__gnu_cxx::new_allocator.4"*
  %call = call i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.4"* %0, i64 %__n, i8* null)
  ret i32** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.4"* %this, i64 %__n, i8* %0) #0 comdat align 2 {
entry:
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.4"* %this) #3
  %cmp = icmp ugt i64 %__n, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %mul = mul i64 %__n, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %1 = bitcast i8* %call2 to i32**
  ret i32** %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.4"* %this) #6 comdat align 2 {
entry:
  ret i64 2305843009213693951
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.0"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.0"* %__a to %"class.__gnu_cxx::new_allocator.1"*
  %call = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %0, i64 %__n, i8* null)
  ret i32* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %this, i64 %__n, i8* %0) #0 comdat align 2 {
entry:
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %this) #3
  %cmp = icmp ugt i64 %__n, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %mul = mul i64 %__n, 4
  %call2 = call i8* @_Znwm(i64 %mul)
  %1 = bitcast i8* %call2 to i32*
  ret i32* %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %this) #6 comdat align 2 {
entry:
  ret i64 4611686018427387903
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = invoke i64 @_ZSt16__deque_buf_sizem(i64 4)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret i64 %call

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #13
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl)
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = extractvalue { i8*, i32 } %0, 1
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %1, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %2, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this to %"class.std::allocator.0"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.0"* %0) #3
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, i32 0, i32 0
  store i32** null, i32*** %_M_map, align 8
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, i32 0, i32 1
  store i64 0, i64* %_M_map_size, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %_M_start) #3
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %_M_finish) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 %__num_elements) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca i64, align 8
  %ref.tmp2 = alloca i64, align 8
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %div = udiv i64 %__num_elements, %call
  %add = add i64 %div, 1
  store i64 8, i64* %ref.tmp, align 8
  %add3 = add i64 %add, 2
  store i64 %add3, i64* %ref.tmp2, align 8
  %call4 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %ref.tmp2)
  %0 = load i64, i64* %call4, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 1
  store i64 %0, i64* %_M_map_size, align 8
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map_size6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5, i32 0, i32 1
  %1 = load i64, i64* %_M_map_size6, align 8
  %call7 = call i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %1)
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8, i32 0, i32 0
  store i32** %call7, i32*** %_M_map, align 8
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl9, i32 0, i32 0
  %2 = load i32**, i32*** %_M_map10, align 8
  %_M_impl11 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map_size12 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl11, i32 0, i32 1
  %3 = load i64, i64* %_M_map_size12, align 8
  %sub = sub i64 %3, %add
  %div13 = udiv i64 %sub, 2
  %add.ptr = getelementptr inbounds i32*, i32** %2, i64 %div13
  %add.ptr14 = getelementptr inbounds i32*, i32** %add.ptr, i64 %add
  invoke void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %add.ptr, i32** %add.ptr14)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  br label %catch

catch:                                            ; preds = %lpad
  %7 = call i8* @__cxa_begin_catch(i8* %5) #3
  %_M_impl15 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map16 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl15, i32 0, i32 0
  %8 = load i32**, i32*** %_M_map16, align 8
  %_M_impl17 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map_size18 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl17, i32 0, i32 1
  %9 = load i64, i64* %_M_map_size18, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %this, i32** %8, i64 %9) #3
  %_M_impl19 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map20 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl19, i32 0, i32 0
  store i32** null, i32*** %_M_map20, align 8
  %_M_impl21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_map_size22 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl21, i32 0, i32 1
  store i64 0, i64* %_M_map_size22, align 8
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad23

lpad23:                                           ; preds = %catch
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  invoke void @__cxa_end_catch()
          to label %invoke.cont24 unwind label %terminate.lpad

invoke.cont24:                                    ; preds = %lpad23
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  %_M_impl25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl25, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_start, i32** %add.ptr) #3
  %_M_impl26 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl26, i32 0, i32 3
  %add.ptr27 = getelementptr inbounds i32*, i32** %add.ptr14, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish, i32** %add.ptr27) #3
  %_M_impl28 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_start29 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl28, i32 0, i32 2
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start29, i32 0, i32 1
  %13 = load i32*, i32** %_M_first, align 8
  %_M_impl30 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_start31 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl30, i32 0, i32 2
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start31, i32 0, i32 0
  store i32* %13, i32** %_M_cur, align 8
  %_M_impl32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_finish33 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl32, i32 0, i32 3
  %_M_first34 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish33, i32 0, i32 1
  %14 = load i32*, i32** %_M_first34, align 8
  %call35 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %rem = urem i64 %__num_elements, %call35
  %add.ptr36 = getelementptr inbounds i32, i32* %14, i64 %rem
  %_M_impl37 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this, i32 0, i32 0
  %_M_finish38 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl37, i32 0, i32 3
  %_M_cur39 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish38, i32 0, i32 0
  store i32* %add.ptr36, i32** %_M_cur39, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont24
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %11, 0
  %lpad.val41 = insertvalue { i8*, i32 } %lpad.val, i32 %12, 1
  resume { i8*, i32 } %lpad.val41

terminate.lpad:                                   ; preds = %lpad23
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #13
  unreachable

unreachable:                                      ; preds = %catch
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.0"* %this to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 0
  store i32* null, i32** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 1
  store i32* null, i32** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 2
  store i32* null, i32** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 3
  store i32** null, i32*** %_M_node, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %__nstart, i32** %__nfinish) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__cur.0 = phi i32** [ %__nstart, %entry ], [ %incdec.ptr, %for.inc ]
  %cmp = icmp ult i32** %__cur.0, %__nfinish
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = invoke i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  store i32* %call, i32** %__cur.0, align 8
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %incdec.ptr = getelementptr inbounds i32*, i32** %__cur.0, i32 1
  br label %for.cond

lpad:                                             ; preds = %for.body
  %__cur.0.lcssa1 = phi i32** [ %__cur.0, %for.body ]
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = extractvalue { i8*, i32 } %0, 1
  br label %catch

catch:                                            ; preds = %lpad
  %3 = call i8* @__cxa_begin_catch(i8* %1) #3
  call void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %__nstart, i32** %__cur.0.lcssa1) #3
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad2

for.end:                                          ; preds = %for.cond
  br label %try.cont

lpad2:                                            ; preds = %catch
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  invoke void @__cxa_end_catch()
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad2
  br label %eh.resume

try.cont:                                         ; preds = %for.end
  ret void

eh.resume:                                        ; preds = %invoke.cont3
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %5, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %6, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad2
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #13
  unreachable

unreachable:                                      ; preds = %catch
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* %this) #6 comdat align 2 {
entry:
  %0 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %1 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %call = call zeroext i1 @_ZSteqIiRiPiEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %_M_finish, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_start) #3
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZSteqIiRiPiEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__x, %"struct.std::_Deque_iterator"* dereferenceable(32) %__y) #6 comdat {
entry:
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %__x, i32 0, i32 0
  %0 = load i32*, i32** %_M_cur, align 8
  %_M_cur1 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %__y, i32 0, i32 0
  %1 = load i32*, i32** %_M_cur1, align 8
  %cmp = icmp eq i32* %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNSt5dequeIiSaIiEE4backEv(%"class.std::deque"* %this) #6 comdat align 2 {
entry:
  %__tmp = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* sret %__tmp, %"class.std::deque"* %this) #3
  %call = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEmmEv(%"struct.std::_Deque_iterator"* %__tmp) #3
  %call2 = call dereferenceable(4) i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %__tmp) #3
  ret i32* %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEmmEv(%"struct.std::_Deque_iterator"* %this) #6 comdat align 2 {
entry:
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 0
  %0 = load i32*, i32** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 1
  %1 = load i32*, i32** %_M_first, align 8
  %cmp = icmp eq i32* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 3
  %2 = load i32**, i32*** %_M_node, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %2, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this, i32** %add.ptr) #3
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 2
  %3 = load i32*, i32** %_M_last, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 0
  store i32* %3, i32** %_M_cur2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %_M_cur3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 0
  %4 = load i32*, i32** %_M_cur3, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %4, i32 -1
  store i32* %incdec.ptr, i32** %_M_cur3, align 8
  ret %"struct.std::_Deque_iterator"* %this
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %this) #6 comdat align 2 {
entry:
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this, i32 0, i32 0
  %0 = load i32*, i32** %_M_cur, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE8pop_backEv(%"class.std::deque"* %this) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 0
  %1 = load i32*, i32** %_M_cur, align 8
  %2 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish3, i32 0, i32 1
  %3 = load i32*, i32** %_M_first, align 8
  %cmp = icmp ne i32* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl4, i32 0, i32 3
  %_M_cur6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish5, i32 0, i32 0
  %5 = load i32*, i32** %_M_cur6, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %5, i32 -1
  store i32* %incdec.ptr, i32** %_M_cur6, align 8
  %6 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %7 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl7 to %"class.std::allocator.0"*
  %8 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8, i32 0, i32 3
  %_M_cur10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish9, i32 0, i32 0
  %9 = load i32*, i32** %_M_cur10, align 8
  invoke void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator.0"* dereferenceable(1) %7, i32* %9)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %entry
  invoke void @_ZNSt5dequeIiSaIiEE15_M_pop_back_auxEv(%"class.std::deque"* %this)
          to label %invoke.cont11 unwind label %terminate.lpad

invoke.cont11:                                    ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %invoke.cont11, %invoke.cont
  ret void

terminate.lpad:                                   ; preds = %if.else, %if.then
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #13
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator.0"* dereferenceable(1) %__a, i32* %__p) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.0"* %__a to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator.1"* %0, i32* %__p)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE15_M_pop_back_auxEv(%"class.std::deque"* %this) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %1 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 1
  %2 = load i32*, i32** %_M_first, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %0, i32* %2) #3
  %3 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %4 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl4, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish5, i32 0, i32 3
  %5 = load i32**, i32*** %_M_node, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %5, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish3, i32** %add.ptr) #3
  %6 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl6, i32 0, i32 3
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish7, i32 0, i32 2
  %7 = load i32*, i32** %_M_last, align 8
  %add.ptr8 = getelementptr inbounds i32, i32* %7, i64 -1
  %8 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_finish10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl9, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish10, i32 0, i32 0
  store i32* %add.ptr8, i32** %_M_cur, align 8
  %9 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %call = call dereferenceable(1) %"class.std::allocator.0"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %9) #3
  %10 = bitcast %"class.std::deque"* %this to %"class.std::_Deque_base"*
  %_M_impl11 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %10, i32 0, i32 0
  %_M_finish12 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl11, i32 0, i32 3
  %_M_cur13 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish12, i32 0, i32 0
  %11 = load i32*, i32** %_M_cur13, align 8
  call void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator.0"* dereferenceable(1) %call, i32* %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator.1"* %this, i32* %__p) #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_topological_sorting.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { builtin }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
