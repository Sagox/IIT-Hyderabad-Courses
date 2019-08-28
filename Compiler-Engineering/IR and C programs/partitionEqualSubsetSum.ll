; ModuleID = 'partitionEqualSubsetSum.cpp'
source_filename = "partitionEqualSubsetSum.cpp"
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
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.__gnu_cxx::__normal_iterator" = type { i32* }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl" = type { %"class.std::vector.5"*, %"class.std::vector.5"*, %"class.std::vector.5"* }
%"class.std::vector.5" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", i64* }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ i64*, i32 }>
%"class.std::allocator.9" = type { i8 }
%"class.std::allocator.2" = type { i8 }
%"struct.std::_Bit_reference" = type { i64*, i64 }
%"class.__gnu_cxx::new_allocator.10" = type { i8 }
%"struct.std::_Bit_iterator_base" = type <{ i64*, i32, [4 x i8] }>
%"class.__gnu_cxx::new_allocator.3" = type { i8 }
%"class.std::initializer_list" = type { i32*, i64 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::forward_iterator_tag" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"class.std::allocator.6" = type { i8 }
%"class.__gnu_cxx::new_allocator.7" = type { i8 }
%"struct.std::iterator" = type { i8 }
%"struct.std::_Bit_const_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_ = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZNSaIbEC2Ev = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_ = comdat any

$_ZNSaISt6vectorIbSaIbEEEC2Ev = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2EmRKS1_RKS2_ = comdat any

$_ZNSaISt6vectorIbSaIbEEED2Ev = comdat any

$_ZNSt6vectorIbSaIbEED2Ev = comdat any

$_ZNSaIbED2Ev = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm = comdat any

$_ZNSt6vectorIbSaIbEEixEm = comdat any

$_ZNSt14_Bit_referenceaSEb = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZNKSt14_Bit_referencecvbEv = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_ = comdat any

$_ZNSaIiED2Ev = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIbEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIbED2Ev = comdat any

$_ZNSt13_Bvector_baseISaIbEEC2ERKS0_ = comdat any

$_ZNSt6vectorIbSaIbEE13_M_initializeEm = comdat any

$_ZSt4fillIPmiEvT_S1_RKT0_ = comdat any

$_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv = comdat any

$_ZNSt13_Bvector_baseISaIbEED2Ev = comdat any

$_ZNSaImEC2IbEERKSaIT_E = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOSaImE = comdat any

$_ZNSaImED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorImEC2Ev = comdat any

$_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_ = comdat any

$_ZNSt13_Bit_iteratorC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_ = comdat any

$_ZNSt18_Bit_iterator_baseC2EPmj = comdat any

$_ZN9__gnu_cxx13new_allocatorImED2Ev = comdat any

$_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm = comdat any

$_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm = comdat any

$_ZSt11__addressofImEPT_RS0_ = comdat any

$_ZNSt13_Bit_iteratorC2EPmj = comdat any

$_ZNKSt13_Bit_iteratorplEl = comdat any

$_ZNSt16allocator_traitsISaImEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv = comdat any

$_ZNSt13_Bit_iteratorpLEl = comdat any

$_ZNSt18_Bit_iterator_base7_M_incrEl = comdat any

$_ZSt8__fill_aIPmiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt12__niter_baseIPmET_S1_ = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm = comdat any

$_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EE18_M_fill_initializeEmRKS1_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev = comdat any

$_ZNSaISt6vectorIbSaIbEEEC2ERKS2_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv = comdat any

$_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_ = comdat any

$_ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_ = comdat any

$_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_ = comdat any

$__clang_call_terminate = comdat any

$_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE = comdat any

$_ZNSt6vectorIbSaIbEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaImEE17_S_select_on_copyERKS1_ = comdat any

$_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv = comdat any

$_ZNSaIbEC2ImEERKSaIT_E = comdat any

$_ZNKSt6vectorIbSaIbEE4sizeEv = comdat any

$_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator = comdat any

$_ZNKSt6vectorIbSaIbEE5beginEv = comdat any

$_ZNKSt6vectorIbSaIbEE3endEv = comdat any

$_ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaImEC2ERKS_ = comdat any

$_ZStmiRKSt18_Bit_iterator_baseS1_ = comdat any

$_ZSt4copyIPmS0_ET0_T_S2_S1_ = comdat any

$_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_ = comdat any

$_ZNSt19_Bit_const_iteratorC2EPmj = comdat any

$_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPmET_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_ = comdat any

$_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_ = comdat any

$_ZSt12__niter_baseISt13_Bit_iteratorET_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_ = comdat any

$_ZNKSt19_Bit_const_iteratordeEv = comdat any

$_ZNKSt13_Bit_iteratordeEv = comdat any

$_ZNSt19_Bit_const_iteratorppEv = comdat any

$_ZNSt13_Bit_iteratorppEv = comdat any

$_ZNSt14_Bit_referenceC2EPmm = comdat any

$_ZNSt18_Bit_iterator_base10_M_bump_upEv = comdat any

$_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_ = comdat any

$_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m = comdat any

$_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_ = comdat any

$_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag = comdat any

$_ZNKSt16initializer_listIiE5beginEv = comdat any

$_ZNKSt16initializer_listIiE3endEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_ = comdat any

$_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_ = comdat any

$_ZSt4copyIPKiPiET0_T_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKiET_S2_ = comdat any

$_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKiET_S2_ = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZNKSt16initializer_listIiE4sizeEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@constinit = private constant [8 x i32] [i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100], align 4
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_partitionEqualSubsetSum.cpp, i8* null }]

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

; Function Attrs: noinline optnone uwtable
define dso_local zeroext i1 @_Z12canPartitionRSt6vectorIiSaIiEE(%"class.std::vector"* dereferenceable(24) %nums) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i1, align 1
  %nums.addr = alloca %"class.std::vector"*, align 8
  %len = alloca i32, align 4
  %total = alloca i32, align 4
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %dp = alloca %"class.std::vector.0", align 8
  %ref.tmp = alloca %"class.std::vector.5", align 8
  %ref.tmp10 = alloca i8, align 1
  %ref.tmp11 = alloca %"class.std::allocator.9", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp12 = alloca %"class.std::allocator.2", align 1
  %i = alloca i32, align 4
  %ref.tmp16 = alloca %"struct.std::_Bit_reference", align 8
  %i25 = alloca i32, align 4
  %j = alloca i32, align 4
  %ref.tmp45 = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp55 = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp64 = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp78 = alloca %"struct.std::_Bit_reference", align 8
  store %"class.std::vector"* %nums, %"class.std::vector"** %nums.addr, align 8
  %0 = load %"class.std::vector"*, %"class.std::vector"** %nums.addr, align 8
  %call = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %0) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load %"class.std::vector"*, %"class.std::vector"** %nums.addr, align 8
  %call1 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %1) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store i32* %call1, i32** %coerce.dive, align 8
  %2 = load %"class.std::vector"*, %"class.std::vector"** %nums.addr, align 8
  %call3 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %2) #3
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  store i32* %call3, i32** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load i32*, i32** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %4 = load i32*, i32** %coerce.dive6, align 8
  %call7 = call i32 @_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_(i32* %3, i32* %4, i32 0)
  store i32 %call7, i32* %total, align 4
  %5 = load i32, i32* %total, align 4
  %rem = srem i32 %5, 2
  %cmp = icmp eq i32 %rem, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %len, align 4
  %conv8 = sext i32 %6 to i64
  %7 = load i32, i32* %total, align 4
  %div = sdiv i32 %7, 2
  %add = add nsw i32 %div, 1
  %conv9 = sext i32 %add to i64
  store i8 0, i8* %ref.tmp10, align 1
  call void @_ZNSaIbEC2Ev(%"class.std::allocator.9"* %ref.tmp11) #3
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(%"class.std::vector.5"* %ref.tmp, i64 %conv9, i8* dereferenceable(1) %ref.tmp10, %"class.std::allocator.9"* dereferenceable(1) %ref.tmp11)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  call void @_ZNSaISt6vectorIbSaIbEEEC2Ev(%"class.std::allocator.2"* %ref.tmp12) #3
  invoke void @_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.0"* %dp, i64 %conv8, %"class.std::vector.5"* dereferenceable(40) %ref.tmp, %"class.std::allocator.2"* dereferenceable(1) %ref.tmp12)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont
  call void @_ZNSaISt6vectorIbSaIbEEED2Ev(%"class.std::allocator.2"* %ref.tmp12) #3
  call void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.5"* %ref.tmp) #3
  call void @_ZNSaIbED2Ev(%"class.std::allocator.9"* %ref.tmp11) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont14
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len, align 4
  %cmp15 = icmp slt i32 %8, %9
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %conv17 = sext i32 %10 to i64
  %call18 = call dereferenceable(40) %"class.std::vector.5"* @_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm(%"class.std::vector.0"* %dp, i64 %conv17) #3
  %11 = load i32, i32* %total, align 4
  %div19 = sdiv i32 %11, 2
  %conv20 = sext i32 %div19 to i64
  %call23 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %call18, i64 %conv20)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %for.body
  %12 = bitcast %"struct.std::_Bit_reference"* %ref.tmp16 to { i64*, i64 }*
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %12, i32 0, i32 0
  %14 = extractvalue { i64*, i64 } %call23, 0
  store i64* %14, i64** %13, align 8
  %15 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %12, i32 0, i32 1
  %16 = extractvalue { i64*, i64 } %call23, 1
  store i64 %16, i64* %15, align 8
  %call24 = call dereferenceable(16) %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %ref.tmp16, i1 zeroext true) #3
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont22
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %if.end
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %exn.slot, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad13:                                           ; preds = %invoke.cont
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %exn.slot, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %ehselector.slot, align 4
  call void @_ZNSaISt6vectorIbSaIbEEED2Ev(%"class.std::allocator.2"* %ref.tmp12) #3
  call void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.5"* %ref.tmp) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad13, %lpad
  call void @_ZNSaIbED2Ev(%"class.std::allocator.9"* %ref.tmp11) #3
  br label %eh.resume

lpad21:                                           ; preds = %for.end77, %if.then63, %lor.rhs, %land.lhs.true, %for.body
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  store i8* %25, i8** %exn.slot, align 8
  %26 = extractvalue { i8*, i32 } %24, 1
  store i32 %26, i32* %ehselector.slot, align 4
  call void @_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev(%"class.std::vector.0"* %dp) #3
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i25, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc75, %for.end
  %27 = load i32, i32* %i25, align 4
  %28 = load i32, i32* %len, align 4
  %cmp27 = icmp slt i32 %27, %28
  br i1 %cmp27, label %for.body28, label %for.end77

for.body28:                                       ; preds = %for.cond26
  store i32 0, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc72, %for.body28
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %total, align 4
  %div30 = sdiv i32 %30, 2
  %add31 = add nsw i32 %div30, 1
  %cmp32 = icmp slt i32 %29, %add31
  br i1 %cmp32, label %for.body33, label %for.end74

for.body33:                                       ; preds = %for.cond29
  %31 = load i32, i32* %total, align 4
  %div34 = sdiv i32 %31, 2
  %32 = load i32, i32* %j, align 4
  %33 = load %"class.std::vector"*, %"class.std::vector"** %nums.addr, align 8
  %34 = load i32, i32* %i25, align 4
  %conv35 = sext i32 %34 to i64
  %call36 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %33, i64 %conv35) #3
  %35 = load i32, i32* %call36, align 4
  %add37 = add nsw i32 %32, %35
  %cmp38 = icmp eq i32 %div34, %add37
  br i1 %cmp38, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body33
  %36 = load %"class.std::vector"*, %"class.std::vector"** %nums.addr, align 8
  %37 = load i32, i32* %i25, align 4
  %conv39 = sext i32 %37 to i64
  %call40 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %36, i64 %conv39) #3
  %38 = load i32, i32* %call40, align 4
  %39 = load i32, i32* %j, align 4
  %add41 = add nsw i32 %38, %39
  %40 = load i32, i32* %total, align 4
  %div42 = sdiv i32 %40, 2
  %add43 = add nsw i32 %div42, 1
  %cmp44 = icmp slt i32 %add41, %add43
  br i1 %cmp44, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %41 = load i32, i32* %i25, align 4
  %sub = sub nsw i32 %41, 1
  %conv46 = sext i32 %sub to i64
  %call47 = call dereferenceable(40) %"class.std::vector.5"* @_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm(%"class.std::vector.0"* %dp, i64 %conv46) #3
  %42 = load i32, i32* %j, align 4
  %43 = load %"class.std::vector"*, %"class.std::vector"** %nums.addr, align 8
  %44 = load i32, i32* %i25, align 4
  %conv48 = sext i32 %44 to i64
  %call49 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %43, i64 %conv48) #3
  %45 = load i32, i32* %call49, align 4
  %add50 = add nsw i32 %42, %45
  %conv51 = sext i32 %add50 to i64
  %call53 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %call47, i64 %conv51)
          to label %invoke.cont52 unwind label %lpad21

invoke.cont52:                                    ; preds = %land.lhs.true
  %46 = bitcast %"struct.std::_Bit_reference"* %ref.tmp45 to { i64*, i64 }*
  %47 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %46, i32 0, i32 0
  %48 = extractvalue { i64*, i64 } %call53, 0
  store i64* %48, i64** %47, align 8
  %49 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %46, i32 0, i32 1
  %50 = extractvalue { i64*, i64 } %call53, 1
  store i64 %50, i64* %49, align 8
  %call54 = call zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %ref.tmp45) #3
  br i1 %call54, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %invoke.cont52, %lor.lhs.false
  %51 = load i32, i32* %i25, align 4
  %sub56 = sub nsw i32 %51, 1
  %conv57 = sext i32 %sub56 to i64
  %call58 = call dereferenceable(40) %"class.std::vector.5"* @_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm(%"class.std::vector.0"* %dp, i64 %conv57) #3
  %52 = load i32, i32* %j, align 4
  %conv59 = sext i32 %52 to i64
  %call61 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %call58, i64 %conv59)
          to label %invoke.cont60 unwind label %lpad21

invoke.cont60:                                    ; preds = %lor.rhs
  %53 = bitcast %"struct.std::_Bit_reference"* %ref.tmp55 to { i64*, i64 }*
  %54 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %53, i32 0, i32 0
  %55 = extractvalue { i64*, i64 } %call61, 0
  store i64* %55, i64** %54, align 8
  %56 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %53, i32 0, i32 1
  %57 = extractvalue { i64*, i64 } %call61, 1
  store i64 %57, i64* %56, align 8
  %call62 = call zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %ref.tmp55) #3
  br label %lor.end

lor.end:                                          ; preds = %invoke.cont60, %invoke.cont52, %for.body33
  %58 = phi i1 [ true, %invoke.cont52 ], [ true, %for.body33 ], [ %call62, %invoke.cont60 ]
  br i1 %58, label %if.then63, label %if.end71

if.then63:                                        ; preds = %lor.end
  %59 = load i32, i32* %i25, align 4
  %conv65 = sext i32 %59 to i64
  %call66 = call dereferenceable(40) %"class.std::vector.5"* @_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm(%"class.std::vector.0"* %dp, i64 %conv65) #3
  %60 = load i32, i32* %j, align 4
  %conv67 = sext i32 %60 to i64
  %call69 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %call66, i64 %conv67)
          to label %invoke.cont68 unwind label %lpad21

invoke.cont68:                                    ; preds = %if.then63
  %61 = bitcast %"struct.std::_Bit_reference"* %ref.tmp64 to { i64*, i64 }*
  %62 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %61, i32 0, i32 0
  %63 = extractvalue { i64*, i64 } %call69, 0
  store i64* %63, i64** %62, align 8
  %64 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %61, i32 0, i32 1
  %65 = extractvalue { i64*, i64 } %call69, 1
  store i64 %65, i64* %64, align 8
  %call70 = call dereferenceable(16) %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %ref.tmp64, i1 zeroext true) #3
  br label %if.end71

if.end71:                                         ; preds = %invoke.cont68, %lor.end
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %66 = load i32, i32* %j, align 4
  %inc73 = add nsw i32 %66, 1
  store i32 %inc73, i32* %j, align 4
  br label %for.cond29

for.end74:                                        ; preds = %for.cond29
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %67 = load i32, i32* %i25, align 4
  %inc76 = add nsw i32 %67, 1
  store i32 %inc76, i32* %i25, align 4
  br label %for.cond26

for.end77:                                        ; preds = %for.cond26
  %68 = load i32, i32* %len, align 4
  %sub79 = sub nsw i32 %68, 1
  %conv80 = sext i32 %sub79 to i64
  %call81 = call dereferenceable(40) %"class.std::vector.5"* @_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm(%"class.std::vector.0"* %dp, i64 %conv80) #3
  %call83 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %call81, i64 0)
          to label %invoke.cont82 unwind label %lpad21

invoke.cont82:                                    ; preds = %for.end77
  %69 = bitcast %"struct.std::_Bit_reference"* %ref.tmp78 to { i64*, i64 }*
  %70 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %69, i32 0, i32 0
  %71 = extractvalue { i64*, i64 } %call83, 0
  store i64* %71, i64** %70, align 8
  %72 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %69, i32 0, i32 1
  %73 = extractvalue { i64*, i64 } %call83, 1
  store i64 %73, i64* %72, align 8
  %call84 = call zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %ref.tmp78) #3
  store i1 %call84, i1* %retval, align 1
  call void @_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev(%"class.std::vector.0"* %dp) #3
  br label %return

return:                                           ; preds = %invoke.cont82, %if.then
  %74 = load i1, i1* %retval, align 1
  ret i1 %74

eh.resume:                                        ; preds = %lpad21, %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val86 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val86
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load i32*, i32** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_(i32* %__first.coerce, i32* %__last.coerce, i32 %__init) #5 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__init.addr = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32 %__init, i32* %__init.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last) #3
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, i32* %__init.addr, align 4
  %call2 = call dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #3
  %1 = load i32, i32* %call2, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %__init.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call3 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #3
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %2 = load i32, i32* %__init.addr, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %this) #5 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %retval, i32** dereferenceable(8) %_M_start) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %this) #5 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %retval, i32** dereferenceable(8) %_M_finish) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIbEC2Ev(%"class.std::allocator.9"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.9"*, align 8
  store %"class.std::allocator.9"* %this, %"class.std::allocator.9"** %this.addr, align 8
  %this1 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.9"* %this1 to %"class.__gnu_cxx::new_allocator.10"*
  call void @_ZN9__gnu_cxx13new_allocatorIbEC2Ev(%"class.__gnu_cxx::new_allocator.10"* %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(%"class.std::vector.5"* %this, i64 %__n, i8* dereferenceable(1) %__value, %"class.std::allocator.9"* dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.5"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator.9"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca i32, align 4
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__value, i8** %__value.addr, align 8
  store %"class.std::allocator.9"* %__a, %"class.std::allocator.9"** %__a.addr, align 8
  %this1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %1 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__a.addr, align 8
  call void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(%"struct.std::_Bvector_base"* %0, %"class.std::allocator.9"* dereferenceable(1) %1)
  %2 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(%"class.std::vector.5"* %this1, i64 %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %3, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl, i32 0, i32 0
  %4 = bitcast %"struct.std::_Bit_iterator"* %_M_start to %"struct.std::_Bit_iterator_base"*
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %4, i32 0, i32 0
  %5 = load i64*, i64** %_M_p, align 8
  %6 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %6, i32 0, i32 0
  %call = call i64* @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl2) #3
  %7 = load i8*, i8** %__value.addr, align 8
  %8 = load i8, i8* %7, align 1
  %tobool = trunc i8 %8 to i1
  %9 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 -1, i32 0
  store i32 %cond, i32* %ref.tmp, align 4
  invoke void @_ZSt4fillIPmiEvT_S1_RKT0_(i64* %5, i64* %call, i32* dereferenceable(4) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  %13 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %13) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIbSaIbEEEC2Ev(%"class.std::allocator.2"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %this.addr, align 8
  %this1 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.2"* %this1 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.0"* %this, i64 %__n, %"class.std::vector.5"* dereferenceable(40) %__value, %"class.std::allocator.2"* dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca %"class.std::vector.5"*, align 8
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::vector.5"* %__value, %"class.std::vector.5"** %__value.addr, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2EmRKS3_(%"struct.std::_Vector_base.1"* %0, i64 %1, %"class.std::allocator.2"* dereferenceable(1) %2)
  %3 = load i64, i64* %__n.addr, align 8
  %4 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__value.addr, align 8
  invoke void @_ZNSt6vectorIS_IbSaIbEESaIS1_EE18_M_fill_initializeEmRKS1_(%"class.std::vector.0"* %this1, i64 %3, %"class.std::vector.5"* dereferenceable(40) %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  %8 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev(%"struct.std::_Vector_base.1"* %8) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIbSaIbEEED2Ev(%"class.std::allocator.2"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %this.addr, align 8
  %this1 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.2"* %this1 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev(%"class.__gnu_cxx::new_allocator.3"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.5"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %this.addr, align 8
  %this1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIbED2Ev(%"class.std::allocator.9"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.9"*, align 8
  store %"class.std::allocator.9"* %this, %"class.std::allocator.9"** %this.addr, align 8
  %this1 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.9"* %this1 to %"class.__gnu_cxx::new_allocator.10"*
  call void @_ZN9__gnu_cxx13new_allocatorIbED2Ev(%"class.__gnu_cxx::new_allocator.10"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(40) %"class.std::vector.5"* @_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm(%"class.std::vector.0"* %this, i64 %__n) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"class.std::vector.5", %"class.std::vector.5"* %1, i64 %2
  ret %"class.std::vector.5"* %add.ptr
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %this, i64 %__n) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Bit_reference", align 8
  %this.addr = alloca %"class.std::vector.5"*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca %"struct.std::_Bit_iterator", align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_Bit_iterator"* %_M_start to %"struct.std::_Bit_iterator_base"*
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %1, i32 0, i32 0
  %2 = load i64*, i64** %_M_p, align 8
  %3 = load i64, i64* %__n.addr, align 8
  %div = udiv i64 %3, 64
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %div
  %4 = load i64, i64* %__n.addr, align 8
  %rem = urem i64 %4, 64
  %conv = trunc i64 %rem to i32
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %ref.tmp, i64* %add.ptr, i32 %conv)
  %call = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %ref.tmp)
  %5 = bitcast %"struct.std::_Bit_reference"* %retval to { i64*, i64 }*
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %5, i32 0, i32 0
  %7 = extractvalue { i64*, i64 } %call, 0
  store i64* %7, i64** %6, align 8
  %8 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %5, i32 0, i32 1
  %9 = extractvalue { i64*, i64 } %call, 1
  store i64 %9, i64* %8, align 8
  %10 = bitcast %"struct.std::_Bit_reference"* %retval to { i64*, i64 }*
  %11 = load { i64*, i64 }, { i64*, i64 }* %10, align 8
  ret { i64*, i64 } %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %this, i1 zeroext %__x) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_reference"*, align 8
  %__x.addr = alloca i8, align 1
  store %"struct.std::_Bit_reference"* %this, %"struct.std::_Bit_reference"** %this.addr, align 8
  %frombool = zext i1 %__x to i8
  store i8 %frombool, i8* %__x.addr, align 1
  %this1 = load %"struct.std::_Bit_reference"*, %"struct.std::_Bit_reference"** %this.addr, align 8
  %0 = load i8, i8* %__x.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %_M_mask = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %this1, i32 0, i32 1
  %1 = load i64, i64* %_M_mask, align 8
  %_M_p = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %this1, i32 0, i32 0
  %2 = load i64*, i64** %_M_p, align 8
  %3 = load i64, i64* %2, align 8
  %or = or i64 %3, %1
  store i64 %or, i64* %2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %_M_mask2 = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %this1, i32 0, i32 1
  %4 = load i64, i64* %_M_mask2, align 8
  %neg = xor i64 %4, -1
  %_M_p3 = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %this1, i32 0, i32 0
  %5 = load i64*, i64** %_M_p3, align 8
  %6 = load i64, i64* %5, align 8
  %and = and i64 %6, %neg
  store i64 %and, i64* %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %"struct.std::_Bit_reference"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %this, i64 %__n) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %2
  ret i32* %add.ptr
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_reference"*, align 8
  store %"struct.std::_Bit_reference"* %this, %"struct.std::_Bit_reference"** %this.addr, align 8
  %this1 = load %"struct.std::_Bit_reference"*, %"struct.std::_Bit_reference"** %this.addr, align 8
  %_M_p = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %_M_p, align 8
  %1 = load i64, i64* %0, align 8
  %_M_mask = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %this1, i32 0, i32 1
  %2 = load i64, i64* %_M_mask, align 8
  %and = and i64 %1, %2
  %tobool = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  ret i1 %lnot2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev(%"class.std::vector.0"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %_M_start, align 8
  %2 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %_M_finish, align 8
  %4 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call = call dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %4) #3
  invoke void @_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E(%"class.std::vector.5"* %1, %"class.std::vector.5"* %3, %"class.std::allocator.2"* dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev(%"struct.std::_Vector_base.1"* %5) #3
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev(%"struct.std::_Vector_base.1"* %9) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #13
  unreachable
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %a = alloca %"class.std::vector", align 8
  %agg.tmp = alloca %"class.std::initializer_list", align 8
  %ref.tmp = alloca [8 x i32], align 4
  %ref.tmp1 = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %arrayinit.begin = getelementptr inbounds [8 x i32], [8 x i32]* %ref.tmp, i64 0, i64 0
  %0 = bitcast [8 x i32]* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([8 x i32]* @constinit to i8*), i64 32, i1 false)
  %_M_array = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %agg.tmp, i32 0, i32 0
  %arraystart = getelementptr inbounds [8 x i32], [8 x i32]* %ref.tmp, i64 0, i64 0
  store i32* %arraystart, i32** %_M_array, align 8
  %_M_len = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %agg.tmp, i32 0, i32 1
  store i64 8, i64* %_M_len, align 8
  call void @_ZNSaIiEC2Ev(%"class.std::allocator"* %ref.tmp1) #3
  %1 = bitcast %"class.std::initializer_list"* %agg.tmp to { i32*, i64 }*
  %2 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %1, i32 0, i32 0
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %1, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  invoke void @_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_(%"class.std::vector"* %a, i32* %3, i64 %5, %"class.std::allocator"* dereferenceable(1) %ref.tmp1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %ref.tmp1) #3
  %call = invoke zeroext i1 @_Z12canPartitionRSt6vectorIiSaIiEE(%"class.std::vector"* dereferenceable(24) %a)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %call5 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEb(%"class.std::basic_ostream"* @_ZSt4cout, i1 zeroext %call)
          to label %invoke.cont4 unwind label %lpad2

invoke.cont4:                                     ; preds = %invoke.cont3
  %call7 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call5, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont6 unwind label %lpad2

invoke.cont6:                                     ; preds = %invoke.cont4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %a) #3
  ret i32 0

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %ref.tmp1) #3
  br label %eh.resume

lpad2:                                            ; preds = %invoke.cont4, %invoke.cont3, %invoke.cont
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %a) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad2, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val8 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val8
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(%"class.std::allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_(%"class.std::vector"* %this, i32* %__l.coerce0, i64 %__l.coerce1, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__l = alloca %"class.std::initializer_list", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"struct.std::forward_iterator_tag", align 1
  %ref.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %0 = bitcast %"class.std::initializer_list"* %__l to { i32*, i64 }*
  %1 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %0, i32 0, i32 0
  store i32* %__l.coerce0, i32** %1, align 8
  %2 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %0, i32 0, i32 1
  store i64 %__l.coerce1, i64* %2, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %4 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_(%"struct.std::_Vector_base"* %3, %"class.std::allocator"* dereferenceable(1) %4) #3
  %call = call i32* @_ZNKSt16initializer_listIiE5beginEv(%"class.std::initializer_list"* %__l) #3
  %call2 = call i32* @_ZNKSt16initializer_listIiE3endEv(%"class.std::initializer_list"* %__l) #3
  %5 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to %"struct.std::forward_iterator_tag"*
  invoke void @_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag(%"class.std::vector"* %this1, i32* %call, i32* %call2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %9) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiED2Ev(%"class.std::allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEb(%"class.std::basic_ostream"*, i1 zeroext) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #3
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %1, i32* %3, %"class.std::allocator"* dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %5) #3
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %9) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #13
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %this, i32** dereferenceable(8) %__i) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store i32** %__i, i32*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load i32**, i32*** %__i.addr, align 8
  %1 = load i32*, i32** %0, align 8
  store i32* %1, i32** %_M_current, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #5 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #3
  %1 = load i32*, i32** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #3
  %3 = load i32*, i32** %call1, align 8
  %cmp = icmp ne i32* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %_M_current, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %0, i32 1
  store i32* %incdec.ptr, i32** %_M_current, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret i32** %_M_current
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIbEC2Ev(%"class.__gnu_cxx::new_allocator.10"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.10"*, align 8
  store %"class.__gnu_cxx::new_allocator.10"* %this, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.10"*, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIbED2Ev(%"class.__gnu_cxx::new_allocator.10"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.10"*, align 8
  store %"class.__gnu_cxx::new_allocator.10"* %this, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.10"*, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(%"struct.std::_Bvector_base"* %this, %"class.std::allocator.9"* dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Bvector_base"*, align 8
  %__a.addr = alloca %"class.std::allocator.9"*, align 8
  %ref.tmp = alloca %"class.std::allocator.6", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %this.addr, align 8
  store %"class.std::allocator.9"* %__a, %"class.std::allocator.9"** %__a.addr, align 8
  %this1 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__a.addr, align 8
  call void @_ZNSaImEC2IbEERKSaIT_E(%"class.std::allocator.6"* %ref.tmp, %"class.std::allocator.9"* dereferenceable(1) %0) #3
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOSaImE(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl, %"class.std::allocator.6"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaImED2Ev(%"class.std::allocator.6"* %ref.tmp) #3
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSaImED2Ev(%"class.std::allocator.6"* %ref.tmp) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(%"class.std::vector.5"* %this, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.5"*, align 8
  %__n.addr = alloca i64, align 8
  %__q = alloca i64*, align 8
  %ref.tmp = alloca %"struct.std::_Bit_iterator", align 8
  %ref.tmp7 = alloca %"struct.std::_Bit_iterator", align 8
  %ref.tmp10 = alloca %"struct.std::_Bit_iterator", align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(%"struct.std::_Bvector_base"* %1, i64 %2)
  store i64* %call, i64** %__q, align 8
  %3 = load i64*, i64** %__q, align 8
  %4 = load i64, i64* %__n.addr, align 8
  %call2 = call i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 %4)
  %add.ptr = getelementptr inbounds i64, i64* %3, i64 %call2
  %5 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %5, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl, i32 0, i32 2
  store i64* %add.ptr, i64** %_M_end_of_storage, align 8
  %6 = load i64*, i64** %__q, align 8
  %call3 = call i64* @_ZSt11__addressofImEPT_RS0_(i64* dereferenceable(8) %6) #3
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %ref.tmp, i64* %call3, i32 0)
  %7 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %7, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl4, i32 0, i32 0
  %8 = bitcast %"struct.std::_Bit_iterator"* %_M_start to i8*
  %9 = bitcast %"struct.std::_Bit_iterator"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 12, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl5 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %10, i32 0, i32 0
  %_M_end_of_storage6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl5, i32 0, i32 2
  store i64* null, i64** %_M_end_of_storage6, align 8
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %ref.tmp7, i64* null, i32 0)
  %11 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %11, i32 0, i32 0
  %_M_start9 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl8, i32 0, i32 0
  %12 = bitcast %"struct.std::_Bit_iterator"* %_M_start9 to i8*
  %13 = bitcast %"struct.std::_Bit_iterator"* %ref.tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 12, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl11 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %14, i32 0, i32 0
  %_M_start12 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl11, i32 0, i32 0
  %15 = load i64, i64* %__n.addr, align 8
  %call13 = call { i64*, i32 } @_ZNKSt13_Bit_iteratorplEl(%"struct.std::_Bit_iterator"* %_M_start12, i64 %15)
  %16 = bitcast %"struct.std::_Bit_iterator"* %ref.tmp10 to { i64*, i32 }*
  %17 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %16, i32 0, i32 0
  %18 = extractvalue { i64*, i32 } %call13, 0
  store i64* %18, i64** %17, align 8
  %19 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %16, i32 0, i32 1
  %20 = extractvalue { i64*, i32 } %call13, 1
  store i32 %20, i32* %19, align 8
  %21 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl14 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %21, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl14, i32 0, i32 1
  %22 = bitcast %"struct.std::_Bit_iterator"* %_M_finish to i8*
  %23 = bitcast %"struct.std::_Bit_iterator"* %ref.tmp10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 12, i1 false)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt4fillIPmiEvT_S1_RKT0_(i64* %__first, i64* %__last, i32* dereferenceable(4) %__value) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i32*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %call = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %0)
  %1 = load i64*, i64** %__last.addr, align 8
  %call1 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %1)
  %2 = load i32*, i32** %__value.addr, align 8
  call void @_ZSt8__fill_aIPmiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %call, i64* %call1, i32* dereferenceable(4) %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this) #5 comdat align 2 {
entry:
  %retval = alloca i64*, align 8
  %this.addr = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, align 8
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %this.addr, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this1, i32 0, i32 2
  %0 = load i64*, i64** %_M_end_of_storage, align 8
  %tobool = icmp ne i64* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_end_of_storage2 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this1, i32 0, i32 2
  %1 = load i64*, i64** %_M_end_of_storage2, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 -1
  %call = call i64* @_ZSt11__addressofImEPT_RS0_(i64* dereferenceable(8) %arrayidx) #3
  %add.ptr = getelementptr inbounds i64, i64* %call, i64 1
  store i64* %add.ptr, i64** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64* null, i64** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i64*, i64** %retval, align 8
  ret i64* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Bvector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %this.addr, align 8
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(%"struct.std::_Bvector_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl) #3
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
          filter [0 x i8*] zeroinitializer
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  %_M_impl2 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl2) #3
  br label %filter.dispatch

filter.dispatch:                                  ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__cxa_call_unexpected(i8* %exn) #14
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaImEC2IbEERKSaIT_E(%"class.std::allocator.6"* %this, %"class.std::allocator.9"* dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.6"*, align 8
  %.addr = alloca %"class.std::allocator.9"*, align 8
  store %"class.std::allocator.6"* %this, %"class.std::allocator.6"** %this.addr, align 8
  store %"class.std::allocator.9"* %0, %"class.std::allocator.9"** %.addr, align 8
  %this1 = load %"class.std::allocator.6"*, %"class.std::allocator.6"** %this.addr, align 8
  %1 = bitcast %"class.std::allocator.6"* %this1 to %"class.__gnu_cxx::new_allocator.7"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator.7"* %1) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOSaImE(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this, %"class.std::allocator.6"* dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.6"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %this.addr, align 8
  store %"class.std::allocator.6"* %__a, %"class.std::allocator.6"** %__a.addr, align 8
  %this1 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this1 to %"class.std::allocator.6"*
  %1 = load %"class.std::allocator.6"*, %"class.std::allocator.6"** %__a.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator.6"* @_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_(%"class.std::allocator.6"* dereferenceable(1) %1) #3
  call void @_ZNSaImEC2ERKS_(%"class.std::allocator.6"* %0, %"class.std::allocator.6"* dereferenceable(1) %call) #3
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this1, i32 0, i32 0
  invoke void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %_M_start)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_finish = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this1, i32 0, i32 1
  invoke void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %_M_finish)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this1, i32 0, i32 2
  store i64* null, i64** %_M_end_of_storage, align 8
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  %5 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this1 to %"class.std::allocator.6"*
  call void @_ZNSaImED2Ev(%"class.std::allocator.6"* %5) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaImED2Ev(%"class.std::allocator.6"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.6"*, align 8
  store %"class.std::allocator.6"* %this, %"class.std::allocator.6"** %this.addr, align 8
  %this1 = load %"class.std::allocator.6"*, %"class.std::allocator.6"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.6"* %this1 to %"class.__gnu_cxx::new_allocator.7"*
  call void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator.7"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator.7"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.7"*, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator.6"* @_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_(%"class.std::allocator.6"* dereferenceable(1) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::allocator.6"*, align 8
  store %"class.std::allocator.6"* %__t, %"class.std::allocator.6"** %__t.addr, align 8
  %0 = load %"class.std::allocator.6"*, %"class.std::allocator.6"** %__t.addr, align 8
  ret %"class.std::allocator.6"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %this) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %0, i64* null, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"* dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %0, %"class.__gnu_cxx::new_allocator.7"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.7"*, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %this, i64* %__x, i32 %__y) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_iterator_base"*, align 8
  %__x.addr = alloca i64*, align 8
  %__y.addr = alloca i32, align 4
  store %"struct.std::_Bit_iterator_base"* %this, %"struct.std::_Bit_iterator_base"** %this.addr, align 8
  store i64* %__x, i64** %__x.addr, align 8
  store i32 %__y, i32* %__y.addr, align 4
  %this1 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_iterator_base"* %this1 to %"struct.std::iterator"*
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %this1, i32 0, i32 0
  %1 = load i64*, i64** %__x.addr, align 8
  store i64* %1, i64** %_M_p, align 8
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %this1, i32 0, i32 1
  %2 = load i32, i32* %__y.addr, align 4
  store i32 %2, i32* %_M_offset, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator.7"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.7"*, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(%"struct.std::_Bvector_base"* %this, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bvector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl to %"class.std::allocator.6"*
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 %1)
  %call2 = call i64* @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%"class.std::allocator.6"* dereferenceable(1) %0, i64 %call)
  ret i64* %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 %__n) #5 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %add = add i64 %0, 64
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 64
  ret i64 %div
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt11__addressofImEPT_RS0_(i64* dereferenceable(8) %__r) #5 comdat {
entry:
  %__r.addr = alloca i64*, align 8
  store i64* %__r, i64** %__r.addr, align 8
  %0 = load i64*, i64** %__r.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %this, i64* %__x, i32 %__y) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_iterator"*, align 8
  %__x.addr = alloca i64*, align 8
  %__y.addr = alloca i32, align 4
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %this.addr, align 8
  store i64* %__x, i64** %__x.addr, align 8
  store i32 %__y, i32* %__y.addr, align 4
  %this1 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  %1 = load i64*, i64** %__x.addr, align 8
  %2 = load i32, i32* %__y.addr, align 4
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %0, i64* %1, i32 %2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { i64*, i32 } @_ZNKSt13_Bit_iteratorplEl(%"struct.std::_Bit_iterator"* %this, i64 %__i) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Bit_iterator", align 8
  %this.addr = alloca %"struct.std::_Bit_iterator"*, align 8
  %__i.addr = alloca i64, align 8
  %__tmp = alloca %"struct.std::_Bit_iterator", align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %this.addr, align 8
  store i64 %__i, i64* %__i.addr, align 8
  %this1 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_iterator"* %__tmp to i8*
  %1 = bitcast %"struct.std::_Bit_iterator"* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 16, i1 false)
  %2 = load i64, i64* %__i.addr, align 8
  %call = call dereferenceable(16) %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorpLEl(%"struct.std::_Bit_iterator"* %__tmp, i64 %2)
  %3 = bitcast %"struct.std::_Bit_iterator"* %retval to i8*
  %4 = bitcast %"struct.std::_Bit_iterator"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 16, i1 false)
  %5 = bitcast %"struct.std::_Bit_iterator"* %retval to { i64*, i32 }*
  %6 = load { i64*, i32 }, { i64*, i32 }* %5, align 8
  ret { i64*, i32 } %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%"class.std::allocator.6"* dereferenceable(1) %__a, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.6"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.6"* %__a, %"class.std::allocator.6"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.6"*, %"class.std::allocator.6"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.6"* %0 to %"class.__gnu_cxx::new_allocator.7"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.7"* %1, i64 %2, i8* null)
  ret i64* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.7"* %this, i64 %__n, i8* %0) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.7"*, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator.7"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to i64*
  ret i64* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator.7"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.7"*, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #8

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #9

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorpLEl(%"struct.std::_Bit_iterator"* %this, i64 %__i) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_iterator"*, align 8
  %__i.addr = alloca i64, align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %this.addr, align 8
  store i64 %__i, i64* %__i.addr, align 8
  %this1 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  %1 = load i64, i64* %__i.addr, align 8
  call void @_ZNSt18_Bit_iterator_base7_M_incrEl(%"struct.std::_Bit_iterator_base"* %0, i64 %1)
  ret %"struct.std::_Bit_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_base7_M_incrEl(%"struct.std::_Bit_iterator_base"* %this, i64 %__i) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_iterator_base"*, align 8
  %__i.addr = alloca i64, align 8
  %__n = alloca i64, align 8
  store %"struct.std::_Bit_iterator_base"* %this, %"struct.std::_Bit_iterator_base"** %this.addr, align 8
  store i64 %__i, i64* %__i.addr, align 8
  %this1 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %this.addr, align 8
  %0 = load i64, i64* %__i.addr, align 8
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %this1, i32 0, i32 1
  %1 = load i32, i32* %_M_offset, align 8
  %conv = zext i32 %1 to i64
  %add = add nsw i64 %0, %conv
  store i64 %add, i64* %__n, align 8
  %2 = load i64, i64* %__n, align 8
  %div = sdiv i64 %2, 64
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %this1, i32 0, i32 0
  %3 = load i64*, i64** %_M_p, align 8
  %add.ptr = getelementptr inbounds i64, i64* %3, i64 %div
  store i64* %add.ptr, i64** %_M_p, align 8
  %4 = load i64, i64* %__n, align 8
  %rem = srem i64 %4, 64
  store i64 %rem, i64* %__n, align 8
  %5 = load i64, i64* %__n, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %__n, align 8
  %add2 = add nsw i64 %6, 64
  store i64 %add2, i64* %__n, align 8
  %_M_p3 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %this1, i32 0, i32 0
  %7 = load i64*, i64** %_M_p3, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %7, i32 -1
  store i64* %incdec.ptr, i64** %_M_p3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %__n, align 8
  %conv4 = trunc i64 %8 to i32
  %_M_offset5 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %this1, i32 0, i32 1
  store i32 %conv4, i32* %_M_offset5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPmiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %__first, i64* %__last, i32* dereferenceable(4) %__value) #5 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i32*, align 8
  %__tmp = alloca i32, align 4
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = load i32*, i32** %__value.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %__tmp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64*, i64** %__first.addr, align 8
  %3 = load i64*, i64** %__last.addr, align 8
  %cmp = icmp ne i64* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %__tmp, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64*, i64** %__first.addr, align 8
  store i64 %conv, i64* %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64*, i64** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %6, i32 1
  store i64* %incdec.ptr, i64** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_baseIPmET_S1_(i64* %__it) #5 comdat {
entry:
  %__it.addr = alloca i64*, align 8
  store i64* %__it, i64** %__it.addr, align 8
  %0 = load i64*, i64** %__it.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(%"struct.std::_Bvector_base"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bvector_base"*, align 8
  %__n = alloca i64, align 8
  %ref.tmp = alloca %"struct.std::_Bit_iterator", align 8
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl, i32 0, i32 0
  %0 = bitcast %"struct.std::_Bit_iterator"* %_M_start to %"struct.std::_Bit_iterator_base"*
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %0, i32 0, i32 0
  %1 = load i64*, i64** %_M_p, align 8
  %tobool = icmp ne i64* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl2 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %call = call i64* @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl2) #3
  %_M_impl3 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl3, i32 0, i32 0
  %2 = bitcast %"struct.std::_Bit_iterator"* %_M_start4 to %"struct.std::_Bit_iterator_base"*
  %_M_p5 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %2, i32 0, i32 0
  %3 = load i64*, i64** %_M_p5, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %__n, align 8
  %_M_impl6 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %4 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl6 to %"class.std::allocator.6"*
  %_M_impl7 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl7, i32 0, i32 2
  %5 = load i64*, i64** %_M_end_of_storage, align 8
  %6 = load i64, i64* %__n, align 8
  %idx.neg = sub i64 0, %6
  %add.ptr = getelementptr inbounds i64, i64* %5, i64 %idx.neg
  %7 = load i64, i64* %__n, align 8
  call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%"class.std::allocator.6"* dereferenceable(1) %4, i64* %add.ptr, i64 %7)
  call void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %ref.tmp)
  %_M_impl8 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl8, i32 0, i32 1
  %8 = bitcast %"struct.std::_Bit_iterator"* %_M_finish to i8*
  %9 = bitcast %"struct.std::_Bit_iterator"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 12, i1 false)
  %_M_impl9 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %_M_start10 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl9, i32 0, i32 0
  %10 = bitcast %"struct.std::_Bit_iterator"* %_M_start10 to i8*
  %11 = bitcast %"struct.std::_Bit_iterator"* %_M_finish to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 12, i1 false)
  %_M_impl11 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage12 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl11, i32 0, i32 2
  store i64* null, i64** %_M_end_of_storage12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, align 8
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this1 to %"class.std::allocator.6"*
  call void @_ZNSaImED2Ev(%"class.std::allocator.6"* %0) #3
  ret void
}

declare dso_local void @__cxa_call_unexpected(i8*)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%"class.std::allocator.6"* dereferenceable(1) %__a, i64* %__p, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.6"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.6"* %__a, %"class.std::allocator.6"** %__a.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.6"*, %"class.std::allocator.6"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.6"* %0 to %"class.__gnu_cxx::new_allocator.7"*
  %2 = load i64*, i64** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator.7"* %1, i64* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator.7"* %this, i64* %__p, i64 %0) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  %__p.addr = alloca i64*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.7"*, %"class.__gnu_cxx::new_allocator.7"** %this.addr, align 8
  %1 = load i64*, i64** %__p.addr, align 8
  %2 = bitcast i64* %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2EmRKS3_(%"struct.std::_Vector_base.1"* %this, i64 %__n, %"class.std::allocator.2"* dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2ERKS3_(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl, %"class.std::allocator.2"* dereferenceable(1) %0) #3
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_M_create_storageEm(%"struct.std::_Vector_base.1"* %this1, i64 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IbSaIbEESaIS1_EE18_M_fill_initializeEmRKS1_(%"class.std::vector.0"* %this, i64 %__n, %"class.std::vector.5"* dereferenceable(40) %__value) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::vector.5"* %__value, %"class.std::vector.5"** %__value.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__value.addr, align 8
  %4 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call = call dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %4) #3
  %call2 = call %"class.std::vector.5"* @_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E(%"class.std::vector.5"* %1, i64 %2, %"class.std::vector.5"* dereferenceable(40) %3, %"class.std::allocator.2"* dereferenceable(1) %call)
  %5 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl3, i32 0, i32 1
  store %"class.std::vector.5"* %call2, %"class.std::vector.5"** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %"class.std::vector.5"*, %"class.std::vector.5"** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.std::vector.5"* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.std::vector.5"* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  invoke void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.1"* %this1, %"class.std::vector.5"* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl5) #3
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl6) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #13
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2ERKS3_(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %this, %"class.std::allocator.2"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  store %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"** %this.addr, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"*, %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %this1 to %"class.std::allocator.2"*
  %1 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %__a.addr, align 8
  call void @_ZNSaISt6vectorIbSaIbEEEC2ERKS2_(%"class.std::allocator.2"* %0, %"class.std::allocator.2"* dereferenceable(1) %1) #3
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %this1, i32 0, i32 0
  store %"class.std::vector.5"* null, %"class.std::vector.5"** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %this1, i32 0, i32 1
  store %"class.std::vector.5"* null, %"class.std::vector.5"** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %this1, i32 0, i32 2
  store %"class.std::vector.5"* null, %"class.std::vector.5"** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_M_create_storageEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call %"class.std::vector.5"* @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* %this1, i64 %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  store %"class.std::vector.5"* %call, %"class.std::vector.5"** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  store %"class.std::vector.5"* %1, %"class.std::vector.5"** %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl5, i32 0, i32 0
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %_M_start6, align 8
  %3 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"class.std::vector.5", %"class.std::vector.5"* %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl7, i32 0, i32 2
  store %"class.std::vector.5"* %add.ptr, %"class.std::vector.5"** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"*, %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %this1 to %"class.std::allocator.2"*
  call void @_ZNSaISt6vectorIbSaIbEEED2Ev(%"class.std::allocator.2"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIbSaIbEEEC2ERKS2_(%"class.std::allocator.2"* %this, %"class.std::allocator.2"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.2"*, align 8
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %this.addr, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8
  %this1 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.2"* %this1 to %"class.__gnu_cxx::new_allocator.3"*
  %1 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator.2"* %1 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2ERKS4_(%"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"* dereferenceable(1) %2) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2ERKS4_(%"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"* dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::vector.5"* @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"class.std::vector.5"* @_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8allocateERS3_m(%"class.std::allocator.2"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"class.std::vector.5"* [ %call, %cond.true ], [ null, %cond.false ]
  ret %"class.std::vector.5"* %cond
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::vector.5"* @_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8allocateERS3_m(%"class.std::allocator.2"* dereferenceable(1) %__a, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.2"* %0 to %"class.__gnu_cxx::new_allocator.3"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"class.std::vector.5"* @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %1, i64 %2, i8* null)
  ret %"class.std::vector.5"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::vector.5"* @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %this, i64 %__n, i8* %0) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 40
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"class.std::vector.5"*
  ret %"class.std::vector.5"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  ret i64 461168601842738790
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::vector.5"* @_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E(%"class.std::vector.5"* %__first, i64 %__n, %"class.std::vector.5"* dereferenceable(40) %__x, %"class.std::allocator.2"* dereferenceable(1) %0) #4 comdat {
entry:
  %__first.addr = alloca %"class.std::vector.5"*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca %"class.std::vector.5"*, align 8
  %.addr = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::vector.5"* %__first, %"class.std::vector.5"** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::vector.5"* %__x, %"class.std::vector.5"** %__x.addr, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %.addr, align 8
  %1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__first.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__x.addr, align 8
  %call = call %"class.std::vector.5"* @_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_(%"class.std::vector.5"* %1, i64 %2, %"class.std::vector.5"* dereferenceable(40) %3)
  ret %"class.std::vector.5"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::vector.5"* @_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_(%"class.std::vector.5"* %__first, i64 %__n, %"class.std::vector.5"* dereferenceable(40) %__x) #4 comdat {
entry:
  %__first.addr = alloca %"class.std::vector.5"*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca %"class.std::vector.5"*, align 8
  %__assignable = alloca i8, align 1
  store %"class.std::vector.5"* %__first, %"class.std::vector.5"** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::vector.5"* %__x, %"class.std::vector.5"** %__x.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__x.addr, align 8
  %call = call %"class.std::vector.5"* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_(%"class.std::vector.5"* %0, i64 %1, %"class.std::vector.5"* dereferenceable(40) %2)
  ret %"class.std::vector.5"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::vector.5"* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_(%"class.std::vector.5"* %__first, i64 %__n, %"class.std::vector.5"* dereferenceable(40) %__x) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__first.addr = alloca %"class.std::vector.5"*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca %"class.std::vector.5"*, align 8
  %__cur = alloca %"class.std::vector.5"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector.5"* %__first, %"class.std::vector.5"** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::vector.5"* %__x, %"class.std::vector.5"** %__x.addr, align 8
  %0 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__first.addr, align 8
  store %"class.std::vector.5"* %0, %"class.std::vector.5"** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__cur, align 8
  %call = call %"class.std::vector.5"* @_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_(%"class.std::vector.5"* dereferenceable(40) %2) #3
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__x.addr, align 8
  invoke void @_ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_(%"class.std::vector.5"* %call, %"class.std::vector.5"* dereferenceable(40) %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %4 = load i64, i64* %__n.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %__n.addr, align 8
  %5 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__cur, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::vector.5", %"class.std::vector.5"* %5, i32 1
  store %"class.std::vector.5"* %incdec.ptr, %"class.std::vector.5"** %__cur, align 8
  br label %for.cond

lpad:                                             ; preds = %for.body
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %9 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %10 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__first.addr, align 8
  %11 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__cur, align 8
  invoke void @_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_(%"class.std::vector.5"* %10, %"class.std::vector.5"* %11)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad1

for.end:                                          ; preds = %for.cond
  %12 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__cur, align 8
  ret %"class.std::vector.5"* %12

lpad1:                                            ; preds = %invoke.cont2, %catch
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad1
  br label %eh.resume

try.cont:                                         ; No predecessors!
  call void @llvm.trap()
  unreachable

eh.resume:                                        ; preds = %invoke.cont3
  %exn4 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn4, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad1
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  call void @__clang_call_terminate(i8* %17) #13
  unreachable

unreachable:                                      ; preds = %invoke.cont2
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_(%"class.std::vector.5"* %__p, %"class.std::vector.5"* dereferenceable(40) %__args) #4 comdat {
entry:
  %__p.addr = alloca %"class.std::vector.5"*, align 8
  %__args.addr = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %__p, %"class.std::vector.5"** %__p.addr, align 8
  store %"class.std::vector.5"* %__args, %"class.std::vector.5"** %__args.addr, align 8
  %0 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__p.addr, align 8
  %1 = bitcast %"class.std::vector.5"* %0 to i8*
  %2 = bitcast i8* %1 to %"class.std::vector.5"*
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__args.addr, align 8
  %call = call dereferenceable(40) %"class.std::vector.5"* @_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE(%"class.std::vector.5"* dereferenceable(40) %3) #3
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(%"class.std::vector.5"* %2, %"class.std::vector.5"* dereferenceable(40) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::vector.5"* @_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_(%"class.std::vector.5"* dereferenceable(40) %__r) #5 comdat {
entry:
  %__r.addr = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %__r, %"class.std::vector.5"** %__r.addr, align 8
  %0 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__r.addr, align 8
  ret %"class.std::vector.5"* %0
}

declare dso_local i8* @__cxa_begin_catch(i8*)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_(%"class.std::vector.5"* %__first, %"class.std::vector.5"* %__last) #4 comdat {
entry:
  %__first.addr = alloca %"class.std::vector.5"*, align 8
  %__last.addr = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %__first, %"class.std::vector.5"** %__first.addr, align 8
  store %"class.std::vector.5"* %__last, %"class.std::vector.5"** %__last.addr, align 8
  %0 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__first.addr, align 8
  %1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_(%"class.std::vector.5"* %0, %"class.std::vector.5"* %1)
  ret void
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #11 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #13
  unreachable
}

declare dso_local void @_ZSt9terminatev()

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #12

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(40) %"class.std::vector.5"* @_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE(%"class.std::vector.5"* dereferenceable(40) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %__t, %"class.std::vector.5"** %__t.addr, align 8
  %0 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__t.addr, align 8
  ret %"class.std::vector.5"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2ERKS1_(%"class.std::vector.5"* %this, %"class.std::vector.5"* dereferenceable(40) %__x) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.5"*, align 8
  %__x.addr = alloca %"class.std::vector.5"*, align 8
  %ref.tmp = alloca %"class.std::allocator.9", align 1
  %ref.tmp2 = alloca %"class.std::allocator.6", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp7 = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp9 = alloca %"struct.std::_Bit_iterator", align 8
  %coerce = alloca %"struct.std::_Bit_iterator", align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %this.addr, align 8
  store %"class.std::vector.5"* %__x, %"class.std::vector.5"** %__x.addr, align 8
  %this1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__x.addr, align 8
  %2 = bitcast %"class.std::vector.5"* %1 to %"struct.std::_Bvector_base"*
  %call = call dereferenceable(1) %"class.std::allocator.6"* @_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv(%"struct.std::_Bvector_base"* %2) #3
  call void @_ZN9__gnu_cxx14__alloc_traitsISaImEE17_S_select_on_copyERKS1_(%"class.std::allocator.6"* sret %ref.tmp2, %"class.std::allocator.6"* dereferenceable(1) %call)
  call void @_ZNSaIbEC2ImEERKSaIT_E(%"class.std::allocator.9"* %ref.tmp, %"class.std::allocator.6"* dereferenceable(1) %ref.tmp2) #3
  invoke void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(%"struct.std::_Bvector_base"* %0, %"class.std::allocator.9"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIbED2Ev(%"class.std::allocator.9"* %ref.tmp) #3
  call void @_ZNSaImED2Ev(%"class.std::allocator.6"* %ref.tmp2) #3
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__x.addr, align 8
  %call3 = call i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(%"class.std::vector.5"* %3) #3
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(%"class.std::vector.5"* %this1, i64 %call3)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %4 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__x.addr, align 8
  %call6 = call { i64*, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(%"class.std::vector.5"* %4) #3
  %5 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp to { i64*, i32 }*
  %6 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %5, i32 0, i32 0
  %7 = extractvalue { i64*, i32 } %call6, 0
  store i64* %7, i64** %6, align 8
  %8 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %5, i32 0, i32 1
  %9 = extractvalue { i64*, i32 } %call6, 1
  store i32 %9, i32* %8, align 8
  %10 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__x.addr, align 8
  %call8 = call { i64*, i32 } @_ZNKSt6vectorIbSaIbEE3endEv(%"class.std::vector.5"* %10) #3
  %11 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp7 to { i64*, i32 }*
  %12 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %11, i32 0, i32 0
  %13 = extractvalue { i64*, i32 } %call8, 0
  store i64* %13, i64** %12, align 8
  %14 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %11, i32 0, i32 1
  %15 = extractvalue { i64*, i32 } %call8, 1
  store i32 %15, i32* %14, align 8
  %16 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %16, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl, i32 0, i32 0
  %17 = bitcast %"struct.std::_Bit_iterator"* %agg.tmp9 to i8*
  %18 = bitcast %"struct.std::_Bit_iterator"* %_M_start to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp to { i64*, i32 }*
  %20 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %19, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp7 to { i64*, i32 }*
  %25 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %24, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %call11 = invoke { i64*, i32 } @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator(%"class.std::vector.5"* %this1, i64* %21, i32 %23, i64* %26, i32 %28, %"struct.std::_Bit_iterator"* byval(%"struct.std::_Bit_iterator") align 8 %agg.tmp9)
          to label %invoke.cont10 unwind label %lpad4

invoke.cont10:                                    ; preds = %invoke.cont5
  %29 = bitcast %"struct.std::_Bit_iterator"* %coerce to { i64*, i32 }*
  %30 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %29, i32 0, i32 0
  %31 = extractvalue { i64*, i32 } %call11, 0
  store i64* %31, i64** %30, align 8
  %32 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %29, i32 0, i32 1
  %33 = extractvalue { i64*, i32 } %call11, 1
  store i32 %33, i32* %32, align 8
  ret void

lpad:                                             ; preds = %entry
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %exn.slot, align 8
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %ehselector.slot, align 4
  call void @_ZNSaIbED2Ev(%"class.std::allocator.9"* %ref.tmp) #3
  call void @_ZNSaImED2Ev(%"class.std::allocator.6"* %ref.tmp2) #3
  br label %eh.resume

lpad4:                                            ; preds = %invoke.cont5, %invoke.cont
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %exn.slot, align 8
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %ehselector.slot, align 4
  %40 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %40) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad4, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val12
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaImEE17_S_select_on_copyERKS1_(%"class.std::allocator.6"* noalias sret %agg.result, %"class.std::allocator.6"* dereferenceable(1) %__a) #4 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator.6"*, align 8
  %0 = bitcast %"class.std::allocator.6"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator.6"* %__a, %"class.std::allocator.6"** %__a.addr, align 8
  %1 = load %"class.std::allocator.6"*, %"class.std::allocator.6"** %__a.addr, align 8
  call void @_ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator.6"* sret %agg.result, %"class.std::allocator.6"* dereferenceable(1) %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator.6"* @_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv(%"struct.std::_Bvector_base"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bvector_base"*, align 8
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl to %"class.std::allocator.6"*
  ret %"class.std::allocator.6"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIbEC2ImEERKSaIT_E(%"class.std::allocator.9"* %this, %"class.std::allocator.6"* dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.9"*, align 8
  %.addr = alloca %"class.std::allocator.6"*, align 8
  store %"class.std::allocator.9"* %this, %"class.std::allocator.9"** %this.addr, align 8
  store %"class.std::allocator.6"* %0, %"class.std::allocator.6"** %.addr, align 8
  %this1 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %this.addr, align 8
  %1 = bitcast %"class.std::allocator.9"* %this1 to %"class.__gnu_cxx::new_allocator.10"*
  call void @_ZN9__gnu_cxx13new_allocatorIbEC2Ev(%"class.__gnu_cxx::new_allocator.10"* %1) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(%"class.std::vector.5"* %this) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.5"*, align 8
  %ref.tmp = alloca %"struct.std::_Bit_const_iterator", align 8
  %ref.tmp2 = alloca %"struct.std::_Bit_const_iterator", align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %this.addr, align 8
  %this1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %this.addr, align 8
  %call = call { i64*, i32 } @_ZNKSt6vectorIbSaIbEE3endEv(%"class.std::vector.5"* %this1) #3
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %ref.tmp to { i64*, i32 }*
  %1 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 0
  %2 = extractvalue { i64*, i32 } %call, 0
  store i64* %2, i64** %1, align 8
  %3 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 1
  %4 = extractvalue { i64*, i32 } %call, 1
  store i32 %4, i32* %3, align 8
  %5 = bitcast %"struct.std::_Bit_const_iterator"* %ref.tmp to %"struct.std::_Bit_iterator_base"*
  %call3 = call { i64*, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(%"class.std::vector.5"* %this1) #3
  %6 = bitcast %"struct.std::_Bit_const_iterator"* %ref.tmp2 to { i64*, i32 }*
  %7 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %6, i32 0, i32 0
  %8 = extractvalue { i64*, i32 } %call3, 0
  store i64* %8, i64** %7, align 8
  %9 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %6, i32 0, i32 1
  %10 = extractvalue { i64*, i32 } %call3, 1
  store i32 %10, i32* %9, align 8
  %11 = bitcast %"struct.std::_Bit_const_iterator"* %ref.tmp2 to %"struct.std::_Bit_iterator_base"*
  %call4 = invoke i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(%"struct.std::_Bit_iterator_base"* dereferenceable(16) %5, %"struct.std::_Bit_iterator_base"* dereferenceable(16) %11)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret i64 %call4

terminate.lpad:                                   ; preds = %entry
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #13
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { i64*, i32 } @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator(%"class.std::vector.5"* %this, i64* %__first.coerce0, i32 %__first.coerce1, i64* %__last.coerce0, i32 %__last.coerce1, %"struct.std::_Bit_iterator"* byval(%"struct.std::_Bit_iterator") align 8 %__result) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_const_iterator", align 8
  %__last = alloca %"struct.std::_Bit_const_iterator", align 8
  %this.addr = alloca %"class.std::vector.5"*, align 8
  %__q = alloca i64*, align 8
  %agg.tmp = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp6 = alloca %"struct.std::_Bit_iterator", align 8
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %__first to { i64*, i32 }*
  %1 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 0
  store i64* %__first.coerce0, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 1
  store i32 %__first.coerce1, i32* %2, align 8
  %3 = bitcast %"struct.std::_Bit_const_iterator"* %__last to { i64*, i32 }*
  %4 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %3, i32 0, i32 0
  store i64* %__last.coerce0, i64** %4, align 8
  %5 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %3, i32 0, i32 1
  store i32 %__last.coerce1, i32* %5, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %this.addr, align 8
  %this1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %this.addr, align 8
  %6 = bitcast %"struct.std::_Bit_const_iterator"* %__first to %"struct.std::_Bit_iterator_base"*
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %6, i32 0, i32 0
  %7 = load i64*, i64** %_M_p, align 8
  %8 = bitcast %"struct.std::_Bit_const_iterator"* %__last to %"struct.std::_Bit_iterator_base"*
  %_M_p2 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %8, i32 0, i32 0
  %9 = load i64*, i64** %_M_p2, align 8
  %10 = bitcast %"struct.std::_Bit_iterator"* %__result to %"struct.std::_Bit_iterator_base"*
  %_M_p3 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %10, i32 0, i32 0
  %11 = load i64*, i64** %_M_p3, align 8
  %call = call i64* @_ZSt4copyIPmS0_ET0_T_S2_S1_(i64* %7, i64* %9, i64* %11)
  store i64* %call, i64** %__q, align 8
  %12 = bitcast %"struct.std::_Bit_const_iterator"* %__last to %"struct.std::_Bit_iterator_base"*
  %_M_p4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %12, i32 0, i32 0
  %13 = load i64*, i64** %_M_p4, align 8
  call void @_ZNSt19_Bit_const_iteratorC2EPmj(%"struct.std::_Bit_const_iterator"* %agg.tmp, i64* %13, i32 0)
  %14 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp5 to i8*
  %15 = bitcast %"struct.std::_Bit_const_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load i64*, i64** %__q, align 8
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %agg.tmp6, i64* %16, i32 0)
  %17 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp to { i64*, i32 }*
  %18 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %17, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp5 to { i64*, i32 }*
  %23 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %22, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = bitcast %"struct.std::_Bit_iterator"* %agg.tmp6 to { i64*, i32 }*
  %28 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %27, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %call7 = call { i64*, i32 } @_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_(i64* %19, i32 %21, i64* %24, i32 %26, i64* %29, i32 %31)
  %32 = bitcast %"struct.std::_Bit_iterator"* %retval to { i64*, i32 }*
  %33 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %32, i32 0, i32 0
  %34 = extractvalue { i64*, i32 } %call7, 0
  store i64* %34, i64** %33, align 8
  %35 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %32, i32 0, i32 1
  %36 = extractvalue { i64*, i32 } %call7, 1
  store i32 %36, i32* %35, align 8
  %37 = bitcast %"struct.std::_Bit_iterator"* %retval to { i64*, i32 }*
  %38 = load { i64*, i32 }, { i64*, i32 }* %37, align 8
  ret { i64*, i32 } %38
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local { i64*, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(%"class.std::vector.5"* %this) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %"struct.std::_Bit_const_iterator", align 8
  %this.addr = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %this.addr, align 8
  %this1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl, i32 0, i32 0
  invoke void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(%"struct.std::_Bit_const_iterator"* %retval, %"struct.std::_Bit_iterator"* dereferenceable(16) %_M_start)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %"struct.std::_Bit_const_iterator"* %retval to { i64*, i32 }*
  %2 = load { i64*, i32 }, { i64*, i32 }* %1, align 8
  ret { i64*, i32 } %2

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @__clang_call_terminate(i8* %4) #13
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local { i64*, i32 } @_ZNKSt6vectorIbSaIbEE3endEv(%"class.std::vector.5"* %this) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %"struct.std::_Bit_const_iterator", align 8
  %this.addr = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %this.addr, align 8
  %this1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.5"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl, i32 0, i32 1
  invoke void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(%"struct.std::_Bit_const_iterator"* %retval, %"struct.std::_Bit_iterator"* dereferenceable(16) %_M_finish)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %"struct.std::_Bit_const_iterator"* %retval to { i64*, i32 }*
  %2 = load { i64*, i32 }, { i64*, i32 }* %1, align 8
  ret { i64*, i32 } %2

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @__clang_call_terminate(i8* %4) #13
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator.6"* noalias sret %agg.result, %"class.std::allocator.6"* dereferenceable(1) %__rhs) #5 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %__rhs.addr = alloca %"class.std::allocator.6"*, align 8
  %0 = bitcast %"class.std::allocator.6"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator.6"* %__rhs, %"class.std::allocator.6"** %__rhs.addr, align 8
  %1 = load %"class.std::allocator.6"*, %"class.std::allocator.6"** %__rhs.addr, align 8
  call void @_ZNSaImEC2ERKS_(%"class.std::allocator.6"* %agg.result, %"class.std::allocator.6"* dereferenceable(1) %1) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaImEC2ERKS_(%"class.std::allocator.6"* %this, %"class.std::allocator.6"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.6"*, align 8
  %__a.addr = alloca %"class.std::allocator.6"*, align 8
  store %"class.std::allocator.6"* %this, %"class.std::allocator.6"** %this.addr, align 8
  store %"class.std::allocator.6"* %__a, %"class.std::allocator.6"** %__a.addr, align 8
  %this1 = load %"class.std::allocator.6"*, %"class.std::allocator.6"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.6"* %this1 to %"class.__gnu_cxx::new_allocator.7"*
  %1 = load %"class.std::allocator.6"*, %"class.std::allocator.6"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator.6"* %1 to %"class.__gnu_cxx::new_allocator.7"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.__gnu_cxx::new_allocator.7"* %0, %"class.__gnu_cxx::new_allocator.7"* dereferenceable(1) %2) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(%"struct.std::_Bit_iterator_base"* dereferenceable(16) %__x, %"struct.std::_Bit_iterator_base"* dereferenceable(16) %__y) #5 comdat {
entry:
  %__x.addr = alloca %"struct.std::_Bit_iterator_base"*, align 8
  %__y.addr = alloca %"struct.std::_Bit_iterator_base"*, align 8
  store %"struct.std::_Bit_iterator_base"* %__x, %"struct.std::_Bit_iterator_base"** %__x.addr, align 8
  store %"struct.std::_Bit_iterator_base"* %__y, %"struct.std::_Bit_iterator_base"** %__y.addr, align 8
  %0 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %__x.addr, align 8
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %0, i32 0, i32 0
  %1 = load i64*, i64** %_M_p, align 8
  %2 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %__y.addr, align 8
  %_M_p1 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %2, i32 0, i32 0
  %3 = load i64*, i64** %_M_p1, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %mul = mul nsw i64 64, %sub.ptr.div
  %4 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %__x.addr, align 8
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %4, i32 0, i32 1
  %5 = load i32, i32* %_M_offset, align 8
  %conv = zext i32 %5 to i64
  %add = add nsw i64 %mul, %conv
  %6 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %__y.addr, align 8
  %_M_offset2 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %6, i32 0, i32 1
  %7 = load i32, i32* %_M_offset2, align 8
  %conv3 = zext i32 %7 to i64
  %sub = sub nsw i64 %add, %conv3
  ret i64 %sub
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt4copyIPmS0_ET0_T_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %call = call i64* @_ZSt12__miter_baseIPmET_S1_(i64* %0)
  %1 = load i64*, i64** %__last.addr, align 8
  %call1 = call i64* @_ZSt12__miter_baseIPmET_S1_(i64* %1)
  %2 = load i64*, i64** %__result.addr, align 8
  %call2 = call i64* @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(i64* %call, i64* %call1, i64* %2)
  ret i64* %call2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { i64*, i32 } @_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_(i64* %__first.coerce0, i32 %__first.coerce1, i64* %__last.coerce0, i32 %__last.coerce1, i64* %__result.coerce0, i32 %__result.coerce1) #4 comdat {
entry:
  %retval = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_const_iterator", align 8
  %__last = alloca %"struct.std::_Bit_const_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::_Bit_iterator", align 8
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %__first to { i64*, i32 }*
  %1 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 0
  store i64* %__first.coerce0, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 1
  store i32 %__first.coerce1, i32* %2, align 8
  %3 = bitcast %"struct.std::_Bit_const_iterator"* %__last to { i64*, i32 }*
  %4 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %3, i32 0, i32 0
  store i64* %__last.coerce0, i64** %4, align 8
  %5 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %3, i32 0, i32 1
  store i32 %__last.coerce1, i32* %5, align 8
  %6 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64*, i32 }*
  %7 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %6, i32 0, i32 0
  store i64* %__result.coerce0, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %6, i32 0, i32 1
  store i32 %__result.coerce1, i32* %8, align 8
  %9 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp1 to i8*
  %10 = bitcast %"struct.std::_Bit_const_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp1 to { i64*, i32 }*
  %12 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %11, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %call = call { i64*, i32 } @_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_(i64* %13, i32 %15)
  %16 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp to { i64*, i32 }*
  %17 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %16, i32 0, i32 0
  %18 = extractvalue { i64*, i32 } %call, 0
  store i64* %18, i64** %17, align 8
  %19 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %16, i32 0, i32 1
  %20 = extractvalue { i64*, i32 } %call, 1
  store i32 %20, i32* %19, align 8
  %21 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp3 to i8*
  %22 = bitcast %"struct.std::_Bit_const_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp3 to { i64*, i32 }*
  %24 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %23, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %call4 = call { i64*, i32 } @_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_(i64* %25, i32 %27)
  %28 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp2 to { i64*, i32 }*
  %29 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %28, i32 0, i32 0
  %30 = extractvalue { i64*, i32 } %call4, 0
  store i64* %30, i64** %29, align 8
  %31 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %28, i32 0, i32 1
  %32 = extractvalue { i64*, i32 } %call4, 1
  store i32 %32, i32* %31, align 8
  %33 = bitcast %"struct.std::_Bit_iterator"* %agg.tmp5 to i8*
  %34 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp to { i64*, i32 }*
  %36 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %35, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp2 to { i64*, i32 }*
  %41 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %40, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = bitcast %"struct.std::_Bit_iterator"* %agg.tmp5 to { i64*, i32 }*
  %46 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %45, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %call6 = call { i64*, i32 } @_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64* %37, i32 %39, i64* %42, i32 %44, i64* %47, i32 %49)
  %50 = bitcast %"struct.std::_Bit_iterator"* %retval to { i64*, i32 }*
  %51 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %50, i32 0, i32 0
  %52 = extractvalue { i64*, i32 } %call6, 0
  store i64* %52, i64** %51, align 8
  %53 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %50, i32 0, i32 1
  %54 = extractvalue { i64*, i32 } %call6, 1
  store i32 %54, i32* %53, align 8
  %55 = bitcast %"struct.std::_Bit_iterator"* %retval to { i64*, i32 }*
  %56 = load { i64*, i32 }, { i64*, i32 }* %55, align 8
  ret { i64*, i32 } %56
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt19_Bit_const_iteratorC2EPmj(%"struct.std::_Bit_const_iterator"* %this, i64* %__x, i32 %__y) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_const_iterator"*, align 8
  %__x.addr = alloca i64*, align 8
  %__y.addr = alloca i32, align 4
  store %"struct.std::_Bit_const_iterator"* %this, %"struct.std::_Bit_const_iterator"** %this.addr, align 8
  store i64* %__x, i64** %__x.addr, align 8
  store i32 %__y, i32* %__y.addr, align 4
  %this1 = load %"struct.std::_Bit_const_iterator"*, %"struct.std::_Bit_const_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  %1 = load i64*, i64** %__x.addr, align 8
  %2 = load i32, i32* %__y.addr, align 4
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %0, i64* %1, i32 %2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %call = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %0)
  %1 = load i64*, i64** %__last.addr, align 8
  %call1 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %1)
  %2 = load i64*, i64** %__result.addr, align 8
  %call2 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %2)
  %call3 = call i64* @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(i64* %call, i64* %call1, i64* %call2)
  ret i64* %call3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__miter_baseIPmET_S1_(i64* %__it) #5 comdat {
entry:
  %__it.addr = alloca i64*, align 8
  store i64* %__it, i64** %__it.addr, align 8
  %0 = load i64*, i64** %__it.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__simple = alloca i8, align 1
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__result.addr, align 8
  %call = call i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64* %0, i64* %1, i64* %2)
  ret i64* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64* %__first, i64* %__last, i64* %__result) #5 comdat align 2 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %_Num = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__last.addr, align 8
  %1 = load i64*, i64** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %__result.addr, align 8
  %4 = bitcast i64* %3 to i8*
  %5 = load i64*, i64** %__first.addr, align 8
  %6 = bitcast i64* %5 to i8*
  %7 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %6, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64*, i64** %__result.addr, align 8
  %9 = load i64, i64* %_Num, align 8
  %add.ptr = getelementptr inbounds i64, i64* %8, i64 %9
  ret i64* %add.ptr
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { i64*, i32 } @_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64* %__first.coerce0, i32 %__first.coerce1, i64* %__last.coerce0, i32 %__last.coerce1, i64* %__result.coerce0, i32 %__result.coerce1) #4 comdat {
entry:
  %retval = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_const_iterator", align 8
  %__last = alloca %"struct.std::_Bit_const_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::_Bit_iterator", align 8
  %agg.tmp6 = alloca %"struct.std::_Bit_iterator", align 8
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %__first to { i64*, i32 }*
  %1 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 0
  store i64* %__first.coerce0, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 1
  store i32 %__first.coerce1, i32* %2, align 8
  %3 = bitcast %"struct.std::_Bit_const_iterator"* %__last to { i64*, i32 }*
  %4 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %3, i32 0, i32 0
  store i64* %__last.coerce0, i64** %4, align 8
  %5 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %3, i32 0, i32 1
  store i32 %__last.coerce1, i32* %5, align 8
  %6 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64*, i32 }*
  %7 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %6, i32 0, i32 0
  store i64* %__result.coerce0, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %6, i32 0, i32 1
  store i32 %__result.coerce1, i32* %8, align 8
  %9 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp1 to i8*
  %10 = bitcast %"struct.std::_Bit_const_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp1 to { i64*, i32 }*
  %12 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %11, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %call = call { i64*, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(i64* %13, i32 %15)
  %16 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp to { i64*, i32 }*
  %17 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %16, i32 0, i32 0
  %18 = extractvalue { i64*, i32 } %call, 0
  store i64* %18, i64** %17, align 8
  %19 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %16, i32 0, i32 1
  %20 = extractvalue { i64*, i32 } %call, 1
  store i32 %20, i32* %19, align 8
  %21 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp3 to i8*
  %22 = bitcast %"struct.std::_Bit_const_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp3 to { i64*, i32 }*
  %24 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %23, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %call4 = call { i64*, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(i64* %25, i32 %27)
  %28 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp2 to { i64*, i32 }*
  %29 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %28, i32 0, i32 0
  %30 = extractvalue { i64*, i32 } %call4, 0
  store i64* %30, i64** %29, align 8
  %31 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %28, i32 0, i32 1
  %32 = extractvalue { i64*, i32 } %call4, 1
  store i32 %32, i32* %31, align 8
  %33 = bitcast %"struct.std::_Bit_iterator"* %agg.tmp6 to i8*
  %34 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = bitcast %"struct.std::_Bit_iterator"* %agg.tmp6 to { i64*, i32 }*
  %36 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %35, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %call7 = call { i64*, i32 } @_ZSt12__niter_baseISt13_Bit_iteratorET_S1_(i64* %37, i32 %39)
  %40 = bitcast %"struct.std::_Bit_iterator"* %agg.tmp5 to { i64*, i32 }*
  %41 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %40, i32 0, i32 0
  %42 = extractvalue { i64*, i32 } %call7, 0
  store i64* %42, i64** %41, align 8
  %43 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %40, i32 0, i32 1
  %44 = extractvalue { i64*, i32 } %call7, 1
  store i32 %44, i32* %43, align 8
  %45 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp to { i64*, i32 }*
  %46 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %45, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp2 to { i64*, i32 }*
  %51 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %50, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = bitcast %"struct.std::_Bit_iterator"* %agg.tmp5 to { i64*, i32 }*
  %56 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %55, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %call8 = call { i64*, i32 } @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64* %47, i32 %49, i64* %52, i32 %54, i64* %57, i32 %59)
  %60 = bitcast %"struct.std::_Bit_iterator"* %retval to { i64*, i32 }*
  %61 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %60, i32 0, i32 0
  %62 = extractvalue { i64*, i32 } %call8, 0
  store i64* %62, i64** %61, align 8
  %63 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %60, i32 0, i32 1
  %64 = extractvalue { i64*, i32 } %call8, 1
  store i32 %64, i32* %63, align 8
  %65 = bitcast %"struct.std::_Bit_iterator"* %retval to { i64*, i32 }*
  %66 = load { i64*, i32 }, { i64*, i32 }* %65, align 8
  ret { i64*, i32 } %66
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local { i64*, i32 } @_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_(i64* %__it.coerce0, i32 %__it.coerce1) #5 comdat {
entry:
  %retval = alloca %"struct.std::_Bit_const_iterator", align 8
  %__it = alloca %"struct.std::_Bit_const_iterator", align 8
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %__it to { i64*, i32 }*
  %1 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 0
  store i64* %__it.coerce0, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 1
  store i32 %__it.coerce1, i32* %2, align 8
  %3 = bitcast %"struct.std::_Bit_const_iterator"* %retval to i8*
  %4 = bitcast %"struct.std::_Bit_const_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 16, i1 false)
  %5 = bitcast %"struct.std::_Bit_const_iterator"* %retval to { i64*, i32 }*
  %6 = load { i64*, i32 }, { i64*, i32 }* %5, align 8
  ret { i64*, i32 } %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { i64*, i32 } @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64* %__first.coerce0, i32 %__first.coerce1, i64* %__last.coerce0, i32 %__last.coerce1, i64* %__result.coerce0, i32 %__result.coerce1) #4 comdat {
entry:
  %retval = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_const_iterator", align 8
  %__last = alloca %"struct.std::_Bit_const_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %__simple = alloca i8, align 1
  %agg.tmp = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Bit_const_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Bit_iterator", align 8
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %__first to { i64*, i32 }*
  %1 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 0
  store i64* %__first.coerce0, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 1
  store i32 %__first.coerce1, i32* %2, align 8
  %3 = bitcast %"struct.std::_Bit_const_iterator"* %__last to { i64*, i32 }*
  %4 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %3, i32 0, i32 0
  store i64* %__last.coerce0, i64** %4, align 8
  %5 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %3, i32 0, i32 1
  store i32 %__last.coerce1, i32* %5, align 8
  %6 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64*, i32 }*
  %7 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %6, i32 0, i32 0
  store i64* %__result.coerce0, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %6, i32 0, i32 1
  store i32 %__result.coerce1, i32* %8, align 8
  store i8 0, i8* %__simple, align 1
  %9 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp to i8*
  %10 = bitcast %"struct.std::_Bit_const_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp1 to i8*
  %12 = bitcast %"struct.std::_Bit_const_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = bitcast %"struct.std::_Bit_iterator"* %agg.tmp2 to i8*
  %14 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp to { i64*, i32 }*
  %16 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %15, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = bitcast %"struct.std::_Bit_const_iterator"* %agg.tmp1 to { i64*, i32 }*
  %21 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %20, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = bitcast %"struct.std::_Bit_iterator"* %agg.tmp2 to { i64*, i32 }*
  %26 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %25, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %call = call { i64*, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(i64* %17, i32 %19, i64* %22, i32 %24, i64* %27, i32 %29)
  %30 = bitcast %"struct.std::_Bit_iterator"* %retval to { i64*, i32 }*
  %31 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %30, i32 0, i32 0
  %32 = extractvalue { i64*, i32 } %call, 0
  store i64* %32, i64** %31, align 8
  %33 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %30, i32 0, i32 1
  %34 = extractvalue { i64*, i32 } %call, 1
  store i32 %34, i32* %33, align 8
  %35 = bitcast %"struct.std::_Bit_iterator"* %retval to { i64*, i32 }*
  %36 = load { i64*, i32 }, { i64*, i32 }* %35, align 8
  ret { i64*, i32 } %36
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local { i64*, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(i64* %__it.coerce0, i32 %__it.coerce1) #5 comdat {
entry:
  %retval = alloca %"struct.std::_Bit_const_iterator", align 8
  %__it = alloca %"struct.std::_Bit_const_iterator", align 8
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %__it to { i64*, i32 }*
  %1 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 0
  store i64* %__it.coerce0, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 1
  store i32 %__it.coerce1, i32* %2, align 8
  %3 = bitcast %"struct.std::_Bit_const_iterator"* %retval to i8*
  %4 = bitcast %"struct.std::_Bit_const_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 16, i1 false)
  %5 = bitcast %"struct.std::_Bit_const_iterator"* %retval to { i64*, i32 }*
  %6 = load { i64*, i32 }, { i64*, i32 }* %5, align 8
  ret { i64*, i32 } %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local { i64*, i32 } @_ZSt12__niter_baseISt13_Bit_iteratorET_S1_(i64* %__it.coerce0, i32 %__it.coerce1) #5 comdat {
entry:
  %retval = alloca %"struct.std::_Bit_iterator", align 8
  %__it = alloca %"struct.std::_Bit_iterator", align 8
  %0 = bitcast %"struct.std::_Bit_iterator"* %__it to { i64*, i32 }*
  %1 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 0
  store i64* %__it.coerce0, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 1
  store i32 %__it.coerce1, i32* %2, align 8
  %3 = bitcast %"struct.std::_Bit_iterator"* %retval to i8*
  %4 = bitcast %"struct.std::_Bit_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 16, i1 false)
  %5 = bitcast %"struct.std::_Bit_iterator"* %retval to { i64*, i32 }*
  %6 = load { i64*, i32 }, { i64*, i32 }* %5, align 8
  ret { i64*, i32 } %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { i64*, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(i64* %__first.coerce0, i32 %__first.coerce1, i64* %__last.coerce0, i32 %__last.coerce1, i64* %__result.coerce0, i32 %__result.coerce1) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_const_iterator", align 8
  %__last = alloca %"struct.std::_Bit_const_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %__n = alloca i64, align 8
  %ref.tmp = alloca %"struct.std::_Bit_reference", align 8
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %__first to { i64*, i32 }*
  %1 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 0
  store i64* %__first.coerce0, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %0, i32 0, i32 1
  store i32 %__first.coerce1, i32* %2, align 8
  %3 = bitcast %"struct.std::_Bit_const_iterator"* %__last to { i64*, i32 }*
  %4 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %3, i32 0, i32 0
  store i64* %__last.coerce0, i64** %4, align 8
  %5 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %3, i32 0, i32 1
  store i32 %__last.coerce1, i32* %5, align 8
  %6 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64*, i32 }*
  %7 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %6, i32 0, i32 0
  store i64* %__result.coerce0, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %6, i32 0, i32 1
  store i32 %__result.coerce1, i32* %8, align 8
  %9 = bitcast %"struct.std::_Bit_const_iterator"* %__last to %"struct.std::_Bit_iterator_base"*
  %10 = bitcast %"struct.std::_Bit_const_iterator"* %__first to %"struct.std::_Bit_iterator_base"*
  %call = call i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(%"struct.std::_Bit_iterator_base"* dereferenceable(16) %9, %"struct.std::_Bit_iterator_base"* dereferenceable(16) %10)
  store i64 %call, i64* %__n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %__n, align 8
  %cmp = icmp sgt i64 %11, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call zeroext i1 @_ZNKSt19_Bit_const_iteratordeEv(%"struct.std::_Bit_const_iterator"* %__first)
  %call2 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %__result)
  %12 = bitcast %"struct.std::_Bit_reference"* %ref.tmp to { i64*, i64 }*
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %12, i32 0, i32 0
  %14 = extractvalue { i64*, i64 } %call2, 0
  store i64* %14, i64** %13, align 8
  %15 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %12, i32 0, i32 1
  %16 = extractvalue { i64*, i64 } %call2, 1
  store i64 %16, i64* %15, align 8
  %call3 = call dereferenceable(16) %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %ref.tmp, i1 zeroext %call1) #3
  %call4 = call dereferenceable(16) %"struct.std::_Bit_const_iterator"* @_ZNSt19_Bit_const_iteratorppEv(%"struct.std::_Bit_const_iterator"* %__first)
  %call5 = call dereferenceable(16) %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorppEv(%"struct.std::_Bit_iterator"* %__result)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i64, i64* %__n, align 8
  %dec = add nsw i64 %17, -1
  store i64 %dec, i64* %__n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast %"struct.std::_Bit_iterator"* %retval to i8*
  %19 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = bitcast %"struct.std::_Bit_iterator"* %retval to { i64*, i32 }*
  %21 = load { i64*, i32 }, { i64*, i32 }* %20, align 8
  ret { i64*, i32 } %21
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt19_Bit_const_iteratordeEv(%"struct.std::_Bit_const_iterator"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_const_iterator"*, align 8
  %ref.tmp = alloca %"struct.std::_Bit_reference", align 8
  store %"struct.std::_Bit_const_iterator"* %this, %"struct.std::_Bit_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Bit_const_iterator"*, %"struct.std::_Bit_const_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %0, i32 0, i32 0
  %1 = load i64*, i64** %_M_p, align 8
  %2 = bitcast %"struct.std::_Bit_const_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %2, i32 0, i32 1
  %3 = load i32, i32* %_M_offset, align 8
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 1, %sh_prom
  call void @_ZNSt14_Bit_referenceC2EPmm(%"struct.std::_Bit_reference"* %ref.tmp, i64* %1, i64 %shl)
  %call = call zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %ref.tmp) #3
  ret i1 %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %this) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Bit_reference", align 8
  %this.addr = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %0, i32 0, i32 0
  %1 = load i64*, i64** %_M_p, align 8
  %2 = bitcast %"struct.std::_Bit_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %2, i32 0, i32 1
  %3 = load i32, i32* %_M_offset, align 8
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 1, %sh_prom
  call void @_ZNSt14_Bit_referenceC2EPmm(%"struct.std::_Bit_reference"* %retval, i64* %1, i64 %shl)
  %4 = bitcast %"struct.std::_Bit_reference"* %retval to { i64*, i64 }*
  %5 = load { i64*, i64 }, { i64*, i64 }* %4, align 8
  ret { i64*, i64 } %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::_Bit_const_iterator"* @_ZNSt19_Bit_const_iteratorppEv(%"struct.std::_Bit_const_iterator"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_const_iterator"*, align 8
  store %"struct.std::_Bit_const_iterator"* %this, %"struct.std::_Bit_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Bit_const_iterator"*, %"struct.std::_Bit_const_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(%"struct.std::_Bit_iterator_base"* %0)
  ret %"struct.std::_Bit_const_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorppEv(%"struct.std::_Bit_iterator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(%"struct.std::_Bit_iterator_base"* %0)
  ret %"struct.std::_Bit_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Bit_referenceC2EPmm(%"struct.std::_Bit_reference"* %this, i64* %__x, i64 %__y) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_reference"*, align 8
  %__x.addr = alloca i64*, align 8
  %__y.addr = alloca i64, align 8
  store %"struct.std::_Bit_reference"* %this, %"struct.std::_Bit_reference"** %this.addr, align 8
  store i64* %__x, i64** %__x.addr, align 8
  store i64 %__y, i64* %__y.addr, align 8
  %this1 = load %"struct.std::_Bit_reference"*, %"struct.std::_Bit_reference"** %this.addr, align 8
  %_M_p = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %__x.addr, align 8
  store i64* %0, i64** %_M_p, align 8
  %_M_mask = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %this1, i32 0, i32 1
  %1 = load i64, i64* %__y.addr, align 8
  store i64 %1, i64* %_M_mask, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(%"struct.std::_Bit_iterator_base"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_iterator_base"*, align 8
  store %"struct.std::_Bit_iterator_base"* %this, %"struct.std::_Bit_iterator_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %this.addr, align 8
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %this1, i32 0, i32 1
  %0 = load i32, i32* %_M_offset, align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* %_M_offset, align 8
  %cmp = icmp eq i32 %0, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_offset2 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %this1, i32 0, i32 1
  store i32 0, i32* %_M_offset2, align 8
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %this1, i32 0, i32 0
  %1 = load i64*, i64** %_M_p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %1, i32 1
  store i64* %incdec.ptr, i64** %_M_p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(%"struct.std::_Bit_const_iterator"* %this, %"struct.std::_Bit_iterator"* dereferenceable(16) %__x) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_const_iterator"* %this, %"struct.std::_Bit_const_iterator"** %this.addr, align 8
  store %"struct.std::_Bit_iterator"* %__x, %"struct.std::_Bit_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Bit_const_iterator"*, %"struct.std::_Bit_const_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_const_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  %1 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %__x.addr, align 8
  %2 = bitcast %"struct.std::_Bit_iterator"* %1 to %"struct.std::_Bit_iterator_base"*
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %2, i32 0, i32 0
  %3 = load i64*, i64** %_M_p, align 8
  %4 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %__x.addr, align 8
  %5 = bitcast %"struct.std::_Bit_iterator"* %4 to %"struct.std::_Bit_iterator_base"*
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %5, i32 0, i32 1
  %6 = load i32, i32* %_M_offset, align 8
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %0, i64* %3, i32 %6)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_(%"class.std::vector.5"* %__first, %"class.std::vector.5"* %__last) #4 comdat align 2 {
entry:
  %__first.addr = alloca %"class.std::vector.5"*, align 8
  %__last.addr = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %__first, %"class.std::vector.5"** %__first.addr, align 8
  store %"class.std::vector.5"* %__last, %"class.std::vector.5"** %__last.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__first.addr, align 8
  %1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__last.addr, align 8
  %cmp = icmp ne %"class.std::vector.5"* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__first.addr, align 8
  %call = call %"class.std::vector.5"* @_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_(%"class.std::vector.5"* dereferenceable(40) %2) #3
  call void @_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_(%"class.std::vector.5"* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::vector.5", %"class.std::vector.5"* %3, i32 1
  store %"class.std::vector.5"* %incdec.ptr, %"class.std::vector.5"** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_(%"class.std::vector.5"* %__pointer) #5 comdat {
entry:
  %__pointer.addr = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %__pointer, %"class.std::vector.5"** %__pointer.addr, align 8
  %0 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__pointer.addr, align 8
  call void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.5"* %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.1"* %this, %"class.std::vector.5"* %__p, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__p.addr = alloca %"class.std::vector.5"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  store %"class.std::vector.5"* %__p, %"class.std::vector.5"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %0 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__p.addr, align 8
  %tobool = icmp ne %"class.std::vector.5"* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE10deallocateERS3_PS2_m(%"class.std::allocator.2"* dereferenceable(1) %1, %"class.std::vector.5"* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE10deallocateERS3_PS2_m(%"class.std::allocator.2"* dereferenceable(1) %__a, %"class.std::vector.5"* %__p, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  %__p.addr = alloca %"class.std::vector.5"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8
  store %"class.std::vector.5"* %__p, %"class.std::vector.5"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.2"* %0 to %"class.__gnu_cxx::new_allocator.3"*
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.3"* %1, %"class.std::vector.5"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.3"* %this, %"class.std::vector.5"* %__p, i64 %0) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %__p.addr = alloca %"class.std::vector.5"*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  store %"class.std::vector.5"* %__p, %"class.std::vector.5"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  %1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__p.addr, align 8
  %2 = bitcast %"class.std::vector.5"* %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E(%"class.std::vector.5"* %__first, %"class.std::vector.5"* %__last, %"class.std::allocator.2"* dereferenceable(1) %0) #4 comdat {
entry:
  %__first.addr = alloca %"class.std::vector.5"*, align 8
  %__last.addr = alloca %"class.std::vector.5"*, align 8
  %.addr = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::vector.5"* %__first, %"class.std::vector.5"** %__first.addr, align 8
  store %"class.std::vector.5"* %__last, %"class.std::vector.5"** %__last.addr, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %.addr, align 8
  %1 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__first.addr, align 8
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %__last.addr, align 8
  call void @_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_(%"class.std::vector.5"* %1, %"class.std::vector.5"* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_(%"struct.std::_Vector_base"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, %"class.std::allocator"* dereferenceable(1) %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag(%"class.std::vector"* %this, i32* %__first, i32* %__last) #4 comdat align 2 {
entry:
  %0 = alloca %"struct.std::forward_iterator_tag", align 1
  %this.addr = alloca %"class.std::vector"*, align 8
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__n = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %2 = load i32*, i32** %__last.addr, align 8
  %call = call i64 @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_(i32* %1, i32* %2)
  store i64 %call, i64* %__n, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %4 = load i64, i64* %__n, align 8
  %call2 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %3, i64 %4)
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  store i32* %call2, i32** %_M_start, align 8
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %7 = load i32*, i32** %_M_start4, align 8
  %8 = load i64, i64* %__n, align 8
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %8
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl5, i32 0, i32 2
  store i32* %add.ptr, i32** %_M_end_of_storage, align 8
  %10 = load i32*, i32** %__first.addr, align 8
  %11 = load i32*, i32** %__last.addr, align 8
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %_M_start7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl6, i32 0, i32 0
  %13 = load i32*, i32** %_M_start7, align 8
  %14 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call8 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %14) #3
  %call9 = call i32* @_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E(i32* %10, i32* %11, i32* %13, %"class.std::allocator"* dereferenceable(1) %call8)
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl10, i32 0, i32 1
  store i32* %call9, i32** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNKSt16initializer_listIiE5beginEv(%"class.std::initializer_list"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::initializer_list"*, align 8
  store %"class.std::initializer_list"* %this, %"class.std::initializer_list"** %this.addr, align 8
  %this1 = load %"class.std::initializer_list"*, %"class.std::initializer_list"** %this.addr, align 8
  %_M_array = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %_M_array, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNKSt16initializer_listIiE3endEv(%"class.std::initializer_list"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::initializer_list"*, align 8
  store %"class.std::initializer_list"* %this, %"class.std::initializer_list"** %this.addr, align 8
  %this1 = load %"class.std::initializer_list"*, %"class.std::initializer_list"** %this.addr, align 8
  %call = call i32* @_ZNKSt16initializer_listIiE5beginEv(%"class.std::initializer_list"* %this1) #3
  %call2 = call i64 @_ZNKSt16initializer_listIiE4sizeEv(%"class.std::initializer_list"* %this1) #3
  %add.ptr = getelementptr inbounds i32, i32* %call, i64 %call2
  ret i32* %add.ptr
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load i32*, i32** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load i32*, i32** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load i32*, i32** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %this1, i32* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl5) #3
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl6) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #13
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSaIiEC2ERKS_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %1) #3
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 0
  store i32* null, i32** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 1
  store i32* null, i32** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 2
  store i32* null, i32** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator"* %1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"* dereferenceable(1) %2) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"* dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_(i32* %__first, i32* %__last) #4 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  %undef.agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i32** dereferenceable(8) %__first.addr)
  %call = call i64 @_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i32* %0, i32* %1)
  ret i64 %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %call, %cond.true ], [ null, %cond.false ]
  ret i32* %cond
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator"* dereferenceable(1) %0) #4 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %2 = load i32*, i32** %__last.addr, align 8
  %3 = load i32*, i32** %__result.addr, align 8
  %call = call i32* @_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_(i32* %1, i32* %2, i32* %3)
  ret i32* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i32* %__first, i32* %__last) #5 comdat {
entry:
  %0 = alloca %"struct.std::random_access_iterator_tag", align 1
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  %2 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i32** dereferenceable(8) %0) #5 comdat {
entry:
  %.addr = alloca i32**, align 8
  store i32** %0, i32*** %.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %2, i8* null)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8* %0) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 4
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to i32*
  ret i32* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 4611686018427387903
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_(i32* %__first, i32* %__last, i32* %__result) #4 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %__assignable = alloca i8, align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  %2 = load i32*, i32** %__result.addr, align 8
  %call = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_(i32* %0, i32* %1, i32* %2)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_(i32* %__first, i32* %__last, i32* %__result) #4 comdat align 2 {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  %2 = load i32*, i32** %__result.addr, align 8
  %call = call i32* @_ZSt4copyIPKiPiET0_T_S4_S3_(i32* %0, i32* %1, i32* %2)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt4copyIPKiPiET0_T_S4_S3_(i32* %__first, i32* %__last, i32* %__result) #4 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt12__miter_baseIPKiET_S2_(i32* %0)
  %1 = load i32*, i32** %__last.addr, align 8
  %call1 = call i32* @_ZSt12__miter_baseIPKiET_S2_(i32* %1)
  %2 = load i32*, i32** %__result.addr, align 8
  %call2 = call i32* @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(i32* %call, i32* %call1, i32* %2)
  ret i32* %call2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(i32* %__first, i32* %__last, i32* %__result) #4 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt12__niter_baseIPKiET_S2_(i32* %0)
  %1 = load i32*, i32** %__last.addr, align 8
  %call1 = call i32* @_ZSt12__niter_baseIPKiET_S2_(i32* %1)
  %2 = load i32*, i32** %__result.addr, align 8
  %call2 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %2)
  %call3 = call i32* @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_(i32* %call, i32* %call1, i32* %call2)
  ret i32* %call3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIPKiET_S2_(i32* %__it) #5 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_(i32* %__first, i32* %__last, i32* %__result) #4 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %__simple = alloca i8, align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  %2 = load i32*, i32** %__result.addr, align 8
  %call = call i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %0, i32* %1, i32* %2)
  ret i32* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt12__niter_baseIPKiET_S2_(i32* %__it) #5 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__it) #5 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #5 comdat align 2 {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %_Num = alloca i64, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = load i32*, i32** %__last.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %__result.addr, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i32*, i32** %__first.addr, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = load i64, i64* %_Num, align 8
  %mul = mul i64 4, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %6, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32*, i32** %__result.addr, align 8
  %9 = load i64, i64* %_Num, align 8
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %9
  ret i32* %add.ptr
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt16initializer_listIiE4sizeEv(%"class.std::initializer_list"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::initializer_list"*, align 8
  store %"class.std::initializer_list"* %this, %"class.std::initializer_list"** %this.addr, align 8
  %this1 = load %"class.std::initializer_list"*, %"class.std::initializer_list"** %this.addr, align 8
  %_M_len = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %this1, i32 0, i32 1
  %0 = load i64, i64* %_M_len, align 8
  ret i64 %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %this, i32* %__p, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* dereferenceable(1) %1, i32* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* dereferenceable(1) %__a, i32* %__p, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %1, i32* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p, i64 %0) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i32*, i32** %__p.addr, align 8
  %2 = bitcast i32* %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator"* dereferenceable(1) %0) #4 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %2 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %1, i32* %2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #4 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %0, i32* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %0, i32* %1) #5 comdat align 2 {
entry:
  %.addr = alloca i32*, align 8
  %.addr1 = alloca i32*, align 8
  store i32* %0, i32** %.addr, align 8
  store i32* %1, i32** %.addr1, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_partitionEqualSubsetSum.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline noreturn nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
