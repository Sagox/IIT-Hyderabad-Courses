; ModuleID = 'graph.cpp'
source_filename = "graph.cpp"
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
%class.graph = type { i32, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl" = type { %"struct.std::pair"*, %"struct.std::pair"*, %"struct.std::pair"* }
%"struct.std::pair" = type { i32, i32 }
%"class.std::vector.0" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", i64* }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ i64*, i32 }>
%"class.std::allocator.4" = type { i8 }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::allocator.9" = type { i8 }
%"struct.std::_Bit_reference" = type { i64*, i64 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { %"struct.std::pair"* }
%"class.std::move_iterator" = type { %"struct.std::pair"* }
%"class.std::__pair_base" = type { i8 }
%"class.__gnu_cxx::new_allocator.5" = type { i8 }
%"class.__gnu_cxx::new_allocator.10" = type { i8 }
%"struct.std::_Bit_iterator_base" = type <{ i64*, i32, [4 x i8] }>
%"class.std::allocator.1" = type { i8 }
%"class.__gnu_cxx::new_allocator.2" = type { i8 }
%"struct.std::iterator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.12" = type { i32* }
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { %"struct.std::pair"* }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"class.std::move_iterator.13" = type { i32* }

$_ZN5graphC2Ev = comdat any

$_ZN5graph9addVertexEv = comdat any

$_ZN5graph7addEdgeEii = comdat any

$_ZN5graph3DFSEi = comdat any

$_ZN5graphD2Ev = comdat any

$_ZNSt6vectorISt4pairIiiESaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaISt4pairIiiEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2Ev = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_ = comdat any

$_ZSt9make_pairIRiS0_ESt4pairINSt17__decay_and_stripIT_E6__typeENS2_IT0_E6__typeEEOS3_OS6_ = comdat any

$_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS1_EEEvDpOT_ = comdat any

$_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZNSt16allocator_traitsISaISt4pairIiiEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZSt7forwardISt4pairIiiEEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE9constructIS2_JS2_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv = comdat any

$_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaISt4pairIiiEEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNKSt6vectorISt4pairIiiESaIS1_EE8max_sizeEv = comdat any

$_ZNKSt6vectorISt4pairIiiESaIS1_EE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaISt4pairIiiEEE8max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaISt4pairIiiEEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt4pairIiiEES3_S2_ET0_T_S6_S5_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorISt4pairIiiESt13move_iteratorIPS1_EET0_PT_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPSt4pairIiiEES3_ET0_T_S6_S5_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt4pairIiiEES5_EET0_T_S8_S7_ = comdat any

$_ZStneIPSt4pairIiiEEbRKSt13move_iteratorIT_ES7_ = comdat any

$_ZSt10_ConstructISt4pairIiiEJS1_EEvPT_DpOT0_ = comdat any

$_ZSt11__addressofISt4pairIiiEEPT_RS2_ = comdat any

$_ZNKSt13move_iteratorIPSt4pairIiiEEdeEv = comdat any

$_ZNSt13move_iteratorIPSt4pairIiiEEppEv = comdat any

$_ZSt8_DestroyIPSt4pairIiiEEvT_S3_ = comdat any

$_ZSteqIPSt4pairIiiEEbRKSt13move_iteratorIT_ES7_ = comdat any

$_ZNKSt13move_iteratorIPSt4pairIiiEE4baseEv = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiiEEEvT_S5_ = comdat any

$_ZNSt13move_iteratorIPSt4pairIiiEEC2ES2_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE7destroyIS2_EEvPT_ = comdat any

$_ZNSt16allocator_traitsISaISt4pairIiiEEE10deallocateERS2_PS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m = comdat any

$_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE = comdat any

$_ZNSt4pairIiiEC2IRiS2_Lb1EEEOT_OT0_ = comdat any

$_ZNSaIbEC2Ev = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKS0_ = comdat any

$_ZNSaIbED2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSaIiED2Ev = comdat any

$_ZNSt6vectorIbSaIbEEixEm = comdat any

$_ZNSt14_Bit_referenceaSEb = comdat any

$_ZN5graph7DFSUtilEiRSt6vectorIbSaIbEERS0_IiSaIiEE = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZNSt6vectorIbSaIbEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIbEC2Ev = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_ = comdat any

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

$_ZNSaImEC2ERKS_ = comdat any

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

$_ZN9__gnu_cxx13new_allocatorIbED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

$_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPimET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_ = comdat any

$_ZSt6fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZNKSt13_Bit_iteratordeEv = comdat any

$_ZNSt14_Bit_referenceC2EPmm = comdat any

$_ZN5graph13getNeighboursEi = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZNKSt14_Bit_referencecvbEv = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZN5graph6isEdgeEii = comdat any

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZN9__gnu_cxxneIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_ = comdat any

$_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKSt4pairIiiEEENS0_16_Iter_equals_valIT_EERS6_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv = comdat any

$_ZSteqIiiEbRKSt4pairIT_T0_ES5_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEC2ERS4_ = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_ = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_ = comdat any

$_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZSt12__miter_baseIPiET_S1_ = comdat any

$_ZNKSt13move_iteratorIPiE4baseEv = comdat any

$_ZNSt13move_iteratorIPiEC2ES0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_ = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev = comdat any

$_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev = comdat any

$_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD2Ev = comdat any

$_ZNSaISt4pairIiiEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED2Ev = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [29 x i8] c"numberOfVertices > max(u, v)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"graph.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN5graph7addEdgeEii = private unnamed_addr constant [30 x i8] c"void graph::addEdge(int, int)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_graph.cpp, i8* null }]

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

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %G = alloca %class.graph, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i32 0, i32* %retval, align 4
  call void @_ZN5graphC2Ev(%class.graph* %G)
  invoke void @_ZN5graph9addVertexEv(%class.graph* %G)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN5graph9addVertexEv(%class.graph* %G)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  invoke void @_ZN5graph9addVertexEv(%class.graph* %G)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont1
  invoke void @_ZN5graph9addVertexEv(%class.graph* %G)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont2
  invoke void @_ZN5graph9addVertexEv(%class.graph* %G)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont3
  invoke void @_ZN5graph9addVertexEv(%class.graph* %G)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  invoke void @_ZN5graph9addVertexEv(%class.graph* %G)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont5
  invoke void @_ZN5graph9addVertexEv(%class.graph* %G)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont6
  invoke void @_ZN5graph9addVertexEv(%class.graph* %G)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont7
  invoke void @_ZN5graph9addVertexEv(%class.graph* %G)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont8
  invoke void @_ZN5graph7addEdgeEii(%class.graph* %G, i32 0, i32 1)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont9
  invoke void @_ZN5graph7addEdgeEii(%class.graph* %G, i32 0, i32 2)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont10
  invoke void @_ZN5graph7addEdgeEii(%class.graph* %G, i32 1, i32 3)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %invoke.cont11
  invoke void @_ZN5graph7addEdgeEii(%class.graph* %G, i32 1, i32 4)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont12
  invoke void @_ZN5graph7addEdgeEii(%class.graph* %G, i32 2, i32 8)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %invoke.cont13
  invoke void @_ZN5graph7addEdgeEii(%class.graph* %G, i32 2, i32 7)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont14
  invoke void @_ZN5graph7addEdgeEii(%class.graph* %G, i32 4, i32 5)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %invoke.cont15
  invoke void @_ZN5graph7addEdgeEii(%class.graph* %G, i32 4, i32 6)
          to label %invoke.cont17 unwind label %lpad

invoke.cont17:                                    ; preds = %invoke.cont16
  invoke void @_ZN5graph7addEdgeEii(%class.graph* %G, i32 7, i32 9)
          to label %invoke.cont18 unwind label %lpad

invoke.cont18:                                    ; preds = %invoke.cont17
  invoke void @_ZN5graph3DFSEi(%class.graph* %G, i32 1)
          to label %invoke.cont19 unwind label %lpad

invoke.cont19:                                    ; preds = %invoke.cont18
  store i32 0, i32* %retval, align 4
  call void @_ZN5graphD2Ev(%class.graph* %G) #3
  %0 = load i32, i32* %retval, align 4
  ret i32 %0

lpad:                                             ; preds = %invoke.cont18, %invoke.cont17, %invoke.cont16, %invoke.cont15, %invoke.cont14, %invoke.cont13, %invoke.cont12, %invoke.cont11, %invoke.cont10, %invoke.cont9, %invoke.cont8, %invoke.cont7, %invoke.cont6, %invoke.cont5, %invoke.cont4, %invoke.cont3, %invoke.cont2, %invoke.cont1, %invoke.cont, %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZN5graphD2Ev(%class.graph* %G) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5graphC2Ev(%class.graph* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %class.graph*, align 8
  store %class.graph* %this, %class.graph** %this.addr, align 8
  %this1 = load %class.graph*, %class.graph** %this.addr, align 8
  %edges = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 1
  call void @_ZNSt6vectorISt4pairIiiESaIS1_EEC2Ev(%"class.std::vector"* %edges) #3
  %numberOfVertices = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 0
  store i32 0, i32* %numberOfVertices, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5graph9addVertexEv(%class.graph* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %class.graph*, align 8
  store %class.graph* %this, %class.graph** %this.addr, align 8
  %this1 = load %class.graph*, %class.graph** %this.addr, align 8
  %numberOfVertices = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 0
  %0 = load i32, i32* %numberOfVertices, align 8
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %numberOfVertices, align 8
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN5graph7addEdgeEii(%class.graph* %this, i32 %u, i32 %v) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.graph*, align 8
  %u.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %ref.tmp = alloca %"struct.std::pair", align 4
  store %class.graph* %this, %class.graph** %this.addr, align 8
  store i32 %u, i32* %u.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  %this1 = load %class.graph*, %class.graph** %this.addr, align 8
  %numberOfVertices = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 0
  %0 = load i32, i32* %numberOfVertices, align 8
  %call = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %u.addr, i32* dereferenceable(4) %v.addr)
  %1 = load i32, i32* %call, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__._ZN5graph7addEdgeEii, i64 0, i64 0)) #14
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %edges = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 1
  %call2 = call i64 @_ZSt9make_pairIRiS0_ESt4pairINSt17__decay_and_stripIT_E6__typeENS2_IT0_E6__typeEEOS3_OS6_(i32* dereferenceable(4) %u.addr, i32* dereferenceable(4) %v.addr)
  %3 = bitcast %"struct.std::pair"* %ref.tmp to i64*
  store i64 %call2, i64* %3, align 4
  call void @_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_(%"class.std::vector"* %edges, %"struct.std::pair"* dereferenceable(8) %ref.tmp)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN5graph3DFSEi(%class.graph* %this, i32 %u) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.graph*, align 8
  %u.addr = alloca i32, align 4
  %visited = alloca %"class.std::vector.0", align 8
  %ref.tmp = alloca %"class.std::allocator.4", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %parent = alloca %"class.std::vector.7", align 8
  %ref.tmp4 = alloca %"class.std::allocator.9", align 1
  %i = alloca i32, align 4
  %ref.tmp8 = alloca %"struct.std::_Bit_reference", align 8
  store %class.graph* %this, %class.graph** %this.addr, align 8
  store i32 %u, i32* %u.addr, align 4
  %this1 = load %class.graph*, %class.graph** %this.addr, align 8
  %numberOfVertices = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 0
  %0 = load i32, i32* %numberOfVertices, align 8
  %conv = sext i32 %0 to i64
  call void @_ZNSaIbEC2Ev(%"class.std::allocator.4"* %ref.tmp) #3
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKS0_(%"class.std::vector.0"* %visited, i64 %conv, %"class.std::allocator.4"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIbED2Ev(%"class.std::allocator.4"* %ref.tmp) #3
  %numberOfVertices2 = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 0
  %1 = load i32, i32* %numberOfVertices2, align 8
  %conv3 = sext i32 %1 to i64
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.9"* %ref.tmp4) #3
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(%"class.std::vector.7"* %parent, i64 %conv3, %"class.std::allocator.9"* dereferenceable(1) %ref.tmp4)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  call void @_ZNSaIiED2Ev(%"class.std::allocator.9"* %ref.tmp4) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont6
  %2 = load i32, i32* %i, align 4
  %numberOfVertices7 = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 0
  %3 = load i32, i32* %numberOfVertices7, align 8
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %conv9 = sext i32 %4 to i64
  %call = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.0"* %visited, i64 %conv9)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %for.body
  %5 = bitcast %"struct.std::_Bit_reference"* %ref.tmp8 to { i64*, i64 }*
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %5, i32 0, i32 0
  %7 = extractvalue { i64*, i64 } %call, 0
  store i64* %7, i64** %6, align 8
  %8 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %5, i32 0, i32 1
  %9 = extractvalue { i64*, i64 } %call, 1
  store i64 %9, i64* %8, align 8
  %call12 = call dereferenceable(16) %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %ref.tmp8, i1 zeroext false) #3
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont11
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %entry
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  call void @_ZNSaIbED2Ev(%"class.std::allocator.4"* %ref.tmp) #3
  br label %eh.resume

lpad5:                                            ; preds = %invoke.cont
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::allocator.9"* %ref.tmp4) #3
  br label %ehcleanup

lpad10:                                           ; preds = %for.end, %for.body
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %exn.slot, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %ehselector.slot, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.7"* %parent) #3
  br label %ehcleanup

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %u.addr, align 4
  invoke void @_ZN5graph7DFSUtilEiRSt6vectorIbSaIbEERS0_IiSaIiEE(%class.graph* %this1, i32 %20, %"class.std::vector.0"* dereferenceable(40) %visited, %"class.std::vector.7"* dereferenceable(24) %parent)
          to label %invoke.cont13 unwind label %lpad10

invoke.cont13:                                    ; preds = %for.end
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.7"* %parent) #3
  call void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.0"* %visited) #3
  ret void

ehcleanup:                                        ; preds = %lpad10, %lpad5
  call void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.0"* %visited) #3
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5graphD2Ev(%class.graph* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %class.graph*, align 8
  store %class.graph* %this, %class.graph** %this.addr, align 8
  %this1 = load %class.graph*, %class.graph** %this.addr, align 8
  %edges = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 1
  call void @_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev(%"class.std::vector"* %edges) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIiiESaIS1_EEC2Ev(%"class.std::vector"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2Ev(%"struct.std::_Vector_base"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #14
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #7 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #14
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"*, %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt4pairIiiEEC2Ev(%"class.std::allocator"* %0) #3
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %this1, i32 0, i32 0
  store %"struct.std::pair"* null, %"struct.std::pair"** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %this1, i32 0, i32 1
  store %"struct.std::pair"* null, %"struct.std::pair"** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %this1, i32 0, i32 2
  store %"struct.std::pair"* null, %"struct.std::pair"** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt4pairIiiEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #5 comdat {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %0 = load i32*, i32** %__a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %__b.addr, align 8
  store i32* %4, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %__a.addr, align 8
  store i32* %5, i32** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval, align 8
  ret i32* %6
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #8

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_(%"class.std::vector"* %this, %"struct.std::pair"* dereferenceable(8) %__x) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %"struct.std::pair"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__x.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair"* @_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_(%"struct.std::pair"* dereferenceable(8) %0) #3
  call void @_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS1_EEEvDpOT_(%"class.std::vector"* %this1, %"struct.std::pair"* dereferenceable(8) %call)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZSt9make_pairIRiS0_ESt4pairINSt17__decay_and_stripIT_E6__typeENS2_IT0_E6__typeEEOS3_OS6_(i32* dereferenceable(4) %__x, i32* dereferenceable(4) %__y) #6 comdat {
entry:
  %retval = alloca %"struct.std::pair", align 4
  %__x.addr = alloca i32*, align 8
  %__y.addr = alloca i32*, align 8
  store i32* %__x, i32** %__x.addr, align 8
  store i32* %__y, i32** %__y.addr, align 8
  %0 = load i32*, i32** %__x.addr, align 8
  %call = call dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* dereferenceable(4) %0) #3
  %1 = load i32*, i32** %__y.addr, align 8
  %call1 = call dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* dereferenceable(4) %1) #3
  call void @_ZNSt4pairIiiEC2IRiS2_Lb1EEEOT_OT0_(%"struct.std::pair"* %retval, i32* dereferenceable(4) %call, i32* dereferenceable(4) %call1)
  %2 = bitcast %"struct.std::pair"* %retval to i64*
  %3 = load i64, i64* %2, align 4
  ret i64 %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS1_EEEvDpOT_(%"class.std::vector"* %this, %"struct.std::pair"* dereferenceable(8) %__args) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__args.addr = alloca %"struct.std::pair"*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"struct.std::pair"* %__args, %"struct.std::pair"** %__args.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_end_of_storage, align 8
  %cmp = icmp ne %"struct.std::pair"* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl3 to %"class.std::allocator"*
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_finish5, align 8
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %__args.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair"* @_ZSt7forwardISt4pairIiiEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::pair"* dereferenceable(8) %8) #3
  call void @_ZNSt16allocator_traitsISaISt4pairIiiEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %5, %"struct.std::pair"* %7, %"struct.std::pair"* dereferenceable(8) %call)
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %10, i32 1
  store %"struct.std::pair"* %incdec.ptr, %"struct.std::pair"** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call8 = call %"struct.std::pair"* @_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv(%"class.std::vector"* %this1) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::pair"* %call8, %"struct.std::pair"** %coerce.dive, align 8
  %11 = load %"struct.std::pair"*, %"struct.std::pair"** %__args.addr, align 8
  %call9 = call dereferenceable(8) %"struct.std::pair"* @_ZSt7forwardISt4pairIiiEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::pair"* dereferenceable(8) %11) #3
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %12 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive10, align 8
  call void @_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(%"class.std::vector"* %this1, %"struct.std::pair"* %12, %"struct.std::pair"* dereferenceable(8) %call9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::pair"* @_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_(%"struct.std::pair"* dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %__t, %"struct.std::pair"** %__t.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__t.addr, align 8
  ret %"struct.std::pair"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt4pairIiiEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %__a, %"struct.std::pair"* %__p, %"struct.std::pair"* dereferenceable(8) %__args) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__args.addr = alloca %"struct.std::pair"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store %"struct.std::pair"* %__args, %"struct.std::pair"** %__args.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %__args.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair"* @_ZSt7forwardISt4pairIiiEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::pair"* dereferenceable(8) %3) #3
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE9constructIS2_JS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %1, %"struct.std::pair"* %2, %"struct.std::pair"* dereferenceable(8) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::pair"* @_ZSt7forwardISt4pairIiiEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::pair"* dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %__t, %"struct.std::pair"** %__t.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__t.addr, align 8
  ret %"struct.std::pair"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(%"class.std::vector"* %this, %"struct.std::pair"* %__position.coerce, %"struct.std::pair"* dereferenceable(8) %__args) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__args.addr = alloca %"struct.std::pair"*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca %"struct.std::pair"*, align 8
  %__new_finish = alloca %"struct.std::pair"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store %"struct.std::pair"* %__position.coerce, %"struct.std::pair"** %coerce.dive, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"struct.std::pair"* %__args, %"struct.std::pair"** %__args.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc(%"class.std::vector"* %this1, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i64 %call, i64* %__len, align 8
  %call2 = call %"struct.std::pair"* @_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv(%"class.std::vector"* %this1) #3
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::pair"* %call2, %"struct.std::pair"** %coerce.dive3, align 8
  %call4 = call i64 @_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp) #3
  store i64 %call4, i64* %__elems_before, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__len, align 8
  %call5 = call %"struct.std::pair"* @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base"* %0, i64 %1)
  store %"struct.std::pair"* %call5, %"struct.std::pair"** %__new_start, align 8
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_start, align 8
  store %"struct.std::pair"* %2, %"struct.std::pair"** %__new_finish, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_start, align 8
  %6 = load i64, i64* %__elems_before, align 8
  %add.ptr = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i64 %6
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %__args.addr, align 8
  %call6 = call dereferenceable(8) %"struct.std::pair"* @_ZSt7forwardISt4pairIiiEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::pair"* dereferenceable(8) %7) #3
  invoke void @_ZNSt16allocator_traitsISaISt4pairIiiEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %4, %"struct.std::pair"* %add.ptr, %"struct.std::pair"* dereferenceable(8) %call6)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"struct.std::pair"* null, %"struct.std::pair"** %__new_finish, align 8
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl7, i32 0, i32 0
  %9 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_start, align 8
  %call8 = call dereferenceable(8) %"struct.std::pair"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position) #3
  %10 = load %"struct.std::pair"*, %"struct.std::pair"** %call8, align 8
  %11 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_start, align 8
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call9 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %12) #3
  %call11 = invoke %"struct.std::pair"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_(%"struct.std::pair"* %9, %"struct.std::pair"* %10, %"struct.std::pair"* %11, %"class.std::allocator"* dereferenceable(1) %call9)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont
  store %"struct.std::pair"* %call11, %"struct.std::pair"** %__new_finish, align 8
  %13 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_finish, align 8
  %incdec.ptr = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %13, i32 1
  store %"struct.std::pair"* %incdec.ptr, %"struct.std::pair"** %__new_finish, align 8
  %call12 = call dereferenceable(8) %"struct.std::pair"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position) #3
  %14 = load %"struct.std::pair"*, %"struct.std::pair"** %call12, align 8
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %16 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_finish, align 8
  %17 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_finish, align 8
  %18 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call14 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %18) #3
  %call16 = invoke %"struct.std::pair"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_(%"struct.std::pair"* %14, %"struct.std::pair"* %16, %"struct.std::pair"* %17, %"class.std::allocator"* dereferenceable(1) %call14)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont10
  store %"struct.std::pair"* %call16, %"struct.std::pair"** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont10, %invoke.cont, %entry
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %exn.slot, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %22 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %23 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_finish, align 8
  %tobool = icmp ne %"struct.std::pair"* %23, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %catch
  %24 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %24, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl17 to %"class.std::allocator"*
  %26 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_start, align 8
  %27 = load i64, i64* %__elems_before, align 8
  %add.ptr18 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %26, i64 %27
  invoke void @_ZNSt16allocator_traitsISaISt4pairIiiEEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator"* dereferenceable(1) %25, %"struct.std::pair"* %add.ptr18)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %if.then
  br label %if.end

lpad19:                                           ; preds = %invoke.cont23, %if.end, %if.else, %if.then
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %exn.slot, align 8
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont24 unwind label %terminate.lpad

if.else:                                          ; preds = %catch
  %31 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_start, align 8
  %32 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_finish, align 8
  %33 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call21 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %33) #3
  invoke void @_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E(%"struct.std::pair"* %31, %"struct.std::pair"* %32, %"class.std::allocator"* dereferenceable(1) %call21)
          to label %invoke.cont22 unwind label %lpad19

invoke.cont22:                                    ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %invoke.cont22, %invoke.cont20
  %34 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %35 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_start, align 8
  %36 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %34, %"struct.std::pair"* %35, i64 %36)
          to label %invoke.cont23 unwind label %lpad19

invoke.cont23:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #15
          to label %unreachable unwind label %lpad19

invoke.cont24:                                    ; preds = %lpad19
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont15
  %37 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %37, i32 0, i32 0
  %_M_start26 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl25, i32 0, i32 0
  %38 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_start26, align 8
  %39 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl27 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %39, i32 0, i32 0
  %_M_finish28 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl27, i32 0, i32 1
  %40 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_finish28, align 8
  %41 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call29 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %41) #3
  call void @_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E(%"struct.std::pair"* %38, %"struct.std::pair"* %40, %"class.std::allocator"* dereferenceable(1) %call29)
  %42 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %43 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl30 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %43, i32 0, i32 0
  %_M_start31 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl30, i32 0, i32 0
  %44 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_start31, align 8
  %45 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl32 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %45, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl32, i32 0, i32 2
  %46 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_end_of_storage, align 8
  %47 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl33 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %47, i32 0, i32 0
  %_M_start34 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl33, i32 0, i32 0
  %48 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_start34, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.std::pair"* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.std::pair"* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  call void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %42, %"struct.std::pair"* %44, i64 %sub.ptr.div)
  %49 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_start, align 8
  %50 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl35 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %50, i32 0, i32 0
  %_M_start36 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl35, i32 0, i32 0
  store %"struct.std::pair"* %49, %"struct.std::pair"** %_M_start36, align 8
  %51 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_finish, align 8
  %52 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl37 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %52, i32 0, i32 0
  %_M_finish38 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl37, i32 0, i32 1
  store %"struct.std::pair"* %51, %"struct.std::pair"** %_M_finish38, align 8
  %53 = load %"struct.std::pair"*, %"struct.std::pair"** %__new_start, align 8
  %54 = load i64, i64* %__len, align 8
  %add.ptr39 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %53, i64 %54
  %55 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl40 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %55, i32 0, i32 0
  %_M_end_of_storage41 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl40, i32 0, i32 2
  store %"struct.std::pair"* %add.ptr39, %"struct.std::pair"** %_M_end_of_storage41, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont24
  %exn42 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn42, 0
  %lpad.val43 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val43

terminate.lpad:                                   ; preds = %lpad19
  %56 = landingpad { i8*, i32 }
          catch i8* null
  %57 = extractvalue { i8*, i32 } %56, 0
  call void @__clang_call_terminate(i8* %57) #14
  unreachable

unreachable:                                      ; preds = %invoke.cont23
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv(%"class.std::vector"* %this) #5 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"struct.std::pair"** dereferenceable(8) %_M_finish) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive, align 8
  ret %"struct.std::pair"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE9constructIS2_JS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::pair"* %__p, %"struct.std::pair"* dereferenceable(8) %__args) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__args.addr = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store %"struct.std::pair"* %__args, %"struct.std::pair"** %__args.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %1 = bitcast %"struct.std::pair"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::pair"*
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %__args.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair"* @_ZSt7forwardISt4pairIiiEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::pair"* dereferenceable(8) %3) #3
  %4 = bitcast %"struct.std::pair"* %2 to i8*
  %5 = bitcast %"struct.std::pair"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorISt4pairIiiESaIS1_EE8max_sizeEv(%"class.std::vector"* %this1) #3
  %call2 = call i64 @_ZNKSt6vectorISt4pairIiiESaIS1_EE4sizeEv(%"class.std::vector"* %this1) #3
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorISt4pairIiiESaIS1_EE4sizeEv(%"class.std::vector"* %this1) #3
  %call4 = call i64 @_ZNKSt6vectorISt4pairIiiESaIS1_EE4sizeEv(%"class.std::vector"* %this1) #3
  store i64 %call4, i64* %ref.tmp, align 8
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64, i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorISt4pairIiiESaIS1_EE4sizeEv(%"class.std::vector"* %this1) #3
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorISt4pairIiiESaIS1_EE8max_sizeEv(%"class.std::vector"* %this1) #3
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorISt4pairIiiESaIS1_EE8max_sizeEv(%"class.std::vector"* %this1) #3
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #5 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #3
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %"struct.std::pair"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #3
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.std::pair"* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.std::pair"* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv(%"class.std::vector"* %this) #5 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"struct.std::pair"** dereferenceable(8) %_M_start) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive, align 8
  ret %"struct.std::pair"* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #6 comdat align 2 {
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
  %1 = bitcast %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.std::pair"* @_ZNSt16allocator_traitsISaISt4pairIiiEEE8allocateERS2_m(%"class.std::allocator"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"struct.std::pair"* [ %call, %cond.true ], [ null, %cond.false ]
  ret %"struct.std::pair"* %cond
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_(%"struct.std::pair"* %__first, %"struct.std::pair"* %__last, %"struct.std::pair"* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #6 comdat {
entry:
  %__first.addr = alloca %"struct.std::pair"*, align 8
  %__last.addr = alloca %"struct.std::pair"*, align 8
  %__result.addr = alloca %"struct.std::pair"*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp1 = alloca %"class.std::move_iterator", align 8
  store %"struct.std::pair"* %__first, %"struct.std::pair"** %__first.addr, align 8
  store %"struct.std::pair"* %__last, %"struct.std::pair"** %__last.addr, align 8
  store %"struct.std::pair"* %__result, %"struct.std::pair"** %__result.addr, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__first.addr, align 8
  %call = call %"struct.std::pair"* @_ZSt32__make_move_if_noexcept_iteratorISt4pairIiiESt13move_iteratorIPS1_EET0_PT_(%"struct.std::pair"* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::pair"* %call, %"struct.std::pair"** %coerce.dive, align 8
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %__last.addr, align 8
  %call2 = call %"struct.std::pair"* @_ZSt32__make_move_if_noexcept_iteratorISt4pairIiiESt13move_iteratorIPS1_EET0_PT_(%"struct.std::pair"* %1)
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp1, i32 0, i32 0
  store %"struct.std::pair"* %call2, %"struct.std::pair"** %coerce.dive3, align 8
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__result.addr, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp1, i32 0, i32 0
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive5, align 8
  %call6 = call %"struct.std::pair"* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt4pairIiiEES3_S2_ET0_T_S6_S5_RSaIT1_E(%"struct.std::pair"* %4, %"struct.std::pair"* %5, %"struct.std::pair"* %2, %"class.std::allocator"* dereferenceable(1) %3)
  ret %"struct.std::pair"* %call6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::pair"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret %"struct.std::pair"** %_M_current
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt4pairIiiEEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator"* dereferenceable(1) %__a, %"struct.std::pair"* %__p) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE7destroyIS2_EEvPT_(%"class.__gnu_cxx::new_allocator"* %1, %"struct.std::pair"* %2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E(%"struct.std::pair"* %__first, %"struct.std::pair"* %__last, %"class.std::allocator"* dereferenceable(1) %0) #6 comdat {
entry:
  %__first.addr = alloca %"struct.std::pair"*, align 8
  %__last.addr = alloca %"struct.std::pair"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::pair"* %__first, %"struct.std::pair"** %__first.addr, align 8
  store %"struct.std::pair"* %__last, %"struct.std::pair"** %__last.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %__first.addr, align 8
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__last.addr, align 8
  call void @_ZSt8_DestroyIPSt4pairIiiEEvT_S3_(%"struct.std::pair"* %1, %"struct.std::pair"* %2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %this, %"struct.std::pair"* %__p, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %tobool = icmp ne %"struct.std::pair"* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaISt4pairIiiEEE10deallocateERS2_PS1_m(%"class.std::allocator"* dereferenceable(1) %1, %"struct.std::pair"* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorISt4pairIiiESaIS1_EE8max_sizeEv(%"class.std::vector"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0) #3
  %call2 = call i64 @_ZNSt16allocator_traitsISaISt4pairIiiEEE8max_sizeERKS2_(%"class.std::allocator"* dereferenceable(1) %call) #3
  ret i64 %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorISt4pairIiiESaIS1_EE4sizeEv(%"class.std::vector"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.std::pair"* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.std::pair"* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #5 comdat {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %0 = load i64*, i64** %__a.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %__b.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8
  store i64* %4, i64** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8
  store i64* %5, i64** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8
  ret i64* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaISt4pairIiiEEE8max_sizeERKS2_(%"class.std::allocator"* dereferenceable(1) %__a) #5 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %1) #3
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %this, %"struct.std::pair"** dereferenceable(8) %__i) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca %"struct.std::pair"**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store %"struct.std::pair"** %__i, %"struct.std::pair"*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair"**, %"struct.std::pair"*** %__i.addr, align 8
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %0, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %_M_current, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNSt16allocator_traitsISaISt4pairIiiEEE8allocateERS2_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.std::pair"* @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %2, i8* null)
  ret %"struct.std::pair"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8* %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::pair"*
  ret %"struct.std::pair"* %3
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #11

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt4pairIiiEES3_S2_ET0_T_S6_S5_RSaIT1_E(%"struct.std::pair"* %__first.coerce, %"struct.std::pair"* %__last.coerce, %"struct.std::pair"* %__result, %"class.std::allocator"* dereferenceable(1) %0) #6 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca %"struct.std::pair"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair"* %__first.coerce, %"struct.std::pair"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair"* %__last.coerce, %"struct.std::pair"** %coerce.dive1, align 8
  store %"struct.std::pair"* %__result, %"struct.std::pair"** %__result.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %2 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %3 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %4 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive4, align 8
  %call = call %"struct.std::pair"* @_ZSt18uninitialized_copyISt13move_iteratorIPSt4pairIiiEES3_ET0_T_S6_S5_(%"struct.std::pair"* %6, %"struct.std::pair"* %7, %"struct.std::pair"* %5)
  ret %"struct.std::pair"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZSt32__make_move_if_noexcept_iteratorISt4pairIiiESt13move_iteratorIPS1_EET0_PT_(%"struct.std::pair"* %__i) #6 comdat {
entry:
  %retval = alloca %"class.std::move_iterator", align 8
  %__i.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %__i, %"struct.std::pair"** %__i.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__i.addr, align 8
  call void @_ZNSt13move_iteratorIPSt4pairIiiEEC2ES2_(%"class.std::move_iterator"* %retval, %"struct.std::pair"* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive, align 8
  ret %"struct.std::pair"* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZSt18uninitialized_copyISt13move_iteratorIPSt4pairIiiEES3_ET0_T_S6_S5_(%"struct.std::pair"* %__first.coerce, %"struct.std::pair"* %__last.coerce, %"struct.std::pair"* %__result) #6 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca %"struct.std::pair"*, align 8
  %__assignable = alloca i8, align 1
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair"* %__first.coerce, %"struct.std::pair"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair"* %__last.coerce, %"struct.std::pair"** %coerce.dive1, align 8
  store %"struct.std::pair"* %__result, %"struct.std::pair"** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %2 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %4 = load %"struct.std::pair"*, %"struct.std::pair"** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive4, align 8
  %call = call %"struct.std::pair"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt4pairIiiEES5_EET0_T_S8_S7_(%"struct.std::pair"* %5, %"struct.std::pair"* %6, %"struct.std::pair"* %4)
  ret %"struct.std::pair"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt4pairIiiEES5_EET0_T_S8_S7_(%"struct.std::pair"* %__first.coerce, %"struct.std::pair"* %__last.coerce, %"struct.std::pair"* %__result) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca %"struct.std::pair"*, align 8
  %__cur = alloca %"struct.std::pair"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair"* %__first.coerce, %"struct.std::pair"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair"* %__last.coerce, %"struct.std::pair"** %coerce.dive1, align 8
  store %"struct.std::pair"* %__result, %"struct.std::pair"** %__result.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__result.addr, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont6, %entry
  %call = invoke zeroext i1 @_ZStneIPSt4pairIiiEEbRKSt13move_iteratorIT_ES7_(%"class.std::move_iterator"* dereferenceable(8) %__first, %"class.std::move_iterator"* dereferenceable(8) %__last)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %__cur, align 8
  %call2 = call %"struct.std::pair"* @_ZSt11__addressofISt4pairIiiEEPT_RS2_(%"struct.std::pair"* dereferenceable(8) %1) #3
  %call4 = invoke dereferenceable(8) %"struct.std::pair"* @_ZNKSt13move_iteratorIPSt4pairIiiEEdeEv(%"class.std::move_iterator"* %__first)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %for.body
  invoke void @_ZSt10_ConstructISt4pairIiiEJS1_EEvPT_DpOT0_(%"struct.std::pair"* %call2, %"struct.std::pair"* dereferenceable(8) %call4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont3
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont5
  %call7 = invoke dereferenceable(8) %"class.std::move_iterator"* @_ZNSt13move_iteratorIPSt4pairIiiEEppEv(%"class.std::move_iterator"* %__first)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %for.inc
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__cur, align 8
  %incdec.ptr = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %2, i32 1
  store %"struct.std::pair"* %incdec.ptr, %"struct.std::pair"** %__cur, align 8
  br label %for.cond

lpad:                                             ; preds = %for.inc, %invoke.cont3, %for.body, %for.cond
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %6 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %__result.addr, align 8
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %__cur, align 8
  invoke void @_ZSt8_DestroyIPSt4pairIiiEEvT_S3_(%"struct.std::pair"* %7, %"struct.std::pair"* %8)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #15
          to label %unreachable unwind label %lpad8

for.end:                                          ; preds = %invoke.cont
  %9 = load %"struct.std::pair"*, %"struct.std::pair"** %__cur, align 8
  ret %"struct.std::pair"* %9

lpad8:                                            ; preds = %invoke.cont9, %catch
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont10 unwind label %terminate.lpad

invoke.cont10:                                    ; preds = %lpad8
  br label %eh.resume

try.cont:                                         ; No predecessors!
  call void @llvm.trap()
  unreachable

eh.resume:                                        ; preds = %invoke.cont10
  %exn11 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn11, 0
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val12

terminate.lpad:                                   ; preds = %lpad8
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #14
  unreachable

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZStneIPSt4pairIiiEEbRKSt13move_iteratorIT_ES7_(%"class.std::move_iterator"* dereferenceable(8) %__x, %"class.std::move_iterator"* dereferenceable(8) %__y) #6 comdat {
entry:
  %__x.addr = alloca %"class.std::move_iterator"*, align 8
  %__y.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %__x, %"class.std::move_iterator"** %__x.addr, align 8
  store %"class.std::move_iterator"* %__y, %"class.std::move_iterator"** %__y.addr, align 8
  %0 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %__x.addr, align 8
  %1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %__y.addr, align 8
  %call = call zeroext i1 @_ZSteqIPSt4pairIiiEEbRKSt13move_iteratorIT_ES7_(%"class.std::move_iterator"* dereferenceable(8) %0, %"class.std::move_iterator"* dereferenceable(8) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructISt4pairIiiEJS1_EEvPT_DpOT0_(%"struct.std::pair"* %__p, %"struct.std::pair"* dereferenceable(8) %__args) #5 comdat {
entry:
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__args.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store %"struct.std::pair"* %__args, %"struct.std::pair"** %__args.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %1 = bitcast %"struct.std::pair"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::pair"*
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %__args.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair"* @_ZSt7forwardISt4pairIiiEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::pair"* dereferenceable(8) %3) #3
  %4 = bitcast %"struct.std::pair"* %2 to i8*
  %5 = bitcast %"struct.std::pair"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZSt11__addressofISt4pairIiiEEPT_RS2_(%"struct.std::pair"* dereferenceable(8) %__r) #5 comdat {
entry:
  %__r.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %__r, %"struct.std::pair"** %__r.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__r.addr, align 8
  ret %"struct.std::pair"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::pair"* @_ZNKSt13move_iteratorIPSt4pairIiiEEdeEv(%"class.std::move_iterator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_current, align 8
  ret %"struct.std::pair"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.std::move_iterator"* @_ZNSt13move_iteratorIPSt4pairIiiEEppEv(%"class.std::move_iterator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %0, i32 1
  store %"struct.std::pair"* %incdec.ptr, %"struct.std::pair"** %_M_current, align 8
  ret %"class.std::move_iterator"* %this1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt4pairIiiEEvT_S3_(%"struct.std::pair"* %__first, %"struct.std::pair"* %__last) #6 comdat {
entry:
  %__first.addr = alloca %"struct.std::pair"*, align 8
  %__last.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %__first, %"struct.std::pair"** %__first.addr, align 8
  store %"struct.std::pair"* %__last, %"struct.std::pair"** %__last.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__first.addr, align 8
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiiEEEvT_S5_(%"struct.std::pair"* %0, %"struct.std::pair"* %1)
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #12

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZSteqIPSt4pairIiiEEbRKSt13move_iteratorIT_ES7_(%"class.std::move_iterator"* dereferenceable(8) %__x, %"class.std::move_iterator"* dereferenceable(8) %__y) #6 comdat {
entry:
  %__x.addr = alloca %"class.std::move_iterator"*, align 8
  %__y.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %__x, %"class.std::move_iterator"** %__x.addr, align 8
  store %"class.std::move_iterator"* %__y, %"class.std::move_iterator"** %__y.addr, align 8
  %0 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %__x.addr, align 8
  %call = call %"struct.std::pair"* @_ZNKSt13move_iteratorIPSt4pairIiiEE4baseEv(%"class.std::move_iterator"* %0)
  %1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %__y.addr, align 8
  %call1 = call %"struct.std::pair"* @_ZNKSt13move_iteratorIPSt4pairIiiEE4baseEv(%"class.std::move_iterator"* %1)
  %cmp = icmp eq %"struct.std::pair"* %call, %call1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNKSt13move_iteratorIPSt4pairIiiEE4baseEv(%"class.std::move_iterator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_current, align 8
  ret %"struct.std::pair"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiiEEEvT_S5_(%"struct.std::pair"* %0, %"struct.std::pair"* %1) #5 comdat align 2 {
entry:
  %.addr = alloca %"struct.std::pair"*, align 8
  %.addr1 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %.addr, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %.addr1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPSt4pairIiiEEC2ES2_(%"class.std::move_iterator"* %this, %"struct.std::pair"* %__i) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  %__i.addr = alloca %"struct.std::pair"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8
  store %"struct.std::pair"* %__i, %"struct.std::pair"** %__i.addr, align 8
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__i.addr, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %_M_current, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE7destroyIS2_EEvPT_(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::pair"* %__p) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt4pairIiiEEE10deallocateERS2_PS1_m(%"class.std::allocator"* dereferenceable(1) %__a, %"struct.std::pair"* %__p, i64 %__n) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* %1, %"struct.std::pair"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::pair"* %__p, i64 %0) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %2 = bitcast %"struct.std::pair"* %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #13

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* dereferenceable(4) %__t) #5 comdat {
entry:
  %__t.addr = alloca i32*, align 8
  store i32* %__t, i32** %__t.addr, align 8
  %0 = load i32*, i32** %__t.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIiiEC2IRiS2_Lb1EEEOT_OT0_(%"struct.std::pair"* %this, i32* dereferenceable(4) %__x, i32* dereferenceable(4) %__y) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  %__x.addr = alloca i32*, align 8
  %__y.addr = alloca i32*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  store i32* %__y, i32** %__y.addr, align 8
  %this1 = load %"struct.std::pair"*, %"struct.std::pair"** %this.addr, align 8
  %0 = bitcast %"struct.std::pair"* %this1 to %"class.std::__pair_base"*
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this1, i32 0, i32 0
  %1 = load i32*, i32** %__x.addr, align 8
  %call = call dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* dereferenceable(4) %1) #3
  %2 = load i32, i32* %call, align 4
  store i32 %2, i32* %first, align 4
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this1, i32 0, i32 1
  %3 = load i32*, i32** %__y.addr, align 8
  %call2 = call dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* dereferenceable(4) %3) #3
  %4 = load i32, i32* %call2, align 4
  store i32 %4, i32* %second, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIbEC2Ev(%"class.std::allocator.4"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %this.addr, align 8
  %this1 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.4"* %this1 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorIbEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKS0_(%"class.std::vector.0"* %this, i64 %__n, %"class.std::allocator.4"* dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  %ref.tmp = alloca i8, align 1
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  store i8 0, i8* %ref.tmp, align 1
  %1 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  call void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(%"class.std::vector.0"* %this1, i64 %0, i8* dereferenceable(1) %ref.tmp, %"class.std::allocator.4"* dereferenceable(1) %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIbED2Ev(%"class.std::allocator.4"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %this.addr, align 8
  %this1 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.4"* %this1 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorIbED2Ev(%"class.__gnu_cxx::new_allocator.5"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(%"class.std::allocator.9"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.9"*, align 8
  store %"class.std::allocator.9"* %this, %"class.std::allocator.9"** %this.addr, align 8
  %this1 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.9"* %this1 to %"class.__gnu_cxx::new_allocator.10"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.10"* %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(%"class.std::vector.7"* %this, i64 %__n, %"class.std::allocator.9"* dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.7"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.9"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator.9"* %__a, %"class.std::allocator.9"** %__a.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base.8"* %0, i64 %1, %"class.std::allocator.9"* dereferenceable(1) %2)
  %3 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm(%"class.std::vector.7"* %this1, i64 %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  %7 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.8"* %7) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiED2Ev(%"class.std::allocator.9"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.9"*, align 8
  store %"class.std::allocator.9"* %this, %"class.std::allocator.9"** %this.addr, align 8
  %this1 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.9"* %this1 to %"class.__gnu_cxx::new_allocator.10"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.10"* %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.0"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Bit_reference", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca %"struct.std::_Bit_iterator", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
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

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN5graph7DFSUtilEiRSt6vectorIbSaIbEERS0_IiSaIiEE(%class.graph* %this, i32 %u, %"class.std::vector.0"* dereferenceable(40) %visited, %"class.std::vector.7"* dereferenceable(24) %parent) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.graph*, align 8
  %u.addr = alloca i32, align 4
  %visited.addr = alloca %"class.std::vector.0"*, align 8
  %parent.addr = alloca %"class.std::vector.7"*, align 8
  %ref.tmp = alloca %"struct.std::_Bit_reference", align 8
  %neighbours = alloca %"class.std::vector.7", align 8
  %i = alloca i32, align 4
  %ref.tmp7 = alloca %"struct.std::_Bit_reference", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.graph* %this, %class.graph** %this.addr, align 8
  store i32 %u, i32* %u.addr, align 4
  store %"class.std::vector.0"* %visited, %"class.std::vector.0"** %visited.addr, align 8
  store %"class.std::vector.7"* %parent, %"class.std::vector.7"** %parent.addr, align 8
  %this1 = load %class.graph*, %class.graph** %this.addr, align 8
  %0 = load %"class.std::vector.0"*, %"class.std::vector.0"** %visited.addr, align 8
  %1 = load i32, i32* %u.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.0"* %0, i64 %conv)
  %2 = bitcast %"struct.std::_Bit_reference"* %ref.tmp to { i64*, i64 }*
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 0
  %4 = extractvalue { i64*, i64 } %call, 0
  store i64* %4, i64** %3, align 8
  %5 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 1
  %6 = extractvalue { i64*, i64 } %call, 1
  store i64 %6, i64* %5, align 8
  %call2 = call dereferenceable(16) %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %ref.tmp, i1 zeroext true) #3
  %7 = load i32, i32* %u.addr, align 4
  %call3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %7)
  %call4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %8 = load i32, i32* %u.addr, align 4
  call void @_ZN5graph13getNeighboursEi(%"class.std::vector.7"* sret %neighbours, %class.graph* %this1, i32 %8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %conv5 = sext i32 %9 to i64
  %call6 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.7"* %neighbours) #3
  %cmp = icmp ult i64 %conv5, %call6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %"class.std::vector.0"*, %"class.std::vector.0"** %visited.addr, align 8
  %11 = load i32, i32* %i, align 4
  %conv8 = sext i32 %11 to i64
  %call9 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.7"* %neighbours, i64 %conv8) #3
  %12 = load i32, i32* %call9, align 4
  %conv10 = sext i32 %12 to i64
  %call11 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.0"* %10, i64 %conv10)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  %13 = bitcast %"struct.std::_Bit_reference"* %ref.tmp7 to { i64*, i64 }*
  %14 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %13, i32 0, i32 0
  %15 = extractvalue { i64*, i64 } %call11, 0
  store i64* %15, i64** %14, align 8
  %16 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %13, i32 0, i32 1
  %17 = extractvalue { i64*, i64 } %call11, 1
  store i64 %17, i64* %16, align 8
  %call12 = call zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %ref.tmp7) #3
  %lnot = xor i1 %call12, true
  br i1 %lnot, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %18 = load i32, i32* %u.addr, align 4
  %19 = load %"class.std::vector.7"*, %"class.std::vector.7"** %parent.addr, align 8
  %20 = load i32, i32* %i, align 4
  %conv13 = sext i32 %20 to i64
  %call14 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.7"* %neighbours, i64 %conv13) #3
  %21 = load i32, i32* %call14, align 4
  %conv15 = sext i32 %21 to i64
  %call16 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.7"* %19, i64 %conv15) #3
  store i32 %18, i32* %call16, align 4
  %22 = load i32, i32* %i, align 4
  %conv17 = sext i32 %22 to i64
  %call18 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.7"* %neighbours, i64 %conv17) #3
  %23 = load i32, i32* %call18, align 4
  %24 = load %"class.std::vector.0"*, %"class.std::vector.0"** %visited.addr, align 8
  %25 = load %"class.std::vector.7"*, %"class.std::vector.7"** %parent.addr, align 8
  invoke void @_ZN5graph7DFSUtilEiRSt6vectorIbSaIbEERS0_IiSaIiEE(%class.graph* %this1, i32 %23, %"class.std::vector.0"* dereferenceable(40) %24, %"class.std::vector.7"* dereferenceable(24) %25)
          to label %invoke.cont19 unwind label %lpad

invoke.cont19:                                    ; preds = %if.then
  br label %if.end

lpad:                                             ; preds = %if.then, %for.body
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %exn.slot, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %ehselector.slot, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.7"* %neighbours) #3
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont19, %invoke.cont
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.7"* %neighbours) #3
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.7"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.7"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish, align 8
  %4 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %call = call dereferenceable(1) %"class.std::allocator.9"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.8"* %4) #3
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %1, i32* %3, %"class.std::allocator.9"* dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.8"* %5) #3
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.8"* %9) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #14
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.0"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIbEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"*, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(%"class.std::vector.0"* %this, i64 %__n, i8* dereferenceable(1) %__value, %"class.std::allocator.4"* dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca i32, align 4
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__value, i8** %__value.addr, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
  %1 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  call void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(%"struct.std::_Bvector_base"* %0, %"class.std::allocator.4"* dereferenceable(1) %1)
  %2 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(%"class.std::vector.0"* %this1, i64 %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %3, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl, i32 0, i32 0
  %4 = bitcast %"struct.std::_Bit_iterator"* %_M_start to %"struct.std::_Bit_iterator_base"*
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %4, i32 0, i32 0
  %5 = load i64*, i64** %_M_p, align 8
  %6 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
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
  %13 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %13) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(%"struct.std::_Bvector_base"* %this, %"class.std::allocator.4"* dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Bvector_base"*, align 8
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  %ref.tmp = alloca %"class.std::allocator.1", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %this.addr, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  %this1 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  call void @_ZNSaImEC2IbEERKSaIT_E(%"class.std::allocator.1"* %ref.tmp, %"class.std::allocator.4"* dereferenceable(1) %0) #3
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOSaImE(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl, %"class.std::allocator.1"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaImED2Ev(%"class.std::allocator.1"* %ref.tmp) #3
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSaImED2Ev(%"class.std::allocator.1"* %ref.tmp) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(%"class.std::vector.0"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  %__q = alloca i64*, align 8
  %ref.tmp = alloca %"struct.std::_Bit_iterator", align 8
  %ref.tmp7 = alloca %"struct.std::_Bit_iterator", align 8
  %ref.tmp10 = alloca %"struct.std::_Bit_iterator", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(%"struct.std::_Bvector_base"* %1, i64 %2)
  store i64* %call, i64** %__q, align 8
  %3 = load i64*, i64** %__q, align 8
  %4 = load i64, i64* %__n.addr, align 8
  %call2 = call i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 %4)
  %add.ptr = getelementptr inbounds i64, i64* %3, i64 %call2
  %5 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %5, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl, i32 0, i32 2
  store i64* %add.ptr, i64** %_M_end_of_storage, align 8
  %6 = load i64*, i64** %__q, align 8
  %call3 = call i64* @_ZSt11__addressofImEPT_RS0_(i64* dereferenceable(8) %6) #3
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %ref.tmp, i64* %call3, i32 0)
  %7 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %7, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl4, i32 0, i32 0
  %8 = bitcast %"struct.std::_Bit_iterator"* %_M_start to i8*
  %9 = bitcast %"struct.std::_Bit_iterator"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 12, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl5 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %10, i32 0, i32 0
  %_M_end_of_storage6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl5, i32 0, i32 2
  store i64* null, i64** %_M_end_of_storage6, align 8
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %ref.tmp7, i64* null, i32 0)
  %11 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %11, i32 0, i32 0
  %_M_start9 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl8, i32 0, i32 0
  %12 = bitcast %"struct.std::_Bit_iterator"* %_M_start9 to i8*
  %13 = bitcast %"struct.std::_Bit_iterator"* %ref.tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 12, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
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
  %21 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Bvector_base"*
  %_M_impl14 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %21, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl14, i32 0, i32 1
  %22 = bitcast %"struct.std::_Bit_iterator"* %_M_finish to i8*
  %23 = bitcast %"struct.std::_Bit_iterator"* %ref.tmp10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 12, i1 false)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt4fillIPmiEvT_S1_RKT0_(i64* %__first, i64* %__last, i32* dereferenceable(4) %__value) #6 comdat {
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
  call void @__cxa_call_unexpected(i8* %exn) #15
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaImEC2IbEERKSaIT_E(%"class.std::allocator.1"* %this, %"class.std::allocator.4"* dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.1"*, align 8
  %.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.1"* %this, %"class.std::allocator.1"** %this.addr, align 8
  store %"class.std::allocator.4"* %0, %"class.std::allocator.4"** %.addr, align 8
  %this1 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %this.addr, align 8
  %1 = bitcast %"class.std::allocator.1"* %this1 to %"class.__gnu_cxx::new_allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator.2"* %1) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOSaImE(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this, %"class.std::allocator.1"* dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.1"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %this.addr, align 8
  store %"class.std::allocator.1"* %__a, %"class.std::allocator.1"** %__a.addr, align 8
  %this1 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this1 to %"class.std::allocator.1"*
  %1 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %__a.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator.1"* @_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_(%"class.std::allocator.1"* dereferenceable(1) %1) #3
  call void @_ZNSaImEC2ERKS_(%"class.std::allocator.1"* %0, %"class.std::allocator.1"* dereferenceable(1) %call) #3
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
  %5 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this1 to %"class.std::allocator.1"*
  call void @_ZNSaImED2Ev(%"class.std::allocator.1"* %5) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaImED2Ev(%"class.std::allocator.1"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.1"*, align 8
  store %"class.std::allocator.1"* %this, %"class.std::allocator.1"** %this.addr, align 8
  %this1 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.1"* %this1 to %"class.__gnu_cxx::new_allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator.2"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator.2"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator.1"* @_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_(%"class.std::allocator.1"* dereferenceable(1) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::allocator.1"*, align 8
  store %"class.std::allocator.1"* %__t, %"class.std::allocator.1"** %__t.addr, align 8
  %0 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %__t.addr, align 8
  ret %"class.std::allocator.1"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaImEC2ERKS_(%"class.std::allocator.1"* %this, %"class.std::allocator.1"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.1"*, align 8
  %__a.addr = alloca %"class.std::allocator.1"*, align 8
  store %"class.std::allocator.1"* %this, %"class.std::allocator.1"** %this.addr, align 8
  store %"class.std::allocator.1"* %__a, %"class.std::allocator.1"** %__a.addr, align 8
  %this1 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.1"* %this1 to %"class.__gnu_cxx::new_allocator.2"*
  %1 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator.1"* %1 to %"class.__gnu_cxx::new_allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.__gnu_cxx::new_allocator.2"* %0, %"class.__gnu_cxx::new_allocator.2"* dereferenceable(1) %2) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Bit_iterator"* %this1 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %0, i64* null, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"* dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %0, %"class.__gnu_cxx::new_allocator.2"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
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
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator.2"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(%"struct.std::_Bvector_base"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bvector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl to %"class.std::allocator.1"*
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 %1)
  %call2 = call i64* @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%"class.std::allocator.1"* dereferenceable(1) %0, i64 %call)
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
define linkonce_odr dso_local { i64*, i32 } @_ZNKSt13_Bit_iteratorplEl(%"struct.std::_Bit_iterator"* %this, i64 %__i) #6 comdat align 2 {
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
define linkonce_odr dso_local i64* @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%"class.std::allocator.1"* dereferenceable(1) %__a, i64 %__n) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.1"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.1"* %__a, %"class.std::allocator.1"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.1"* %0 to %"class.__gnu_cxx::new_allocator.2"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.2"* %1, i64 %2, i8* null)
  ret i64* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.2"* %this, i64 %__n, i8* %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator.2"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to i64*
  ret i64* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator.2"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorpLEl(%"struct.std::_Bit_iterator"* %this, i64 %__i) #6 comdat align 2 {
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
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(%"struct.std::_Bvector_base"* %this) #6 comdat align 2 {
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
  %4 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl6 to %"class.std::allocator.1"*
  %_M_impl7 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %_M_impl7, i32 0, i32 2
  %5 = load i64*, i64** %_M_end_of_storage, align 8
  %6 = load i64, i64* %__n, align 8
  %idx.neg = sub i64 0, %6
  %add.ptr = getelementptr inbounds i64, i64* %5, i64 %idx.neg
  %7 = load i64, i64* %__n, align 8
  call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%"class.std::allocator.1"* dereferenceable(1) %4, i64* %add.ptr, i64 %7)
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
  %0 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this1 to %"class.std::allocator.1"*
  call void @_ZNSaImED2Ev(%"class.std::allocator.1"* %0) #3
  ret void
}

declare dso_local void @__cxa_call_unexpected(i8*)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%"class.std::allocator.1"* dereferenceable(1) %__a, i64* %__p, i64 %__n) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.1"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.1"* %__a, %"class.std::allocator.1"** %__a.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.1"* %0 to %"class.__gnu_cxx::new_allocator.2"*
  %2 = load i64*, i64** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator.2"* %1, i64* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator.2"* %this, i64* %__p, i64 %0) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %__p.addr = alloca i64*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  %1 = load i64*, i64** %__p.addr, align 8
  %2 = bitcast i64* %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIbED2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"*, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.10"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.10"*, align 8
  store %"class.__gnu_cxx::new_allocator.10"* %this, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.10"*, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base.8"* %this, i64 %__n, %"class.std::allocator.9"* dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.8"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.9"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base.8"* %this, %"struct.std::_Vector_base.8"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator.9"* %__a, %"class.std::allocator.9"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base.8"*, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, %"class.std::allocator.9"* dereferenceable(1) %0) #3
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base.8"* %this1, i64 %1)
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
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm(%"class.std::vector.7"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.7"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %call = call dereferenceable(1) %"class.std::allocator.9"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.8"* %3) #3
  %call2 = call i32* @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(i32* %1, i64 %2, %"class.std::allocator.9"* dereferenceable(1) %call)
  %4 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %4, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl3, i32 0, i32 1
  store i32* %call2, i32** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.8"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.8"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base.8"* %this, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.8"*, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load i32*, i32** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load i32*, i32** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load i32*, i32** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.8"* %this1, i32* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl5) #3
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl6) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #14
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"class.std::allocator.9"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.9"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  store %"class.std::allocator.9"* %__a, %"class.std::allocator.9"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1 to %"class.std::allocator.9"*
  %1 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__a.addr, align 8
  call void @_ZNSaIiEC2ERKS_(%"class.std::allocator.9"* %0, %"class.std::allocator.9"* dereferenceable(1) %1) #3
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 0
  store i32* null, i32** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 1
  store i32* null, i32** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 2
  store i32* null, i32** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base.8"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.8"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.8"* %this, %"struct.std::_Vector_base.8"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.8"*, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.8"* %this1, i64 %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  store i32* %call, i32** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %1 = load i32*, i32** %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  store i32* %1, i32** %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl5, i32 0, i32 0
  %2 = load i32*, i32** %_M_start6, align 8
  %3 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl7, i32 0, i32 2
  store i32* %add.ptr, i32** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1 to %"class.std::allocator.9"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.9"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(%"class.std::allocator.9"* %this, %"class.std::allocator.9"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.9"*, align 8
  %__a.addr = alloca %"class.std::allocator.9"*, align 8
  store %"class.std::allocator.9"* %this, %"class.std::allocator.9"** %this.addr, align 8
  store %"class.std::allocator.9"* %__a, %"class.std::allocator.9"** %__a.addr, align 8
  %this1 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.9"* %this1 to %"class.__gnu_cxx::new_allocator.10"*
  %1 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator.9"* %1 to %"class.__gnu_cxx::new_allocator.10"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator.10"* %0, %"class.__gnu_cxx::new_allocator.10"* dereferenceable(1) %2) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator.10"* %this, %"class.__gnu_cxx::new_allocator.10"* dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.10"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator.10"*, align 8
  store %"class.__gnu_cxx::new_allocator.10"* %this, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator.10"* %0, %"class.__gnu_cxx::new_allocator.10"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.10"*, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.8"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.8"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.8"* %this, %"struct.std::_Vector_base.8"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.8"*, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator.9"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.9"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %call, %cond.true ], [ null, %cond.false ]
  ret i32* %cond
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.9"* dereferenceable(1) %__a, i64 %__n) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.9"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.9"* %__a, %"class.std::allocator.9"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.9"* %0 to %"class.__gnu_cxx::new_allocator.10"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.10"* %1, i64 %2, i8* null)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.10"* %this, i64 %__n, i8* %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.10"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.10"* %this, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.10"*, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.10"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 4
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to i32*
  ret i32* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.10"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.10"*, align 8
  store %"class.__gnu_cxx::new_allocator.10"* %this, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.10"*, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  ret i64 4611686018427387903
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.10"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.10"*, align 8
  store %"class.__gnu_cxx::new_allocator.10"* %this, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.10"*, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(i32* %__first, i64 %__n, %"class.std::allocator.9"* dereferenceable(1) %0) #6 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca %"class.std::allocator.9"*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator.9"* %0, %"class.std::allocator.9"** %.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZSt25__uninitialized_default_nIPimET_S1_T0_(i32* %1, i64 %2)
  ret i32* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator.9"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.8"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.8"*, align 8
  store %"struct.std::_Vector_base.8"* %this, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.8"*, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator.9"*
  ret %"class.std::allocator.9"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt25__uninitialized_default_nIPimET_S1_T0_(i32* %__first, i64 %__n) #6 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__assignable = alloca i8, align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(i32* %0, i64 %1)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(i32* %__first, i64 %__n) #6 comdat align 2 {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca i32, align 4
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  store i32 0, i32* %ref.tmp, align 4
  %call = call i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %0, i64 %1, i32* dereferenceable(4) %ref.tmp)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* dereferenceable(4) %__value) #6 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %0)
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i32*, i32** %__value.addr, align 8
  %call1 = call i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %call, i64 %1, i32* dereferenceable(4) %2)
  ret i32* %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %__first, i64 %__n, i32* dereferenceable(4) %__value) #5 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  %__tmp = alloca i32, align 4
  %__niter = alloca i64, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = load i32*, i32** %__value.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %__tmp, align 4
  %2 = load i64, i64* %__n.addr, align 8
  store i64 %2, i64* %__niter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %__niter, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %__tmp, align 4
  %5 = load i32*, i32** %__first.addr, align 8
  store i32 %4, i32* %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %__niter, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %__niter, align 8
  %7 = load i32*, i32** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %incdec.ptr, i32** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32*, i32** %__first.addr, align 8
  ret i32* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__it) #5 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.8"* %this, i32* %__p, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.8"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.8"* %this, %"struct.std::_Vector_base.8"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.8"*, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator.9"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.9"* dereferenceable(1) %1, i32* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.9"* dereferenceable(1) %__a, i32* %__p, i64 %__n) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.9"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.9"* %__a, %"class.std::allocator.9"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.9"* %0 to %"class.__gnu_cxx::new_allocator.10"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.10"* %1, i32* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.10"* %this, i32* %__p, i64 %0) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.10"*, align 8
  %__p.addr = alloca i32*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.10"* %this, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.10"*, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  %1 = load i32*, i32** %__p.addr, align 8
  %2 = bitcast i32* %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %this) #6 comdat align 2 {
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

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN5graph13getNeighboursEi(%"class.std::vector.7"* noalias sret %agg.result, %class.graph* %this, i32 %u) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %class.graph*, align 8
  %u.addr = alloca i32, align 4
  %nrvo = alloca i1, align 1
  %i = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %0 = bitcast %"class.std::vector.7"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %class.graph* %this, %class.graph** %this.addr, align 8
  store i32 %u, i32* %u.addr, align 4
  %this1 = load %class.graph*, %class.graph** %this.addr, align 8
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.7"* %agg.result) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %numberOfVertices = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 0
  %2 = load i32, i32* %numberOfVertices, align 8
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %u.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %u.addr, align 4
  %6 = load i32, i32* %i, align 4
  %call = invoke zeroext i1 @_ZN5graph6isEdgeEii(%class.graph* %this1, i32 %5, i32 %6)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  br i1 %call, label %if.then3, label %if.end5

if.then3:                                         ; preds = %invoke.cont
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.7"* %agg.result, i32* dereferenceable(4) %i)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %if.then3
  br label %if.end5

lpad:                                             ; preds = %if.then3, %if.end
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.7"* %agg.result) #3
  br label %eh.resume

if.end5:                                          ; preds = %invoke.cont4, %invoke.cont
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %if.then
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %for.end
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.7"* %agg.result) #3
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.7"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load i32*, i32** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.7"* %this, i64 %__n) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.7"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %0, i32 0, i32 0
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
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.7"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.8"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #14
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN5graph6isEdgeEii(%class.graph* %this, i32 %u, i32 %v) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.graph*, align 8
  %u.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp6 = alloca %"struct.std::pair", align 4
  %ref.tmp12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp17 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp18 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp22 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp26 = alloca %"struct.std::pair", align 4
  %ref.tmp32 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %class.graph* %this, %class.graph** %this.addr, align 8
  store i32 %u, i32* %u.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  %this1 = load %class.graph*, %class.graph** %this.addr, align 8
  %edges = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 1
  %call = call %"struct.std::pair"* @_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv(%"class.std::vector"* %edges) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::pair"* %call, %"struct.std::pair"** %coerce.dive, align 8
  %edges3 = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 1
  %call4 = call %"struct.std::pair"* @_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv(%"class.std::vector"* %edges3) #3
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  store %"struct.std::pair"* %call4, %"struct.std::pair"** %coerce.dive5, align 8
  %call7 = call i64 @_ZSt9make_pairIRiS0_ESt4pairINSt17__decay_and_stripIT_E6__typeENS2_IT0_E6__typeEEOS3_OS6_(i32* dereferenceable(4) %u.addr, i32* dereferenceable(4) %v.addr)
  %0 = bitcast %"struct.std::pair"* %ref.tmp6 to i64*
  store i64 %call7, i64* %0, align 4
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive9, align 8
  %call10 = call %"struct.std::pair"* @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_(%"struct.std::pair"* %1, %"struct.std::pair"* %2, %"struct.std::pair"* dereferenceable(8) %ref.tmp6)
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::pair"* %call10, %"struct.std::pair"** %coerce.dive11, align 8
  %edges13 = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 1
  %call14 = call %"struct.std::pair"* @_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv(%"class.std::vector"* %edges13) #3
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp12, i32 0, i32 0
  store %"struct.std::pair"* %call14, %"struct.std::pair"** %coerce.dive15, align 8
  %call16 = call zeroext i1 @_ZN9__gnu_cxxneIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp12) #3
  br i1 %call16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %edges19 = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 1
  %call20 = call %"struct.std::pair"* @_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv(%"class.std::vector"* %edges19) #3
  %coerce.dive21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp18, i32 0, i32 0
  store %"struct.std::pair"* %call20, %"struct.std::pair"** %coerce.dive21, align 8
  %edges23 = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 1
  %call24 = call %"struct.std::pair"* @_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv(%"class.std::vector"* %edges23) #3
  %coerce.dive25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp22, i32 0, i32 0
  store %"struct.std::pair"* %call24, %"struct.std::pair"** %coerce.dive25, align 8
  %call27 = call i64 @_ZSt9make_pairIRiS0_ESt4pairINSt17__decay_and_stripIT_E6__typeENS2_IT0_E6__typeEEOS3_OS6_(i32* dereferenceable(4) %v.addr, i32* dereferenceable(4) %u.addr)
  %3 = bitcast %"struct.std::pair"* %ref.tmp26 to i64*
  store i64 %call27, i64* %3, align 4
  %coerce.dive28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp18, i32 0, i32 0
  %4 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive28, align 8
  %coerce.dive29 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp22, i32 0, i32 0
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive29, align 8
  %call30 = call %"struct.std::pair"* @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_(%"struct.std::pair"* %4, %"struct.std::pair"* %5, %"struct.std::pair"* dereferenceable(8) %ref.tmp26)
  %coerce.dive31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp17, i32 0, i32 0
  store %"struct.std::pair"* %call30, %"struct.std::pair"** %coerce.dive31, align 8
  %edges33 = getelementptr inbounds %class.graph, %class.graph* %this1, i32 0, i32 1
  %call34 = call %"struct.std::pair"* @_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv(%"class.std::vector"* %edges33) #3
  %coerce.dive35 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp32, i32 0, i32 0
  store %"struct.std::pair"* %call34, %"struct.std::pair"** %coerce.dive35, align 8
  %call36 = call zeroext i1 @_ZN9__gnu_cxxneIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp17, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp32) #3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %call36, %lor.rhs ]
  ret i1 %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.7"* %this, i32* dereferenceable(4) %__x) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.7"*, align 8
  %__x.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.12", align 8
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load i32*, i32** %_M_end_of_storage, align 8
  %cmp = icmp ne i32* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator.9"*
  %6 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load i32*, i32** %_M_finish5, align 8
  %8 = load i32*, i32** %__x.addr, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.9"* dereferenceable(1) %5, i32* %7, i32* dereferenceable(4) %8)
  %9 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load i32*, i32** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector.7"* %this1) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.12", %"class.__gnu_cxx::__normal_iterator.12"* %agg.tmp, i32 0, i32 0
  store i32* %call, i32** %coerce.dive, align 8
  %11 = load i32*, i32** %__x.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.12", %"class.__gnu_cxx::__normal_iterator.12"* %agg.tmp, i32 0, i32 0
  %12 = load i32*, i32** %coerce.dive8, align 8
  call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector.7"* %this1, i32* %12, i32* dereferenceable(4) %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.8"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.8"*, align 8
  store %"struct.std::_Vector_base.8"* %this, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.8"*, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1 to %"class.std::allocator.9"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.9"* %0) #3
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 0
  store i32* null, i32** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 1
  store i32* null, i32** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 2
  store i32* null, i32** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxneIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #5 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #3
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %"struct.std::pair"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #3
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %call1, align 8
  %cmp = icmp ne %"struct.std::pair"* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_(%"struct.std::pair"* %__first.coerce, %"struct.std::pair"* %__last.coerce, %"struct.std::pair"* dereferenceable(8) %__val) #6 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__val.addr = alloca %"struct.std::pair"*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair"* %__first.coerce, %"struct.std::pair"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair"* %__last.coerce, %"struct.std::pair"** %coerce.dive1, align 8
  store %"struct.std::pair"* %__val, %"struct.std::pair"** %__val.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %4 = load %"struct.std::pair"*, %"struct.std::pair"** %__val.addr, align 8
  %call = call %"struct.std::pair"* @_ZN9__gnu_cxx5__ops17__iter_equals_valIKSt4pairIiiEEENS0_16_Iter_equals_valIT_EERS6_(%"struct.std::pair"* dereferenceable(8) %4)
  %coerce.dive4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %agg.tmp3, i32 0, i32 0
  store %"struct.std::pair"* %call, %"struct.std::pair"** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %agg.tmp3, i32 0, i32 0
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive7, align 8
  %call8 = call %"struct.std::pair"* @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_(%"struct.std::pair"* %5, %"struct.std::pair"* %6, %"struct.std::pair"* %7)
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  store %"struct.std::pair"* %call8, %"struct.std::pair"** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive10, align 8
  ret %"struct.std::pair"* %8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_(%"struct.std::pair"* %__first.coerce, %"struct.std::pair"* %__last.coerce, %"struct.std::pair"* %__pred.coerce) #6 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__pred = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %agg.tmp5 = alloca %"struct.std::random_access_iterator_tag", align 1
  %undef.agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair"* %__first.coerce, %"struct.std::pair"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair"* %__last.coerce, %"struct.std::pair"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, i32 0, i32 0
  store %"struct.std::pair"* %__pred.coerce, %"struct.std::pair"** %coerce.dive2, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %agg.tmp4 to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 8, i1 false)
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %agg.tmp4, i32 0, i32 0
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive8, align 8
  %call = call %"struct.std::pair"* @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(%"struct.std::pair"* %6, %"struct.std::pair"* %7, %"struct.std::pair"* %8)
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  store %"struct.std::pair"* %call, %"struct.std::pair"** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %9 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive10, align 8
  ret %"struct.std::pair"* %9
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZN9__gnu_cxx5__ops17__iter_equals_valIKSt4pairIiiEEENS0_16_Iter_equals_valIT_EERS6_(%"struct.std::pair"* dereferenceable(8) %__val) #6 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %__val.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %__val, %"struct.std::pair"** %__val.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__val.addr, align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEC2ERS4_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %retval, %"struct.std::pair"* dereferenceable(8) %0)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %retval, i32 0, i32 0
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive, align 8
  ret %"struct.std::pair"* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(%"struct.std::pair"* %__first.coerce, %"struct.std::pair"* %__last.coerce, %"struct.std::pair"* %__pred.coerce) #6 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__pred = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %0 = alloca %"struct.std::random_access_iterator_tag", align 1
  %__trip_count = alloca i64, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp18 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp25 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp32 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp39 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair"* %__first.coerce, %"struct.std::pair"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair"* %__last.coerce, %"struct.std::pair"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, i32 0, i32 0
  store %"struct.std::pair"* %__pred.coerce, %"struct.std::pair"** %coerce.dive2, align 8
  %call = call i64 @_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first) #3
  %shr = ashr i64 %call, 2
  store i64 %shr, i64* %__trip_count, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %__trip_count, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive3, align 8
  %call4 = call zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, %"struct.std::pair"* %4)
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 8, i1 false)
  br label %return

if.end:                                           ; preds = %for.body
  %call5 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #3
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6 to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 8, i1 false)
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6, i32 0, i32 0
  %9 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive7, align 8
  %call8 = call zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, %"struct.std::pair"* %9)
  br i1 %call8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  br label %return

if.end10:                                         ; preds = %if.end
  %call11 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #3
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12 to i8*
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12, i32 0, i32 0
  %14 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive13, align 8
  %call14 = call zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, %"struct.std::pair"* %14)
  br i1 %call14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  br label %return

if.end16:                                         ; preds = %if.end10
  %call17 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #3
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp18 to i8*
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %coerce.dive19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp18, i32 0, i32 0
  %19 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive19, align 8
  %call20 = call zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, %"struct.std::pair"* %19)
  br i1 %call20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %21 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  br label %return

if.end22:                                         ; preds = %if.end16
  %call23 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %22 = load i64, i64* %__trip_count, align 8
  %dec = add nsw i64 %22, -1
  store i64 %dec, i64* %__trip_count, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call24 = call i64 @_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first) #3
  switch i64 %call24, label %sw.default [
    i64 3, label %sw.bb
    i64 2, label %sw.bb31
    i64 1, label %sw.bb38
    i64 0, label %sw.bb45
  ]

sw.bb:                                            ; preds = %for.end
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp25 to i8*
  %24 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  %coerce.dive26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp25, i32 0, i32 0
  %25 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive26, align 8
  %call27 = call zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, %"struct.std::pair"* %25)
  br i1 %call27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %sw.bb
  %26 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %27 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 8, i1 false)
  br label %return

if.end29:                                         ; preds = %sw.bb
  %call30 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #3
  br label %sw.bb31

sw.bb31:                                          ; preds = %for.end, %if.end29
  %28 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp32 to i8*
  %29 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  %coerce.dive33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp32, i32 0, i32 0
  %30 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive33, align 8
  %call34 = call zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, %"struct.std::pair"* %30)
  br i1 %call34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %sw.bb31
  %31 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %32 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  br label %return

if.end36:                                         ; preds = %sw.bb31
  %call37 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #3
  br label %sw.bb38

sw.bb38:                                          ; preds = %for.end, %if.end36
  %33 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp39 to i8*
  %34 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %coerce.dive40 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp39, i32 0, i32 0
  %35 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive40, align 8
  %call41 = call zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, %"struct.std::pair"* %35)
  br i1 %call41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %sw.bb38
  %36 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %37 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  br label %return

if.end43:                                         ; preds = %sw.bb38
  %call44 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #3
  br label %sw.bb45

sw.bb45:                                          ; preds = %for.end, %if.end43
  br label %sw.default

sw.default:                                       ; preds = %for.end, %sw.bb45
  %38 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %39 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  br label %return

return:                                           ; preds = %sw.default, %if.then42, %if.then35, %if.then28, %if.then21, %if.then15, %if.then9, %if.then
  %coerce.dive46 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %40 = load %"struct.std::pair"*, %"struct.std::pair"** %coerce.dive46, align 8
  ret %"struct.std::pair"* %40
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %0) #5 comdat {
entry:
  %.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this, %"struct.std::pair"* %__it.coerce) #6 comdat align 2 {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val"*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store %"struct.std::pair"* %__it.coerce, %"struct.std::pair"** %coerce.dive, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_equals_val"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_equals_val"*, %"struct.__gnu_cxx::__ops::_Iter_equals_val"** %this.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it) #3
  %_M_value = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_value, align 8
  %call2 = call zeroext i1 @_ZSteqIiiEbRKSt4pairIT_T0_ES5_(%"struct.std::pair"* dereferenceable(8) %call, %"struct.std::pair"* dereferenceable(8) %0)
  ret i1 %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %0, i32 1
  store %"struct.std::pair"* %incdec.ptr, %"struct.std::pair"** %_M_current, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZSteqIiiEbRKSt4pairIT_T0_ES5_(%"struct.std::pair"* dereferenceable(8) %__x, %"struct.std::pair"* dereferenceable(8) %__y) #5 comdat {
entry:
  %__x.addr = alloca %"struct.std::pair"*, align 8
  %__y.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %__x.addr, align 8
  store %"struct.std::pair"* %__y, %"struct.std::pair"** %__y.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__x.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %0, i32 0, i32 0
  %1 = load i32, i32* %first, align 4
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__y.addr, align 8
  %first1 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %2, i32 0, i32 0
  %3 = load i32, i32* %first1, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %"struct.std::pair"*, %"struct.std::pair"** %__x.addr, align 8
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %4, i32 0, i32 1
  %5 = load i32, i32* %second, align 4
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %__y.addr, align 8
  %second2 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %6, i32 0, i32 1
  %7 = load i32, i32* %second2, align 4
  %cmp3 = icmp eq i32 %5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::pair"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_current, align 8
  ret %"struct.std::pair"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIiiEEC2ERS4_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this, %"struct.std::pair"* dereferenceable(8) %__value) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val"*, align 8
  %__value.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_equals_val"** %this.addr, align 8
  store %"struct.std::pair"* %__value, %"struct.std::pair"** %__value.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_equals_val"*, %"struct.__gnu_cxx::__ops::_Iter_equals_val"** %this.addr, align 8
  %_M_value = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__value.addr, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %_M_value, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.9"* dereferenceable(1) %__a, i32* %__p, i32* dereferenceable(4) %__args) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.9"*, align 8
  %__p.addr = alloca i32*, align 8
  %__args.addr = alloca i32*, align 8
  store %"class.std::allocator.9"* %__a, %"class.std::allocator.9"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i32* %__args, i32** %__args.addr, align 8
  %0 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.9"* %0 to %"class.__gnu_cxx::new_allocator.10"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i32*, i32** %__args.addr, align 8
  %call = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %3) #3
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.10"* %1, i32* %2, i32* dereferenceable(4) %call)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector.7"* %this, i32* %__position.coerce, i32* dereferenceable(4) %__args) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.12", align 8
  %this.addr = alloca %"class.std::vector.7"*, align 8
  %__args.addr = alloca i32*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.12", align 8
  %__new_start = alloca i32*, align 8
  %__new_finish = alloca i32*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.12", %"class.__gnu_cxx::__normal_iterator.12"* %__position, i32 0, i32 0
  store i32* %__position.coerce, i32** %coerce.dive, align 8
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  store i32* %__args, i32** %__args.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.7"* %this1, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i64 %call, i64* %__len, align 8
  %call2 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.7"* %this1) #3
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.12", %"class.__gnu_cxx::__normal_iterator.12"* %ref.tmp, i32 0, i32 0
  store i32* %call2, i32** %coerce.dive3, align 8
  %call4 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator.12"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator.12"* dereferenceable(8) %ref.tmp) #3
  store i64 %call4, i64* %__elems_before, align 8
  %0 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %1 = load i64, i64* %__len, align 8
  %call5 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.8"* %0, i64 %1)
  store i32* %call5, i32** %__new_start, align 8
  %2 = load i32*, i32** %__new_start, align 8
  store i32* %2, i32** %__new_finish, align 8
  %3 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator.9"*
  %5 = load i32*, i32** %__new_start, align 8
  %6 = load i64, i64* %__elems_before, align 8
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %6
  %7 = load i32*, i32** %__args.addr, align 8
  %call6 = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %7) #3
  invoke void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.9"* dereferenceable(1) %4, i32* %add.ptr, i32* dereferenceable(4) %call6)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i32* null, i32** %__new_finish, align 8
  %8 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %8, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl7, i32 0, i32 0
  %9 = load i32*, i32** %_M_start, align 8
  %call8 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.12"* %__position) #3
  %10 = load i32*, i32** %call8, align 8
  %11 = load i32*, i32** %__new_start, align 8
  %12 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %call9 = call dereferenceable(1) %"class.std::allocator.9"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.8"* %12) #3
  %call11 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %9, i32* %10, i32* %11, %"class.std::allocator.9"* dereferenceable(1) %call9)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont
  store i32* %call11, i32** %__new_finish, align 8
  %13 = load i32*, i32** %__new_finish, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %incdec.ptr, i32** %__new_finish, align 8
  %call12 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.12"* %__position) #3
  %14 = load i32*, i32** %call12, align 8
  %15 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %15, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %16 = load i32*, i32** %_M_finish, align 8
  %17 = load i32*, i32** %__new_finish, align 8
  %18 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %call14 = call dereferenceable(1) %"class.std::allocator.9"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.8"* %18) #3
  %call16 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %14, i32* %16, i32* %17, %"class.std::allocator.9"* dereferenceable(1) %call14)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont10
  store i32* %call16, i32** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont10, %invoke.cont, %entry
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %exn.slot, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %22 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %23 = load i32*, i32** %__new_finish, align 8
  %tobool = icmp ne i32* %23, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %catch
  %24 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %24, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl17 to %"class.std::allocator.9"*
  %26 = load i32*, i32** %__new_start, align 8
  %27 = load i64, i64* %__elems_before, align 8
  %add.ptr18 = getelementptr inbounds i32, i32* %26, i64 %27
  invoke void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator.9"* dereferenceable(1) %25, i32* %add.ptr18)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %if.then
  br label %if.end

lpad19:                                           ; preds = %invoke.cont23, %if.end, %if.else, %if.then
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %exn.slot, align 8
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont24 unwind label %terminate.lpad

if.else:                                          ; preds = %catch
  %31 = load i32*, i32** %__new_start, align 8
  %32 = load i32*, i32** %__new_finish, align 8
  %33 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %call21 = call dereferenceable(1) %"class.std::allocator.9"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.8"* %33) #3
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %31, i32* %32, %"class.std::allocator.9"* dereferenceable(1) %call21)
          to label %invoke.cont22 unwind label %lpad19

invoke.cont22:                                    ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %invoke.cont22, %invoke.cont20
  %34 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %35 = load i32*, i32** %__new_start, align 8
  %36 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.8"* %34, i32* %35, i64 %36)
          to label %invoke.cont23 unwind label %lpad19

invoke.cont23:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #15
          to label %unreachable unwind label %lpad19

invoke.cont24:                                    ; preds = %lpad19
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont15
  %37 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %37, i32 0, i32 0
  %_M_start26 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl25, i32 0, i32 0
  %38 = load i32*, i32** %_M_start26, align 8
  %39 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl27 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %39, i32 0, i32 0
  %_M_finish28 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl27, i32 0, i32 1
  %40 = load i32*, i32** %_M_finish28, align 8
  %41 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %call29 = call dereferenceable(1) %"class.std::allocator.9"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.8"* %41) #3
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %38, i32* %40, %"class.std::allocator.9"* dereferenceable(1) %call29)
  %42 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %43 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl30 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %43, i32 0, i32 0
  %_M_start31 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl30, i32 0, i32 0
  %44 = load i32*, i32** %_M_start31, align 8
  %45 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl32 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %45, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl32, i32 0, i32 2
  %46 = load i32*, i32** %_M_end_of_storage, align 8
  %47 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl33 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %47, i32 0, i32 0
  %_M_start34 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl33, i32 0, i32 0
  %48 = load i32*, i32** %_M_start34, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.8"* %42, i32* %44, i64 %sub.ptr.div)
  %49 = load i32*, i32** %__new_start, align 8
  %50 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl35 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %50, i32 0, i32 0
  %_M_start36 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl35, i32 0, i32 0
  store i32* %49, i32** %_M_start36, align 8
  %51 = load i32*, i32** %__new_finish, align 8
  %52 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl37 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %52, i32 0, i32 0
  %_M_finish38 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl37, i32 0, i32 1
  store i32* %51, i32** %_M_finish38, align 8
  %53 = load i32*, i32** %__new_start, align 8
  %54 = load i64, i64* %__len, align 8
  %add.ptr39 = getelementptr inbounds i32, i32* %53, i64 %54
  %55 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl40 = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %55, i32 0, i32 0
  %_M_end_of_storage41 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl40, i32 0, i32 2
  store i32* %add.ptr39, i32** %_M_end_of_storage41, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont24
  %exn42 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn42, 0
  %lpad.val43 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val43

terminate.lpad:                                   ; preds = %lpad19
  %56 = landingpad { i8*, i32 }
          catch i8* null
  %57 = extractvalue { i8*, i32 } %56, 0
  call void @__clang_call_terminate(i8* %57) #14
  unreachable

unreachable:                                      ; preds = %invoke.cont23
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector.7"* %this) #5 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.12", align 8
  %this.addr = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.12"* %retval, i32** dereferenceable(8) %_M_finish) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.12", %"class.__gnu_cxx::__normal_iterator.12"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.10"* %this, i32* %__p, i32* dereferenceable(4) %__args) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.10"*, align 8
  %__p.addr = alloca i32*, align 8
  %__args.addr = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.10"* %this, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i32* %__args, i32** %__args.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.10"*, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %2 = bitcast i8* %1 to i32*
  %3 = load i32*, i32** %__args.addr, align 8
  %call = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %3) #3
  %4 = load i32, i32* %call, align 4
  store i32 %4, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %__t) #5 comdat {
entry:
  %__t.addr = alloca i32*, align 8
  store i32* %__t, i32** %__t.addr, align 8
  %0 = load i32*, i32** %__t.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.7"* %this, i64 %__n, i8* %__s) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.7"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.7"* %this1) #3
  %call2 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.7"* %this1) #3
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.7"* %this1) #3
  %call4 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.7"* %this1) #3
  store i64 %call4, i64* %ref.tmp, align 8
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64, i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.7"* %this1) #3
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.7"* %this1) #3
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.7"* %this1) #3
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator.12"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.12"* dereferenceable(8) %__rhs) #5 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.12"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.12"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.12"* %__lhs, %"class.__gnu_cxx::__normal_iterator.12"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.12"* %__rhs, %"class.__gnu_cxx::__normal_iterator.12"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.12"*, %"class.__gnu_cxx::__normal_iterator.12"** %__lhs.addr, align 8
  %call = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.12"* %0) #3
  %1 = load i32*, i32** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.12"*, %"class.__gnu_cxx::__normal_iterator.12"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.12"* %2) #3
  %3 = load i32*, i32** %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.7"* %this) #5 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.12", align 8
  %this.addr = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.12"* %retval, i32** dereferenceable(8) %_M_start) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.12", %"class.__gnu_cxx::__normal_iterator.12"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator.9"* dereferenceable(1) %__alloc) #6 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %__alloc.addr = alloca %"class.std::allocator.9"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator.13", align 8
  %agg.tmp1 = alloca %"class.std::move_iterator.13", align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store %"class.std::allocator.9"* %__alloc, %"class.std::allocator.9"** %__alloc.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp, i32 0, i32 0
  store i32* %call, i32** %coerce.dive, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  %call2 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %1)
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp1, i32 0, i32 0
  store i32* %call2, i32** %coerce.dive3, align 8
  %2 = load i32*, i32** %__result.addr, align 8
  %3 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__alloc.addr, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp, i32 0, i32 0
  %4 = load i32*, i32** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp1, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive5, align 8
  %call6 = call i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %4, i32* %5, i32* %2, %"class.std::allocator.9"* dereferenceable(1) %3)
  ret i32* %call6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.12"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.12"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.12"* %this, %"class.__gnu_cxx::__normal_iterator.12"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.12"*, %"class.__gnu_cxx::__normal_iterator.12"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.12", %"class.__gnu_cxx::__normal_iterator.12"* %this1, i32 0, i32 0
  ret i32** %_M_current
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator.9"* dereferenceable(1) %__a, i32* %__p) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.9"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.std::allocator.9"* %__a, %"class.std::allocator.9"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %0 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.9"* %0 to %"class.__gnu_cxx::new_allocator.10"*
  %2 = load i32*, i32** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator.10"* %1, i32* %2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator.9"* dereferenceable(1) %0) #6 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator.9"*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store %"class.std::allocator.9"* %0, %"class.std::allocator.9"** %.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %2 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %1, i32* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.7"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %this, %"class.std::vector.7"** %this.addr, align 8
  %this1 = load %"class.std::vector.7"*, %"class.std::vector.7"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.7"* %this1 to %"struct.std::_Vector_base.8"*
  %call = call dereferenceable(1) %"class.std::allocator.9"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.8"* %0) #3
  %call2 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.9"* dereferenceable(1) %call) #3
  ret i64 %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.9"* dereferenceable(1) %__a) #5 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.9"*, align 8
  store %"class.std::allocator.9"* %__a, %"class.std::allocator.9"** %__a.addr, align 8
  %0 = load %"class.std::allocator.9"*, %"class.std::allocator.9"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.9"* %0 to %"class.__gnu_cxx::new_allocator.10"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.10"* %1) #3
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator.9"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.8"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.8"*, align 8
  store %"struct.std::_Vector_base.8"* %this, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.8"*, %"struct.std::_Vector_base.8"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.8", %"struct.std::_Vector_base.8"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator.9"*
  ret %"class.std::allocator.9"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.12"* %this, i32** dereferenceable(8) %__i) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.12"*, align 8
  %__i.addr = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator.12"* %this, %"class.__gnu_cxx::__normal_iterator.12"** %this.addr, align 8
  store i32** %__i, i32*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.12"*, %"class.__gnu_cxx::__normal_iterator.12"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.12", %"class.__gnu_cxx::__normal_iterator.12"* %this1, i32 0, i32 0
  %0 = load i32**, i32*** %__i.addr, align 8
  %1 = load i32*, i32** %0, align 8
  store i32* %1, i32** %_M_current, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %__first.coerce, i32* %__last.coerce, i32* %__result, %"class.std::allocator.9"* dereferenceable(1) %0) #6 comdat {
entry:
  %__first = alloca %"class.std::move_iterator.13", align 8
  %__last = alloca %"class.std::move_iterator.13", align 8
  %__result.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator.9"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator.13", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator.13", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store %"class.std::allocator.9"* %0, %"class.std::allocator.9"** %.addr, align 8
  %1 = bitcast %"class.std::move_iterator.13"* %agg.tmp to i8*
  %2 = bitcast %"class.std::move_iterator.13"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %3 = bitcast %"class.std::move_iterator.13"* %agg.tmp2 to i8*
  %4 = bitcast %"class.std::move_iterator.13"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = load i32*, i32** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp2, i32 0, i32 0
  %7 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %6, i32* %7, i32* %5)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %__i) #6 comdat {
entry:
  %retval = alloca %"class.std::move_iterator.13", align 8
  %__i.addr = alloca i32*, align 8
  store i32* %__i, i32** %__i.addr, align 8
  %0 = load i32*, i32** %__i.addr, align 8
  call void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator.13"* %retval, i32* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #6 comdat {
entry:
  %__first = alloca %"class.std::move_iterator.13", align 8
  %__last = alloca %"class.std::move_iterator.13", align 8
  %__result.addr = alloca i32*, align 8
  %__assignable = alloca i8, align 1
  %agg.tmp = alloca %"class.std::move_iterator.13", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator.13", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = bitcast %"class.std::move_iterator.13"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator.13"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %2 = bitcast %"class.std::move_iterator.13"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator.13"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %4 = load i32*, i32** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp2, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %5, i32* %6, i32* %4)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #6 comdat align 2 {
entry:
  %__first = alloca %"class.std::move_iterator.13", align 8
  %__last = alloca %"class.std::move_iterator.13", align 8
  %__result.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.std::move_iterator.13", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator.13", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = bitcast %"class.std::move_iterator.13"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator.13"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %2 = bitcast %"class.std::move_iterator.13"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator.13"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %4 = load i32*, i32** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp2, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %5, i32* %6, i32* %4)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #6 comdat {
entry:
  %__first = alloca %"class.std::move_iterator.13", align 8
  %__last = alloca %"class.std::move_iterator.13", align 8
  %__result.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.std::move_iterator.13", align 8
  %agg.tmp3 = alloca %"class.std::move_iterator.13", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = bitcast %"class.std::move_iterator.13"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator.13"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp, i32 0, i32 0
  %2 = load i32*, i32** %coerce.dive2, align 8
  %call = call i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %2)
  %3 = bitcast %"class.std::move_iterator.13"* %agg.tmp3 to i8*
  %4 = bitcast %"class.std::move_iterator.13"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %agg.tmp3, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive4, align 8
  %call5 = call i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %5)
  %6 = load i32*, i32** %__result.addr, align 8
  %call6 = call i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %call, i32* %call5, i32* %6)
  ret i32* %call6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #6 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %0)
  %1 = load i32*, i32** %__last.addr, align 8
  %call1 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %1)
  %2 = load i32*, i32** %__result.addr, align 8
  %call2 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %2)
  %call3 = call i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %call, i32* %call1, i32* %call2)
  ret i32* %call3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %__it.coerce) #6 comdat {
entry:
  %__it = alloca %"class.std::move_iterator.13", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %coerce.dive, align 8
  %call = call i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator.13"* %__it)
  %call1 = call i32* @_ZSt12__miter_baseIPiET_S1_(i32* %call)
  ret i32* %call1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #6 comdat {
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
  %call = call i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %0, i32* %1, i32* %2)
  ret i32* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #5 comdat align 2 {
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

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIPiET_S1_(i32* %__it) #5 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator.13"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator.13"*, align 8
  store %"class.std::move_iterator.13"* %this, %"class.std::move_iterator.13"** %this.addr, align 8
  %this1 = load %"class.std::move_iterator.13"*, %"class.std::move_iterator.13"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %_M_current, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator.13"* %this, i32* %__i) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator.13"*, align 8
  %__i.addr = alloca i32*, align 8
  store %"class.std::move_iterator.13"* %this, %"class.std::move_iterator.13"** %this.addr, align 8
  store i32* %__i, i32** %__i.addr, align 8
  %this1 = load %"class.std::move_iterator.13"*, %"class.std::move_iterator.13"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator.13", %"class.std::move_iterator.13"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %__i.addr, align 8
  store i32* %0, i32** %_M_current, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator.10"* %this, i32* %__p) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.10"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.10"* %this, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.10"*, %"class.__gnu_cxx::new_allocator.10"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #6 comdat {
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

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev(%"class.std::vector"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #3
  invoke void @_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E(%"struct.std::pair"* %1, %"struct.std::pair"* %3, %"class.std::allocator"* dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev(%"struct.std::_Vector_base"* %5) #3
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev(%"struct.std::_Vector_base"* %9) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #14
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.std::pair"* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.std::pair"* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %this1, %"struct.std::pair"* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl5) #3
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %_M_impl6) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #14
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"*, %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt4pairIiiEED2Ev(%"class.std::allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt4pairIiiEED2Ev(%"class.std::allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_graph.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind willreturn }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
