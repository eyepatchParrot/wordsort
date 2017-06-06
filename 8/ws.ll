; ModuleID = 'wordsort.cc'
source_filename = "wordsort.cc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.benchmark::internal::Benchmark" = type { i32 (...)**, %"class.std::basic_string", i32, %"class.std::vector.11", %"class.std::vector.16", i32, i32, double, i64, i32, i8, i8, i32, double (i32)*, %"class.std::vector.0" }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"class.std::vector.11" = type { %"struct.std::_Vector_base.12" }
%"struct.std::_Vector_base.12" = type { %"struct.std::_Vector_base<std::basic_string<char>, std::allocator<std::basic_string<char> > >::_Vector_impl" }
%"struct.std::_Vector_base<std::basic_string<char>, std::allocator<std::basic_string<char> > >::_Vector_impl" = type { %"class.std::basic_string"*, %"class.std::basic_string"*, %"class.std::basic_string"* }
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl" = type { %"class.std::vector.0"*, %"class.std::vector.0"*, %"class.std::vector.0"* }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<long, std::allocator<long> >::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long> >::_Vector_impl" = type { i64*, i64*, i64* }
%"class.benchmark::State" = type { i8, i8, i64, %"class.std::vector.0", i64, i64, i32, i8, %"class.std::map", i32, i32, i64, %"class.benchmark::internal::ThreadTimer"*, %"class.benchmark::internal::ThreadManager"* }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::basic_string<char>, benchmark::Counter> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, benchmark::Counter> > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::basic_string<char>, benchmark::Counter> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, benchmark::Counter> > >::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.benchmark::internal::ThreadTimer" = type opaque
%"class.benchmark::internal::ThreadManager" = type opaque
%"class.std::uniform_int_distribution" = type { %"struct.std::uniform_int_distribution<unsigned long>::param_type" }
%"struct.std::uniform_int_distribution<unsigned long>::param_type" = type { i64, i64 }
%"class.std::linear_congruential_engine" = type { i64 }

$_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_T0_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_ = comdat any

$_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_ = comdat any

@_ZL21_benchmark_2BM_bubble = internal unnamed_addr global %"class.benchmark::internal::Benchmark"* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"BM_bubble\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x i8*] }
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_wordsort.cc, i8* null }]

declare i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @_Z5rangei(%"class.std::vector"* noalias nocapture sret, i32) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 2
  %4 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1
  %5 = tail call i8* @_Znwm(i64 800) #10
  %6 = bitcast %"class.std::vector"* %0 to i8**
  store i8* %5, i8** %6, align 8, !tbaa !1
  %7 = bitcast i64** %4 to i8**
  store i8* %5, i8** %7, align 8, !tbaa !7
  %8 = getelementptr inbounds i8, i8* %5, i64 800
  %9 = bitcast i64** %3 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !8
  %10 = ptrtoint i8* %5 to i64
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %77

; <label>:12:                                     ; preds = %2
  %13 = ptrtoint i8* %5 to i64
  %14 = bitcast i8* %8 to i64*
  %15 = bitcast i8* %5 to i64*
  %16 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1
  %17 = bitcast %"class.std::vector"* %0 to i8**
  %18 = sext i32 %1 to i64
  br label %19

; <label>:19:                                     ; preds = %72, %12
  %20 = phi i64 [ %10, %12 ], [ %66, %72 ]
  %21 = phi i64 [ %13, %12 ], [ %75, %72 ]
  %22 = phi i64 [ %10, %12 ], [ %67, %72 ]
  %23 = phi i64* [ %14, %12 ], [ %74, %72 ]
  %24 = phi i64* [ %15, %12 ], [ %73, %72 ]
  %25 = phi i64 [ 0, %12 ], [ %70, %72 ]
  %26 = icmp eq i64* %24, %23
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %19
  store i64 %25, i64* %24, align 8, !tbaa !9
  %28 = getelementptr inbounds i64, i64* %24, i64 1
  br label %65

; <label>:29:                                     ; preds = %19
  %30 = sub i64 %21, %22
  %31 = ashr exact i64 %30, 3
  %32 = icmp eq i64 %31, 0
  %33 = select i1 %32, i64 1, i64 %31
  %34 = add nsw i64 %33, %31
  %35 = icmp ult i64 %34, %31
  %36 = icmp ugt i64 %34, 2305843009213693951
  %37 = or i1 %35, %36
  %38 = select i1 %37, i64 2305843009213693951, i64 %34
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %47, label %40

; <label>:40:                                     ; preds = %29
  %41 = icmp ugt i64 %38, 2305843009213693951
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %40
  tail call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:43:                                     ; preds = %40
  %44 = shl i64 %38, 3
  %45 = tail call i8* @_Znwm(i64 %44) #10
  %46 = bitcast i8* %45 to i64*
  br label %47

; <label>:47:                                     ; preds = %43, %29
  %48 = phi i64 [ %20, %43 ], [ %22, %29 ]
  %49 = phi i8* [ %45, %43 ], [ null, %29 ]
  %50 = phi i64* [ %46, %43 ], [ null, %29 ]
  %51 = sub i64 %21, %48
  %52 = ashr exact i64 %51, 3
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %25, i64* %53, align 8, !tbaa !9
  %54 = icmp eq i64 %52, 0
  br i1 %54, label %57, label %55

; <label>:55:                                     ; preds = %47
  %56 = inttoptr i64 %48 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %49, i8* %56, i64 %51, i32 8, i1 false) #10
  br label %57

; <label>:57:                                     ; preds = %55, %47
  %58 = getelementptr inbounds i64, i64* %53, i64 1
  %59 = icmp eq i64 %48, 0
  br i1 %59, label %62, label %60

; <label>:60:                                     ; preds = %57
  %61 = inttoptr i64 %48 to i8*
  tail call void @_ZdlPv(i8* %61) #10
  br label %62

; <label>:62:                                     ; preds = %57, %60
  store i8* %49, i8** %17, align 8, !tbaa !1
  store i64* %58, i64** %16, align 8, !tbaa !7
  %63 = getelementptr inbounds i64, i64* %50, i64 %38
  %64 = ptrtoint i8* %49 to i64
  br label %65

; <label>:65:                                     ; preds = %27, %62
  %66 = phi i64 [ %20, %27 ], [ %64, %62 ]
  %67 = phi i64 [ %22, %27 ], [ %64, %62 ]
  %68 = phi i64** [ %16, %27 ], [ %3, %62 ]
  %69 = phi i64* [ %28, %27 ], [ %63, %62 ]
  store i64* %69, i64** %68, align 8, !tbaa !11
  %70 = add nuw nsw i64 %25, 1
  %71 = icmp slt i64 %70, %18
  br i1 %71, label %72, label %76

; <label>:72:                                     ; preds = %65
  %73 = load i64*, i64** %16, align 8, !tbaa !7
  %74 = load i64*, i64** %3, align 8, !tbaa !8
  %75 = ptrtoint i64* %73 to i64
  br label %19

; <label>:76:                                     ; preds = %65
  br label %77

; <label>:77:                                     ; preds = %76, %2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @_Z3cmpPKvS0_(i8* nocapture readonly, i8* nocapture readonly) #3 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !9
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !9
  %7 = sub nsw i64 %4, %6
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @_Z13BM_copy_qsortRN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) local_unnamed_addr #1 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  %7 = bitcast %"class.std::vector"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10
  %8 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8, !tbaa !12
  %10 = load i32, i32* %9, align 4, !tbaa !15
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %10)
  %11 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #10
  %12 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %12, align 8, !tbaa !17
  %13 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8, !tbaa !11
  %17 = ptrtoint i64* %14 to i64
  %18 = icmp eq i64* %14, %16
  %19 = ptrtoint i64* %16 to i64
  br i1 %18, label %30, label %20

; <label>:20:                                     ; preds = %1
  %21 = bitcast <2 x i64>* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #10
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !tbaa !9
  %22 = getelementptr inbounds i64, i64* %14, i64 1
  %23 = icmp eq i64* %22, %16
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %20
  %25 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %26 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %74

; <label>:28:                                     ; preds = %74
  br label %29

; <label>:29:                                     ; preds = %28, %20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #10
  br label %30

; <label>:30:                                     ; preds = %1, %29
  %31 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 0
  %32 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 2
  %33 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 11
  %34 = sub i64 %19, %17
  %35 = ashr exact i64 %34, 3
  %36 = icmp eq i64 %35, 0
  %37 = icmp eq i64 %34, 0
  %38 = bitcast i64* %14 to i8*
  br i1 %36, label %39, label %62

; <label>:39:                                     ; preds = %30
  br i1 %37, label %41, label %40

; <label>:40:                                     ; preds = %39
  br label %52

; <label>:41:                                     ; preds = %39
  br label %42

; <label>:42:                                     ; preds = %41, %51
  %43 = load i8, i8* %31, align 8, !tbaa !19, !range !29
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %46, label %45, !prof !30

; <label>:45:                                     ; preds = %42
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %46

; <label>:46:                                     ; preds = %45, %42
  %47 = load i64, i64* %32, align 8, !tbaa !31
  %48 = add i64 %47, 1
  store i64 %48, i64* %32, align 8, !tbaa !31
  %49 = load i64, i64* %33, align 8, !tbaa !32
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %51, label %99, !prof !30

; <label>:51:                                     ; preds = %46
  call void @qsort(i8* null, i64 0, i64 8, i32 (i8*, i8*)* nonnull @_Z3cmpPKvS0_) #10
  br label %42

; <label>:52:                                     ; preds = %40, %61
  %53 = load i8, i8* %31, align 8, !tbaa !19, !range !29
  %54 = icmp eq i8 %53, 1
  br i1 %54, label %56, label %55, !prof !30

; <label>:55:                                     ; preds = %52
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %56

; <label>:56:                                     ; preds = %55, %52
  %57 = load i64, i64* %32, align 8, !tbaa !31
  %58 = add i64 %57, 1
  store i64 %58, i64* %32, align 8, !tbaa !31
  %59 = load i64, i64* %33, align 8, !tbaa !32
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %61, label %100, !prof !30

; <label>:61:                                     ; preds = %56
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* null, i8* %38, i64 %34, i32 8, i1 false) #10
  call void @qsort(i8* null, i64 0, i64 8, i32 (i8*, i8*)* nonnull @_Z3cmpPKvS0_) #10
  br label %52

; <label>:62:                                     ; preds = %30
  %63 = icmp ugt i64 %35, 2305843009213693951
  br i1 %63, label %65, label %64

; <label>:64:                                     ; preds = %62
  br label %85

; <label>:65:                                     ; preds = %62
  %66 = load i8, i8* %31, align 8, !tbaa !19, !range !29
  %67 = icmp eq i8 %66, 1
  br i1 %67, label %69, label %68, !prof !30

; <label>:68:                                     ; preds = %65
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %69

; <label>:69:                                     ; preds = %68, %65
  %70 = load i64, i64* %32, align 8, !tbaa !31
  %71 = add i64 %70, 1
  store i64 %71, i64* %32, align 8, !tbaa !31
  %72 = load i64, i64* %33, align 8, !tbaa !32
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %94, label %102, !prof !30

; <label>:74:                                     ; preds = %74, %24
  %75 = phi i64* [ %22, %24 ], [ %83, %74 ]
  %76 = ptrtoint i64* %75 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #10
  %77 = sub i64 %76, %17
  %78 = ashr exact i64 %77, 3
  store i64 0, i64* %26, align 8, !tbaa !33
  store i64 %78, i64* %27, align 8, !tbaa !35
  %79 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10
  %80 = getelementptr inbounds i64, i64* %14, i64 %79
  %81 = load i64, i64* %75, align 8, !tbaa !9
  %82 = load i64, i64* %80, align 8, !tbaa !9
  store i64 %82, i64* %75, align 8, !tbaa !9
  store i64 %81, i64* %80, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #10
  %83 = getelementptr inbounds i64, i64* %75, i64 1
  %84 = icmp eq i64* %83, %16
  br i1 %84, label %28, label %74

; <label>:85:                                     ; preds = %64, %98
  %86 = load i8, i8* %31, align 8, !tbaa !19, !range !29
  %87 = icmp eq i8 %86, 1
  br i1 %87, label %89, label %88, !prof !30

; <label>:88:                                     ; preds = %85
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %89

; <label>:89:                                     ; preds = %88, %85
  %90 = load i64, i64* %32, align 8, !tbaa !31
  %91 = add i64 %90, 1
  store i64 %91, i64* %32, align 8, !tbaa !31
  %92 = load i64, i64* %33, align 8, !tbaa !32
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %95, label %101, !prof !30

; <label>:94:                                     ; preds = %69
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:95:                                     ; preds = %89
  %96 = call i8* @_Znwm(i64 %34) #10
  br i1 %37, label %98, label %97

; <label>:97:                                     ; preds = %95
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %96, i8* %38, i64 %34, i32 8, i1 false) #10
  br label %98

; <label>:98:                                     ; preds = %97, %95
  call void @qsort(i8* nonnull %96, i64 %35, i64 8, i32 (i8*, i8*)* nonnull @_Z3cmpPKvS0_) #10
  call void @_ZdlPv(i8* nonnull %96) #10
  br label %85

; <label>:99:                                     ; preds = %46
  br label %102

; <label>:100:                                    ; preds = %56
  br label %102

; <label>:101:                                    ; preds = %89
  br label %102

; <label>:102:                                    ; preds = %101, %100, %99, %69
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10
  %103 = icmp eq i64* %14, null
  br i1 %103, label %106, label %104

; <label>:104:                                    ; preds = %102
  %105 = bitcast i64* %14 to i8*
  call void @_ZdlPv(i8* %105) #10
  br label %106

; <label>:106:                                    ; preds = %102, %104
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @_Z11BM_std_sortRN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) local_unnamed_addr #1 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  %7 = bitcast %"class.std::vector"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10
  %8 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8, !tbaa !12
  %10 = load i32, i32* %9, align 4, !tbaa !15
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %10)
  %11 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #10
  %12 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %12, align 8, !tbaa !17
  %13 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8, !tbaa !11
  %17 = ptrtoint i64* %14 to i64
  %18 = icmp eq i64* %14, %16
  %19 = ptrtoint i64* %16 to i64
  br i1 %18, label %30, label %20

; <label>:20:                                     ; preds = %1
  %21 = bitcast <2 x i64>* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #10
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !tbaa !9
  %22 = getelementptr inbounds i64, i64* %14, i64 1
  %23 = icmp eq i64* %22, %16
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %20
  %25 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %26 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %63

; <label>:28:                                     ; preds = %63
  br label %29

; <label>:29:                                     ; preds = %28, %20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #10
  br label %30

; <label>:30:                                     ; preds = %1, %29
  %31 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 0
  %32 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 2
  %33 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 11
  %34 = sub i64 %19, %17
  %35 = ashr exact i64 %34, 3
  %36 = icmp eq i64 %35, 0
  %37 = call i64 @llvm.ctlz.i64(i64 %35, i1 true) #10
  %38 = shl nuw nsw i64 %37, 1
  %39 = xor i64 %38, 126
  %40 = bitcast i64* %14 to i8*
  br i1 %36, label %41, label %51

; <label>:41:                                     ; preds = %30
  br label %42

; <label>:42:                                     ; preds = %41, %46
  %43 = load i8, i8* %31, align 8, !tbaa !19, !range !29
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %46, label %45, !prof !30

; <label>:45:                                     ; preds = %42
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %46

; <label>:46:                                     ; preds = %45, %42
  %47 = load i64, i64* %32, align 8, !tbaa !31
  %48 = add i64 %47, 1
  store i64 %48, i64* %32, align 8, !tbaa !31
  %49 = load i64, i64* %33, align 8, !tbaa !32
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %42, label %88, !prof !30

; <label>:51:                                     ; preds = %30
  %52 = icmp ugt i64 %35, 2305843009213693951
  br i1 %52, label %54, label %53

; <label>:53:                                     ; preds = %51
  br label %74

; <label>:54:                                     ; preds = %51
  %55 = load i8, i8* %31, align 8, !tbaa !19, !range !29
  %56 = icmp eq i8 %55, 1
  br i1 %56, label %58, label %57, !prof !30

; <label>:57:                                     ; preds = %54
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %58

; <label>:58:                                     ; preds = %57, %54
  %59 = load i64, i64* %32, align 8, !tbaa !31
  %60 = add i64 %59, 1
  store i64 %60, i64* %32, align 8, !tbaa !31
  %61 = load i64, i64* %33, align 8, !tbaa !32
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %83, label %90, !prof !30

; <label>:63:                                     ; preds = %63, %24
  %64 = phi i64* [ %22, %24 ], [ %72, %63 ]
  %65 = ptrtoint i64* %64 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #10
  %66 = sub i64 %65, %17
  %67 = ashr exact i64 %66, 3
  store i64 0, i64* %26, align 8, !tbaa !33
  store i64 %67, i64* %27, align 8, !tbaa !35
  %68 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10
  %69 = getelementptr inbounds i64, i64* %14, i64 %68
  %70 = load i64, i64* %64, align 8, !tbaa !9
  %71 = load i64, i64* %69, align 8, !tbaa !9
  store i64 %71, i64* %64, align 8, !tbaa !9
  store i64 %70, i64* %69, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #10
  %72 = getelementptr inbounds i64, i64* %64, i64 1
  %73 = icmp eq i64* %72, %16
  br i1 %73, label %28, label %63

; <label>:74:                                     ; preds = %53, %84
  %75 = load i8, i8* %31, align 8, !tbaa !19, !range !29
  %76 = icmp eq i8 %75, 1
  br i1 %76, label %78, label %77, !prof !30

; <label>:77:                                     ; preds = %74
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %78

; <label>:78:                                     ; preds = %77, %74
  %79 = load i64, i64* %32, align 8, !tbaa !31
  %80 = add i64 %79, 1
  store i64 %80, i64* %32, align 8, !tbaa !31
  %81 = load i64, i64* %33, align 8, !tbaa !32
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %84, label %89, !prof !30

; <label>:83:                                     ; preds = %58
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:84:                                     ; preds = %78
  %85 = call i8* @_Znwm(i64 %34) #10
  %86 = bitcast i8* %85 to i64*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %85, i8* %40, i64 %34, i32 8, i1 false) #10
  %87 = getelementptr inbounds i64, i64* %86, i64 %35
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_T0_(i64* nonnull %86, i64* %87, i64 %39) #10
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_(i64* nonnull %86, i64* %87) #10
  call void @_ZdlPv(i8* nonnull %85) #10
  br label %74

; <label>:88:                                     ; preds = %46
  br label %90

; <label>:89:                                     ; preds = %78
  br label %90

; <label>:90:                                     ; preds = %89, %88, %58
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10
  %91 = icmp eq i64* %14, null
  br i1 %91, label %94, label %92

; <label>:92:                                     ; preds = %90
  %93 = bitcast i64* %14 to i8*
  call void @_ZdlPv(i8* %93) #10
  br label %94

; <label>:94:                                     ; preds = %90, %92
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define i32 @_Z9partitionRSt6vectorIlSaIlEEii(%"class.std::vector"* nocapture readonly dereferenceable(24), i32, i32) local_unnamed_addr #4 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0
  %6 = add nsw i32 %1, -1
  %7 = icmp slt i32 %1, %2
  %8 = load i64*, i64** %5, align 8, !tbaa !1
  %9 = getelementptr inbounds i64, i64* %8, i64 %4
  br i1 %7, label %10, label %41

; <label>:10:                                     ; preds = %3
  %11 = load i64, i64* %9, align 8, !tbaa !9
  %12 = shl i64 %11, 32
  %13 = ashr exact i64 %12, 32
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds i64, i64* %8, i64 %14
  %16 = load i64, i64* %15, align 8, !tbaa !9
  %17 = icmp sgt i64 %16, %13
  %18 = select i1 %17, i32 %6, i32 %1
  %19 = add nsw i64 %14, 1
  %20 = icmp eq i64 %19, %4
  br i1 %20, label %41, label %21

; <label>:21:                                     ; preds = %10
  br label %22

; <label>:22:                                     ; preds = %21, %36
  %23 = phi i64 [ %38, %36 ], [ %19, %21 ]
  %24 = phi i32 [ %37, %36 ], [ %18, %21 ]
  %25 = getelementptr inbounds i64, i64* %8, i64 %23
  %26 = load i64, i64* %25, align 8, !tbaa !9
  %27 = icmp sgt i64 %26, %13
  br i1 %27, label %36, label %28

; <label>:28:                                     ; preds = %22
  %29 = add nsw i32 %24, 1
  %30 = trunc i64 %23 to i32
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

; <label>:32:                                     ; preds = %28
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds i64, i64* %8, i64 %33
  %35 = load i64, i64* %34, align 8, !tbaa !9
  store i64 %26, i64* %34, align 8, !tbaa !9
  store i64 %35, i64* %25, align 8, !tbaa !9
  br label %36

; <label>:36:                                     ; preds = %28, %22, %32
  %37 = phi i32 [ %29, %32 ], [ %29, %28 ], [ %24, %22 ]
  %38 = add nsw i64 %23, 1
  %39 = icmp eq i64 %38, %4
  br i1 %39, label %40, label %22, !llvm.loop !36

; <label>:40:                                     ; preds = %36
  br label %41

; <label>:41:                                     ; preds = %40, %3, %10
  %42 = phi i32 [ %18, %10 ], [ %6, %3 ], [ %37, %40 ]
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %8, i64 %44
  %46 = load i64, i64* %45, align 8, !tbaa !9
  %47 = load i64, i64* %9, align 8, !tbaa !9
  store i64 %47, i64* %45, align 8, !tbaa !9
  store i64 %46, i64* %9, align 8, !tbaa !9
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define void @_Z9quickSortRSt6vectorIlSaIlEEii(%"class.std::vector"* readonly dereferenceable(24), i32, i32) local_unnamed_addr #1 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %5, label %54

; <label>:5:                                      ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0
  br label %8

; <label>:8:                                      ; preds = %5, %44
  %9 = phi i32 [ %1, %5 ], [ %51, %44 ]
  %10 = load i64*, i64** %7, align 8, !tbaa !1
  %11 = getelementptr inbounds i64, i64* %10, i64 %6
  %12 = load i64, i64* %11, align 8, !tbaa !9
  %13 = shl i64 %12, 32
  %14 = ashr exact i64 %13, 32
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds i64, i64* %10, i64 %15
  %17 = load i64, i64* %16, align 8, !tbaa !9
  %18 = icmp sgt i64 %17, %14
  %19 = sext i1 %18 to i32
  %20 = add nsw i32 %9, %19
  %21 = add nsw i64 %15, 1
  %22 = icmp eq i64 %21, %6
  br i1 %22, label %44, label %23

; <label>:23:                                     ; preds = %8
  br label %24

; <label>:24:                                     ; preds = %23, %38
  %25 = phi i64 [ %40, %38 ], [ %21, %23 ]
  %26 = phi i32 [ %39, %38 ], [ %20, %23 ]
  %27 = getelementptr inbounds i64, i64* %10, i64 %25
  %28 = load i64, i64* %27, align 8, !tbaa !9
  %29 = icmp sgt i64 %28, %14
  br i1 %29, label %38, label %30

; <label>:30:                                     ; preds = %24
  %31 = add nsw i32 %26, 1
  %32 = trunc i64 %25 to i32
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

; <label>:34:                                     ; preds = %30
  %35 = sext i32 %31 to i64
  %36 = getelementptr inbounds i64, i64* %10, i64 %35
  %37 = load i64, i64* %36, align 8, !tbaa !9
  store i64 %28, i64* %36, align 8, !tbaa !9
  store i64 %37, i64* %27, align 8, !tbaa !9
  br label %38

; <label>:38:                                     ; preds = %34, %30, %24
  %39 = phi i32 [ %31, %34 ], [ %31, %30 ], [ %26, %24 ]
  %40 = add nsw i64 %25, 1
  %41 = icmp eq i64 %40, %6
  br i1 %41, label %42, label %24, !llvm.loop !36

; <label>:42:                                     ; preds = %38
  %43 = load i64, i64* %11, align 8, !tbaa !9
  br label %44

; <label>:44:                                     ; preds = %42, %8
  %45 = phi i64 [ %12, %8 ], [ %43, %42 ]
  %46 = phi i32 [ %20, %8 ], [ %39, %42 ]
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %10, i64 %48
  %50 = load i64, i64* %49, align 8, !tbaa !9
  store i64 %45, i64* %49, align 8, !tbaa !9
  store i64 %50, i64* %11, align 8, !tbaa !9
  tail call void @_Z9quickSortRSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %0, i32 %9, i32 %46)
  %51 = add nsw i32 %46, 2
  %52 = icmp slt i32 %51, %2
  br i1 %52, label %8, label %53

; <label>:53:                                     ; preds = %44
  br label %54

; <label>:54:                                     ; preds = %53, %3
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z12BM_quickSortRN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) local_unnamed_addr #1 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  %7 = alloca %"class.std::vector", align 8
  %8 = bitcast %"class.std::vector"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #10
  %9 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8, !tbaa !12
  %11 = load i32, i32* %10, align 4, !tbaa !15
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %11)
  %12 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #10
  %13 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %13, align 8, !tbaa !17
  %14 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8, !tbaa !11
  %18 = ptrtoint i64* %15 to i64
  %19 = icmp eq i64* %15, %17
  %20 = ptrtoint i64* %17 to i64
  br i1 %19, label %42, label %21

; <label>:21:                                     ; preds = %1
  %22 = bitcast <2 x i64>* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #10
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !tbaa !9
  %23 = getelementptr inbounds i64, i64* %15, i64 1
  %24 = icmp eq i64* %23, %17
  br i1 %24, label %30, label %25

; <label>:25:                                     ; preds = %21
  %26 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %28 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %31

; <label>:29:                                     ; preds = %31
  br label %30

; <label>:30:                                     ; preds = %29, %21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #10
  br label %42

; <label>:31:                                     ; preds = %31, %25
  %32 = phi i64* [ %23, %25 ], [ %40, %31 ]
  %33 = ptrtoint i64* %32 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #10
  %34 = sub i64 %33, %18
  %35 = ashr exact i64 %34, 3
  store i64 0, i64* %27, align 8, !tbaa !33
  store i64 %35, i64* %28, align 8, !tbaa !35
  %36 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10
  %37 = getelementptr inbounds i64, i64* %15, i64 %36
  %38 = load i64, i64* %32, align 8, !tbaa !9
  %39 = load i64, i64* %37, align 8, !tbaa !9
  store i64 %39, i64* %32, align 8, !tbaa !9
  store i64 %38, i64* %37, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #10
  %40 = getelementptr inbounds i64, i64* %32, i64 1
  %41 = icmp eq i64* %40, %17
  br i1 %41, label %29, label %31

; <label>:42:                                     ; preds = %1, %30
  %43 = sub i64 %20, %18
  %44 = lshr exact i64 %43, 3
  %45 = add nuw nsw i64 %44, 4294967295
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 0
  %48 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 2
  %49 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 11
  %50 = bitcast %"class.std::vector"* %7 to i8*
  %51 = ashr exact i64 %43, 3
  %52 = icmp eq i64 %51, 0
  %53 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %7, i64 0, i32 0, i32 0, i32 0
  %54 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %7, i64 0, i32 0, i32 0, i32 1
  %55 = bitcast i64** %54 to i8**
  %56 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %7, i64 0, i32 0, i32 0, i32 2
  %57 = bitcast i64* %15 to i8*
  br i1 %52, label %58, label %75

; <label>:58:                                     ; preds = %42
  %59 = bitcast %"class.std::vector"* %7 to i8*
  br label %60

; <label>:60:                                     ; preds = %58, %74
  %61 = load i8, i8* %47, align 8, !tbaa !19, !range !29
  %62 = icmp eq i8 %61, 1
  br i1 %62, label %64, label %63, !prof !30

; <label>:63:                                     ; preds = %60
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %64

; <label>:64:                                     ; preds = %63, %60
  %65 = load i64, i64* %48, align 8, !tbaa !31
  %66 = add i64 %65, 1
  store i64 %66, i64* %48, align 8, !tbaa !31
  %67 = load i64, i64* %49, align 8, !tbaa !32
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %69, label %107, !prof !30

; <label>:69:                                     ; preds = %64
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull %59, i8 0, i64 24, i32 8, i1 false)
  store i64* null, i64** %54, align 8, !tbaa !7
  call void @_Z9quickSortRSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %7, i32 0, i32 %46)
  %70 = load i64*, i64** %53, align 8, !tbaa !1
  %71 = icmp eq i64* %70, null
  br i1 %71, label %74, label %72

; <label>:72:                                     ; preds = %69
  %73 = bitcast i64* %70 to i8*
  call void @_ZdlPv(i8* %73) #10
  br label %74

; <label>:74:                                     ; preds = %72, %69
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #10
  br label %60

; <label>:75:                                     ; preds = %42
  %76 = icmp ugt i64 %51, 2305843009213693951
  br i1 %76, label %79, label %77

; <label>:77:                                     ; preds = %75
  %78 = bitcast %"class.std::vector"* %7 to i8**
  br label %89

; <label>:79:                                     ; preds = %75
  %80 = load i8, i8* %47, align 8, !tbaa !19, !range !29
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %83, label %82, !prof !30

; <label>:82:                                     ; preds = %79
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %83

; <label>:83:                                     ; preds = %82, %79
  %84 = load i64, i64* %48, align 8, !tbaa !31
  %85 = add i64 %84, 1
  store i64 %85, i64* %48, align 8, !tbaa !31
  %86 = load i64, i64* %49, align 8, !tbaa !32
  %87 = icmp ult i64 %84, %86
  br i1 %87, label %88, label %109, !prof !30

; <label>:88:                                     ; preds = %83
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull %50, i8 0, i64 24, i32 8, i1 false) #10
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:89:                                     ; preds = %77, %106
  %90 = load i8, i8* %47, align 8, !tbaa !19, !range !29
  %91 = icmp eq i8 %90, 1
  br i1 %91, label %93, label %92, !prof !30

; <label>:92:                                     ; preds = %89
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %93

; <label>:93:                                     ; preds = %92, %89
  %94 = load i64, i64* %48, align 8, !tbaa !31
  %95 = add i64 %94, 1
  store i64 %95, i64* %48, align 8, !tbaa !31
  %96 = load i64, i64* %49, align 8, !tbaa !32
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %108, !prof !30

; <label>:98:                                     ; preds = %93
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull %50, i8 0, i64 24, i32 8, i1 false) #10
  %99 = call i8* @_Znwm(i64 %43) #10
  %100 = bitcast i8* %99 to i64*
  store i8* %99, i8** %78, align 8, !tbaa !1
  store i8* %99, i8** %55, align 8, !tbaa !7
  %101 = getelementptr inbounds i64, i64* %100, i64 %51
  store i64* %101, i64** %56, align 8, !tbaa !8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %99, i8* %57, i64 %43, i32 8, i1 false) #10
  store i64* %101, i64** %54, align 8, !tbaa !7
  call void @_Z9quickSortRSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %7, i32 0, i32 %46)
  %102 = load i64*, i64** %53, align 8, !tbaa !1
  %103 = icmp eq i64* %102, null
  br i1 %103, label %106, label %104

; <label>:104:                                    ; preds = %98
  %105 = bitcast i64* %102 to i8*
  call void @_ZdlPv(i8* %105) #10
  br label %106

; <label>:106:                                    ; preds = %98, %104
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #10
  br label %89

; <label>:107:                                    ; preds = %64
  br label %109

; <label>:108:                                    ; preds = %93
  br label %109

; <label>:109:                                    ; preds = %108, %107, %83
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #10
  %110 = icmp eq i64* %15, null
  br i1 %110, label %112, label %111

; <label>:111:                                    ; preds = %109
  call void @_ZdlPv(i8* %57) #10
  br label %112

; <label>:112:                                    ; preds = %109, %111
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #10
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define i32 @_Z10partition2RSt6vectorIlSaIlEEii(%"class.std::vector"* nocapture readonly dereferenceable(24), i32, i32) local_unnamed_addr #4 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8, !tbaa !1
  %7 = getelementptr inbounds i64, i64* %6, i64 %4
  %8 = load i64, i64* %7, align 8, !tbaa !9
  %9 = add nsw i32 %1, -1
  %10 = add nsw i32 %2, 1
  %11 = shl i64 %8, 32
  %12 = ashr exact i64 %11, 32
  br label %13

; <label>:13:                                     ; preds = %36, %3
  %14 = phi i32 [ %9, %3 ], [ %32, %36 ]
  %15 = phi i32 [ %10, %3 ], [ %33, %36 ]
  %16 = sext i32 %14 to i64
  br label %17

; <label>:17:                                     ; preds = %17, %13
  %18 = phi i64 [ %19, %17 ], [ %16, %13 ]
  %19 = add nsw i64 %18, 1
  %20 = getelementptr inbounds i64, i64* %6, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !9
  %22 = icmp slt i64 %21, %12
  br i1 %22, label %17, label %23

; <label>:23:                                     ; preds = %17
  %24 = sext i32 %15 to i64
  br label %25

; <label>:25:                                     ; preds = %23, %25
  %26 = phi i64 [ %24, %23 ], [ %27, %25 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds i64, i64* %6, i64 %27
  %29 = load i64, i64* %28, align 8, !tbaa !9
  %30 = icmp sgt i64 %29, %12
  br i1 %30, label %25, label %31

; <label>:31:                                     ; preds = %25
  %32 = trunc i64 %19 to i32
  %33 = trunc i64 %27 to i32
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %36, label %35

; <label>:35:                                     ; preds = %31
  ret i32 %33

; <label>:36:                                     ; preds = %31
  store i64 %29, i64* %20, align 8, !tbaa !9
  store i64 %21, i64* %28, align 8, !tbaa !9
  br label %13
}

; Function Attrs: nounwind uwtable
define void @_Z10quickSort2RSt6vectorIlSaIlEEii(%"class.std::vector"* readonly dereferenceable(24), i32, i32) local_unnamed_addr #1 {
  %4 = icmp sgt i32 %2, %1
  br i1 %4, label %5, label %44

; <label>:5:                                      ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0
  %8 = add nsw i32 %2, 1
  br label %9

; <label>:9:                                      ; preds = %5, %40
  %10 = phi i32 [ %1, %5 ], [ %37, %40 ]
  %11 = load i64*, i64** %7, align 8, !tbaa !1
  %12 = getelementptr inbounds i64, i64* %11, i64 %6
  %13 = load i64, i64* %12, align 8, !tbaa !9
  %14 = add nsw i32 %10, -1
  %15 = shl i64 %13, 32
  %16 = ashr exact i64 %15, 32
  br label %17

; <label>:17:                                     ; preds = %39, %9
  %18 = phi i32 [ %14, %9 ], [ %36, %39 ]
  %19 = phi i32 [ %8, %9 ], [ %37, %39 ]
  %20 = sext i32 %18 to i64
  br label %21

; <label>:21:                                     ; preds = %21, %17
  %22 = phi i64 [ %23, %21 ], [ %20, %17 ]
  %23 = add nsw i64 %22, 1
  %24 = getelementptr inbounds i64, i64* %11, i64 %23
  %25 = load i64, i64* %24, align 8, !tbaa !9
  %26 = icmp slt i64 %25, %16
  br i1 %26, label %21, label %27

; <label>:27:                                     ; preds = %21
  %28 = sext i32 %19 to i64
  br label %29

; <label>:29:                                     ; preds = %29, %27
  %30 = phi i64 [ %28, %27 ], [ %31, %29 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr inbounds i64, i64* %11, i64 %31
  %33 = load i64, i64* %32, align 8, !tbaa !9
  %34 = icmp sgt i64 %33, %16
  br i1 %34, label %29, label %35

; <label>:35:                                     ; preds = %29
  %36 = trunc i64 %23 to i32
  %37 = trunc i64 %31 to i32
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %35
  store i64 %33, i64* %24, align 8, !tbaa !9
  store i64 %25, i64* %32, align 8, !tbaa !9
  br label %17

; <label>:40:                                     ; preds = %35
  %41 = add nsw i32 %37, -1
  tail call void @_Z10quickSort2RSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %0, i32 %10, i32 %41)
  %42 = icmp slt i32 %37, %2
  br i1 %42, label %9, label %43

; <label>:43:                                     ; preds = %40
  br label %44

; <label>:44:                                     ; preds = %43, %3
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z13BM_quickSort2RN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) local_unnamed_addr #1 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  %7 = alloca %"class.std::vector", align 8
  %8 = bitcast %"class.std::vector"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #10
  %9 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8, !tbaa !12
  %11 = load i32, i32* %10, align 4, !tbaa !15
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %11)
  %12 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #10
  %13 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %13, align 8, !tbaa !17
  %14 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8, !tbaa !11
  %18 = ptrtoint i64* %15 to i64
  %19 = icmp eq i64* %15, %17
  %20 = ptrtoint i64* %17 to i64
  br i1 %19, label %42, label %21

; <label>:21:                                     ; preds = %1
  %22 = bitcast <2 x i64>* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #10
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !tbaa !9
  %23 = getelementptr inbounds i64, i64* %15, i64 1
  %24 = icmp eq i64* %23, %17
  br i1 %24, label %30, label %25

; <label>:25:                                     ; preds = %21
  %26 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %28 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %31

; <label>:29:                                     ; preds = %31
  br label %30

; <label>:30:                                     ; preds = %29, %21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #10
  br label %42

; <label>:31:                                     ; preds = %31, %25
  %32 = phi i64* [ %23, %25 ], [ %40, %31 ]
  %33 = ptrtoint i64* %32 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #10
  %34 = sub i64 %33, %18
  %35 = ashr exact i64 %34, 3
  store i64 0, i64* %27, align 8, !tbaa !33
  store i64 %35, i64* %28, align 8, !tbaa !35
  %36 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10
  %37 = getelementptr inbounds i64, i64* %15, i64 %36
  %38 = load i64, i64* %32, align 8, !tbaa !9
  %39 = load i64, i64* %37, align 8, !tbaa !9
  store i64 %39, i64* %32, align 8, !tbaa !9
  store i64 %38, i64* %37, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #10
  %40 = getelementptr inbounds i64, i64* %32, i64 1
  %41 = icmp eq i64* %40, %17
  br i1 %41, label %29, label %31

; <label>:42:                                     ; preds = %1, %30
  %43 = sub i64 %20, %18
  %44 = lshr exact i64 %43, 3
  %45 = add nuw nsw i64 %44, 4294967295
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 0
  %48 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 2
  %49 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 11
  %50 = bitcast %"class.std::vector"* %7 to i8*
  %51 = ashr exact i64 %43, 3
  %52 = icmp eq i64 %51, 0
  %53 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %7, i64 0, i32 0, i32 0, i32 0
  %54 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %7, i64 0, i32 0, i32 0, i32 1
  %55 = bitcast i64** %54 to i8**
  %56 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %7, i64 0, i32 0, i32 0, i32 2
  %57 = bitcast i64* %15 to i8*
  br i1 %52, label %58, label %75

; <label>:58:                                     ; preds = %42
  %59 = bitcast %"class.std::vector"* %7 to i8*
  br label %60

; <label>:60:                                     ; preds = %58, %74
  %61 = load i8, i8* %47, align 8, !tbaa !19, !range !29
  %62 = icmp eq i8 %61, 1
  br i1 %62, label %64, label %63, !prof !30

; <label>:63:                                     ; preds = %60
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %64

; <label>:64:                                     ; preds = %63, %60
  %65 = load i64, i64* %48, align 8, !tbaa !31
  %66 = add i64 %65, 1
  store i64 %66, i64* %48, align 8, !tbaa !31
  %67 = load i64, i64* %49, align 8, !tbaa !32
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %69, label %107, !prof !30

; <label>:69:                                     ; preds = %64
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull %59, i8 0, i64 24, i32 8, i1 false)
  store i64* null, i64** %54, align 8, !tbaa !7
  call void @_Z10quickSort2RSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %7, i32 0, i32 %46)
  %70 = load i64*, i64** %53, align 8, !tbaa !1
  %71 = icmp eq i64* %70, null
  br i1 %71, label %74, label %72

; <label>:72:                                     ; preds = %69
  %73 = bitcast i64* %70 to i8*
  call void @_ZdlPv(i8* %73) #10
  br label %74

; <label>:74:                                     ; preds = %72, %69
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #10
  br label %60

; <label>:75:                                     ; preds = %42
  %76 = icmp ugt i64 %51, 2305843009213693951
  br i1 %76, label %79, label %77

; <label>:77:                                     ; preds = %75
  %78 = bitcast %"class.std::vector"* %7 to i8**
  br label %89

; <label>:79:                                     ; preds = %75
  %80 = load i8, i8* %47, align 8, !tbaa !19, !range !29
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %83, label %82, !prof !30

; <label>:82:                                     ; preds = %79
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %83

; <label>:83:                                     ; preds = %82, %79
  %84 = load i64, i64* %48, align 8, !tbaa !31
  %85 = add i64 %84, 1
  store i64 %85, i64* %48, align 8, !tbaa !31
  %86 = load i64, i64* %49, align 8, !tbaa !32
  %87 = icmp ult i64 %84, %86
  br i1 %87, label %88, label %109, !prof !30

; <label>:88:                                     ; preds = %83
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull %50, i8 0, i64 24, i32 8, i1 false) #10
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:89:                                     ; preds = %77, %106
  %90 = load i8, i8* %47, align 8, !tbaa !19, !range !29
  %91 = icmp eq i8 %90, 1
  br i1 %91, label %93, label %92, !prof !30

; <label>:92:                                     ; preds = %89
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %93

; <label>:93:                                     ; preds = %92, %89
  %94 = load i64, i64* %48, align 8, !tbaa !31
  %95 = add i64 %94, 1
  store i64 %95, i64* %48, align 8, !tbaa !31
  %96 = load i64, i64* %49, align 8, !tbaa !32
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %108, !prof !30

; <label>:98:                                     ; preds = %93
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull %50, i8 0, i64 24, i32 8, i1 false) #10
  %99 = call i8* @_Znwm(i64 %43) #10
  %100 = bitcast i8* %99 to i64*
  store i8* %99, i8** %78, align 8, !tbaa !1
  store i8* %99, i8** %55, align 8, !tbaa !7
  %101 = getelementptr inbounds i64, i64* %100, i64 %51
  store i64* %101, i64** %56, align 8, !tbaa !8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %99, i8* %57, i64 %43, i32 8, i1 false) #10
  store i64* %101, i64** %54, align 8, !tbaa !7
  call void @_Z10quickSort2RSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %7, i32 0, i32 %46)
  %102 = load i64*, i64** %53, align 8, !tbaa !1
  %103 = icmp eq i64* %102, null
  br i1 %103, label %106, label %104

; <label>:104:                                    ; preds = %98
  %105 = bitcast i64* %102 to i8*
  call void @_ZdlPv(i8* %105) #10
  br label %106

; <label>:106:                                    ; preds = %98, %104
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #10
  br label %89

; <label>:107:                                    ; preds = %64
  br label %109

; <label>:108:                                    ; preds = %93
  br label %109

; <label>:109:                                    ; preds = %108, %107, %83
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #10
  %110 = icmp eq i64* %15, null
  br i1 %110, label %112, label %111

; <label>:111:                                    ; preds = %109
  call void @_ZdlPv(i8* %57) #10
  br label %112

; <label>:112:                                    ; preds = %109, %111
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #10
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @_Z6insertRSt6vectorIlSaIlEE(%"class.std::vector"* nocapture readonly dereferenceable(24)) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast i64** %2 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !7
  %5 = bitcast %"class.std::vector"* %0 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !1
  %7 = sub i64 %4, %6
  %8 = lshr exact i64 %7, 3
  %9 = add nuw nsw i64 %8, 4294967295
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 1
  %12 = inttoptr i64 %6 to i64*
  br i1 %11, label %13, label %44

; <label>:13:                                     ; preds = %1
  %14 = and i64 %9, 4294967295
  %15 = add nsw i64 %14, -1
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %14, 2
  br i1 %17, label %21, label %18

; <label>:18:                                     ; preds = %13
  %19 = sub nsw i64 %15, %16
  br label %45

; <label>:20:                                     ; preds = %78
  br label %21

; <label>:21:                                     ; preds = %20, %13
  %22 = phi i64 [ 1, %13 ], [ %81, %20 ]
  %23 = icmp eq i64 %16, 0
  br i1 %23, label %43, label %24

; <label>:24:                                     ; preds = %21
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = getelementptr inbounds i64, i64* %12, i64 %22
  %27 = load i64, i64* %26, align 8, !tbaa !9
  %28 = shl i64 %27, 32
  %29 = ashr exact i64 %28, 32
  br label %30

; <label>:30:                                     ; preds = %36, %25
  %31 = phi i64 [ %22, %25 ], [ %32, %36 ]
  %32 = add nsw i64 %31, -1
  %33 = getelementptr inbounds i64, i64* %12, i64 %32
  %34 = load i64, i64* %33, align 8, !tbaa !9
  %35 = icmp sgt i64 %34, %29
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds i64, i64* %12, i64 %31
  store i64 %34, i64* %37, align 8, !tbaa !9
  %38 = icmp sgt i64 %31, 1
  br i1 %38, label %30, label %39

; <label>:39:                                     ; preds = %36, %30
  %40 = phi i64 [ %31, %30 ], [ %32, %36 ]
  %41 = getelementptr inbounds i64, i64* %12, i64 %40
  store i64 %29, i64* %41, align 8, !tbaa !9
  br label %42

; <label>:42:                                     ; preds = %39
  br label %43

; <label>:43:                                     ; preds = %21, %42
  br label %44

; <label>:44:                                     ; preds = %43, %1
  ret void

; <label>:45:                                     ; preds = %78, %18
  %46 = phi i64 [ 1, %18 ], [ %81, %78 ]
  %47 = phi i64 [ %19, %18 ], [ %82, %78 ]
  %48 = getelementptr inbounds i64, i64* %12, i64 %46
  %49 = load i64, i64* %48, align 8, !tbaa !9
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  br label %52

; <label>:52:                                     ; preds = %45, %58
  %53 = phi i64 [ %46, %45 ], [ %54, %58 ]
  %54 = add nsw i64 %53, -1
  %55 = getelementptr inbounds i64, i64* %12, i64 %54
  %56 = load i64, i64* %55, align 8, !tbaa !9
  %57 = icmp sgt i64 %56, %51
  br i1 %57, label %58, label %61

; <label>:58:                                     ; preds = %52
  %59 = getelementptr inbounds i64, i64* %12, i64 %53
  store i64 %56, i64* %59, align 8, !tbaa !9
  %60 = icmp sgt i64 %53, 1
  br i1 %60, label %52, label %61

; <label>:61:                                     ; preds = %52, %58
  %62 = phi i64 [ %53, %52 ], [ %54, %58 ]
  %63 = getelementptr inbounds i64, i64* %12, i64 %62
  store i64 %51, i64* %63, align 8, !tbaa !9
  %64 = add nuw nsw i64 %46, 1
  %65 = getelementptr inbounds i64, i64* %12, i64 %64
  %66 = load i64, i64* %65, align 8, !tbaa !9
  %67 = shl i64 %66, 32
  %68 = ashr exact i64 %67, 32
  br label %69

; <label>:69:                                     ; preds = %75, %61
  %70 = phi i64 [ %64, %61 ], [ %71, %75 ]
  %71 = add nsw i64 %70, -1
  %72 = getelementptr inbounds i64, i64* %12, i64 %71
  %73 = load i64, i64* %72, align 8, !tbaa !9
  %74 = icmp sgt i64 %73, %68
  br i1 %74, label %75, label %78

; <label>:75:                                     ; preds = %69
  %76 = getelementptr inbounds i64, i64* %12, i64 %70
  store i64 %73, i64* %76, align 8, !tbaa !9
  %77 = icmp sgt i64 %70, 1
  br i1 %77, label %69, label %78

; <label>:78:                                     ; preds = %75, %69
  %79 = phi i64 [ %70, %69 ], [ %71, %75 ]
  %80 = getelementptr inbounds i64, i64* %12, i64 %79
  store i64 %68, i64* %80, align 8, !tbaa !9
  %81 = add nsw i64 %46, 2
  %82 = add i64 %47, -2
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %20, label %45
}

; Function Attrs: nounwind uwtable
define void @_Z9BM_insertRN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) local_unnamed_addr #1 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  %7 = bitcast %"class.std::vector"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10
  %8 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8, !tbaa !12
  %10 = load i32, i32* %9, align 4, !tbaa !15
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %10)
  %11 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #10
  %12 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %12, align 8, !tbaa !17
  %13 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8, !tbaa !11
  %17 = ptrtoint i64* %14 to i64
  %18 = icmp eq i64* %14, %16
  %19 = ptrtoint i64* %16 to i64
  br i1 %18, label %41, label %20

; <label>:20:                                     ; preds = %1
  %21 = bitcast <2 x i64>* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #10
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !tbaa !9
  %22 = getelementptr inbounds i64, i64* %14, i64 1
  %23 = icmp eq i64* %22, %16
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %20
  %25 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %26 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %30

; <label>:28:                                     ; preds = %30
  br label %29

; <label>:29:                                     ; preds = %28, %20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #10
  br label %41

; <label>:30:                                     ; preds = %30, %24
  %31 = phi i64* [ %22, %24 ], [ %39, %30 ]
  %32 = ptrtoint i64* %31 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #10
  %33 = sub i64 %32, %17
  %34 = ashr exact i64 %33, 3
  store i64 0, i64* %26, align 8, !tbaa !33
  store i64 %34, i64* %27, align 8, !tbaa !35
  %35 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10
  %36 = getelementptr inbounds i64, i64* %14, i64 %35
  %37 = load i64, i64* %31, align 8, !tbaa !9
  %38 = load i64, i64* %36, align 8, !tbaa !9
  store i64 %38, i64* %31, align 8, !tbaa !9
  store i64 %37, i64* %36, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #10
  %39 = getelementptr inbounds i64, i64* %31, i64 1
  %40 = icmp eq i64* %39, %16
  br i1 %40, label %28, label %30

; <label>:41:                                     ; preds = %1, %29
  %42 = sub i64 %19, %17
  %43 = lshr exact i64 %42, 3
  %44 = add nuw nsw i64 %43, 4294967295
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 0
  %47 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 2
  %48 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 11
  %49 = ashr exact i64 %42, 3
  %50 = icmp eq i64 %49, 0
  %51 = icmp eq i64 %42, 0
  %52 = icmp sgt i32 %45, 1
  %53 = and i64 %44, 4294967295
  %54 = bitcast i64* %14 to i8*
  br i1 %50, label %55, label %71

; <label>:55:                                     ; preds = %41
  %56 = shl nuw nsw i64 %53, 3
  %57 = add nsw i64 %56, -8
  br label %58

; <label>:58:                                     ; preds = %69, %55
  %59 = load i8, i8* %46, align 8, !tbaa !19, !range !29
  %60 = icmp eq i8 %59, 1
  br i1 %60, label %62, label %61, !prof !30

; <label>:61:                                     ; preds = %58
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %62

; <label>:62:                                     ; preds = %61, %58
  %63 = load i64, i64* %47, align 8, !tbaa !31
  %64 = add i64 %63, 1
  store i64 %64, i64* %47, align 8, !tbaa !31
  %65 = load i64, i64* %48, align 8, !tbaa !32
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %153, !prof !30

; <label>:67:                                     ; preds = %62
  br i1 %51, label %69, label %68

; <label>:68:                                     ; preds = %67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* null, i8* %54, i64 %42, i32 8, i1 false) #10
  br label %69

; <label>:69:                                     ; preds = %68, %67
  br i1 %52, label %70, label %58

; <label>:70:                                     ; preds = %69
  call void @llvm.memset.p0i8.i64(i8* inttoptr (i64 8 to i8*), i8 0, i64 %57, i32 8, i1 false)
  call void @llvm.trap()
  unreachable

; <label>:71:                                     ; preds = %41
  %72 = icmp ugt i64 %49, 2305843009213693951
  br i1 %72, label %79, label %73

; <label>:73:                                     ; preds = %71
  %74 = add nsw i64 %53, -1
  %75 = and i64 %74, 1
  %76 = icmp eq i64 %53, 2
  %77 = sub nsw i64 %74, %75
  %78 = icmp eq i64 %75, 0
  br label %88

; <label>:79:                                     ; preds = %71
  %80 = load i8, i8* %46, align 8, !tbaa !19, !range !29
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %83, label %82, !prof !30

; <label>:82:                                     ; preds = %79
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %83

; <label>:83:                                     ; preds = %82, %79
  %84 = load i64, i64* %47, align 8, !tbaa !31
  %85 = add i64 %84, 1
  store i64 %85, i64* %47, align 8, !tbaa !31
  %86 = load i64, i64* %48, align 8, !tbaa !32
  %87 = icmp ult i64 %84, %86
  br i1 %87, label %97, label %155, !prof !30

; <label>:88:                                     ; preds = %73, %152
  %89 = load i8, i8* %46, align 8, !tbaa !19, !range !29
  %90 = icmp eq i8 %89, 1
  br i1 %90, label %92, label %91, !prof !30

; <label>:91:                                     ; preds = %88
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %92

; <label>:92:                                     ; preds = %91, %88
  %93 = load i64, i64* %47, align 8, !tbaa !31
  %94 = add i64 %93, 1
  store i64 %94, i64* %47, align 8, !tbaa !31
  %95 = load i64, i64* %48, align 8, !tbaa !32
  %96 = icmp ult i64 %93, %95
  br i1 %96, label %98, label %154, !prof !30

; <label>:97:                                     ; preds = %83
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:98:                                     ; preds = %92
  %99 = call i8* @_Znwm(i64 %42) #10
  %100 = bitcast i8* %99 to i64*
  br i1 %51, label %102, label %101

; <label>:101:                                    ; preds = %98
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %99, i8* %54, i64 %42, i32 8, i1 false) #10
  br label %102

; <label>:102:                                    ; preds = %98, %101
  br i1 %52, label %103, label %152

; <label>:103:                                    ; preds = %102
  br i1 %76, label %130, label %104

; <label>:104:                                    ; preds = %103
  br label %105

; <label>:105:                                    ; preds = %169, %104
  %106 = phi i64 [ 1, %104 ], [ %172, %169 ]
  %107 = phi i64 [ %77, %104 ], [ %173, %169 ]
  %108 = getelementptr inbounds i64, i64* %100, i64 %106
  %109 = load i64, i64* %108, align 8, !tbaa !9
  %110 = shl i64 %109, 32
  %111 = ashr exact i64 %110, 32
  br label %112

; <label>:112:                                    ; preds = %118, %105
  %113 = phi i64 [ %106, %105 ], [ %114, %118 ]
  %114 = add nsw i64 %113, -1
  %115 = getelementptr inbounds i64, i64* %100, i64 %114
  %116 = load i64, i64* %115, align 8, !tbaa !9
  %117 = icmp sgt i64 %116, %111
  br i1 %117, label %118, label %121

; <label>:118:                                    ; preds = %112
  %119 = getelementptr inbounds i64, i64* %100, i64 %113
  store i64 %116, i64* %119, align 8, !tbaa !9
  %120 = icmp sgt i64 %113, 1
  br i1 %120, label %112, label %121

; <label>:121:                                    ; preds = %118, %112
  %122 = phi i64 [ %113, %112 ], [ %114, %118 ]
  %123 = getelementptr inbounds i64, i64* %100, i64 %122
  store i64 %111, i64* %123, align 8, !tbaa !9
  %124 = add nuw nsw i64 %106, 1
  %125 = getelementptr inbounds i64, i64* %100, i64 %124
  %126 = load i64, i64* %125, align 8, !tbaa !9
  %127 = shl i64 %126, 32
  %128 = ashr exact i64 %127, 32
  br label %160

; <label>:129:                                    ; preds = %169
  br label %130

; <label>:130:                                    ; preds = %129, %103
  %131 = phi i64 [ 1, %103 ], [ %172, %129 ]
  br i1 %78, label %151, label %132

; <label>:132:                                    ; preds = %130
  br label %133

; <label>:133:                                    ; preds = %132
  %134 = getelementptr inbounds i64, i64* %100, i64 %131
  %135 = load i64, i64* %134, align 8, !tbaa !9
  %136 = shl i64 %135, 32
  %137 = ashr exact i64 %136, 32
  br label %138

; <label>:138:                                    ; preds = %144, %133
  %139 = phi i64 [ %131, %133 ], [ %140, %144 ]
  %140 = add nsw i64 %139, -1
  %141 = getelementptr inbounds i64, i64* %100, i64 %140
  %142 = load i64, i64* %141, align 8, !tbaa !9
  %143 = icmp sgt i64 %142, %137
  br i1 %143, label %144, label %147

; <label>:144:                                    ; preds = %138
  %145 = getelementptr inbounds i64, i64* %100, i64 %139
  store i64 %142, i64* %145, align 8, !tbaa !9
  %146 = icmp sgt i64 %139, 1
  br i1 %146, label %138, label %147

; <label>:147:                                    ; preds = %144, %138
  %148 = phi i64 [ %139, %138 ], [ %140, %144 ]
  %149 = getelementptr inbounds i64, i64* %100, i64 %148
  store i64 %137, i64* %149, align 8, !tbaa !9
  br label %150

; <label>:150:                                    ; preds = %147
  br label %151

; <label>:151:                                    ; preds = %130, %150
  br label %152

; <label>:152:                                    ; preds = %151, %102
  call void @_ZdlPv(i8* nonnull %99) #10
  br label %88

; <label>:153:                                    ; preds = %62
  br label %155

; <label>:154:                                    ; preds = %92
  br label %155

; <label>:155:                                    ; preds = %154, %153, %83
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10
  %156 = icmp eq i64* %14, null
  br i1 %156, label %159, label %157

; <label>:157:                                    ; preds = %155
  %158 = bitcast i64* %14 to i8*
  call void @_ZdlPv(i8* %158) #10
  br label %159

; <label>:159:                                    ; preds = %155, %157
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10
  ret void

; <label>:160:                                    ; preds = %166, %121
  %161 = phi i64 [ %124, %121 ], [ %162, %166 ]
  %162 = add nsw i64 %161, -1
  %163 = getelementptr inbounds i64, i64* %100, i64 %162
  %164 = load i64, i64* %163, align 8, !tbaa !9
  %165 = icmp sgt i64 %164, %128
  br i1 %165, label %166, label %169

; <label>:166:                                    ; preds = %160
  %167 = getelementptr inbounds i64, i64* %100, i64 %161
  store i64 %164, i64* %167, align 8, !tbaa !9
  %168 = icmp sgt i64 %161, 1
  br i1 %168, label %160, label %169

; <label>:169:                                    ; preds = %166, %160
  %170 = phi i64 [ %161, %160 ], [ %162, %166 ]
  %171 = getelementptr inbounds i64, i64* %100, i64 %170
  store i64 %128, i64* %171, align 8, !tbaa !9
  %172 = add nsw i64 %106, 2
  %173 = add i64 %107, -2
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %129, label %105
}

; Function Attrs: norecurse nounwind uwtable
define void @_Z6bubbleRSt6vectorIlSaIlEE(%"class.std::vector"* nocapture readonly dereferenceable(24)) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast i64** %2 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !7
  %5 = bitcast %"class.std::vector"* %0 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = sub i64 %4, %6
  %8 = lshr exact i64 %7, 3
  %9 = trunc i64 %8 to i32
  %10 = inttoptr i64 %6 to i64*
  br label %11

; <label>:11:                                     ; preds = %43, %1
  %12 = phi i32 [ %9, %1 ], [ %44, %43 ]
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %65

; <label>:14:                                     ; preds = %11
  %15 = load i64, i64* %10, align 8, !tbaa !9
  %16 = and i32 %12, 1
  %17 = xor i32 %16, 1
  %18 = icmp eq i32 %12, 2
  br i1 %18, label %25, label %19

; <label>:19:                                     ; preds = %14
  %20 = zext i32 %17 to i64
  %21 = zext i32 %12 to i64
  %22 = add nsw i64 %21, -1
  %23 = sub nsw i64 %22, %20
  br label %46

; <label>:24:                                     ; preds = %69
  br label %25

; <label>:25:                                     ; preds = %24, %14
  %26 = phi i32 [ undef, %14 ], [ %71, %24 ]
  %27 = phi i64 [ %15, %14 ], [ %70, %24 ]
  %28 = phi i64 [ 1, %14 ], [ %72, %24 ]
  %29 = phi i32 [ 0, %14 ], [ %71, %24 ]
  %30 = icmp eq i32 %17, 0
  br i1 %30, label %43, label %31

; <label>:31:                                     ; preds = %25
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = getelementptr inbounds i64, i64* %10, i64 %28
  %34 = load i64, i64* %33, align 8, !tbaa !9
  %35 = icmp sgt i64 %27, %34
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %32
  %37 = add nsw i64 %28, -1
  %38 = getelementptr inbounds i64, i64* %10, i64 %37
  store i64 %34, i64* %38, align 8, !tbaa !9
  store i64 %27, i64* %33, align 8, !tbaa !9
  %39 = trunc i64 %28 to i32
  br label %40

; <label>:40:                                     ; preds = %36, %32
  %41 = phi i32 [ %39, %36 ], [ %29, %32 ]
  br label %42

; <label>:42:                                     ; preds = %40
  br label %43

; <label>:43:                                     ; preds = %25, %42
  %44 = phi i32 [ %26, %25 ], [ %41, %42 ]
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %11, label %65

; <label>:46:                                     ; preds = %69, %19
  %47 = phi i64 [ %15, %19 ], [ %70, %69 ]
  %48 = phi i64 [ 1, %19 ], [ %72, %69 ]
  %49 = phi i32 [ 0, %19 ], [ %71, %69 ]
  %50 = phi i64 [ %23, %19 ], [ %73, %69 ]
  %51 = getelementptr inbounds i64, i64* %10, i64 %48
  %52 = load i64, i64* %51, align 8, !tbaa !9
  %53 = icmp sgt i64 %47, %52
  br i1 %53, label %54, label %58

; <label>:54:                                     ; preds = %46
  %55 = add nsw i64 %48, -1
  %56 = getelementptr inbounds i64, i64* %10, i64 %55
  store i64 %52, i64* %56, align 8, !tbaa !9
  store i64 %47, i64* %51, align 8, !tbaa !9
  %57 = trunc i64 %48 to i32
  br label %58

; <label>:58:                                     ; preds = %46, %54
  %59 = phi i64 [ %47, %54 ], [ %52, %46 ]
  %60 = phi i32 [ %57, %54 ], [ %49, %46 ]
  %61 = add nuw nsw i64 %48, 1
  %62 = getelementptr inbounds i64, i64* %10, i64 %61
  %63 = load i64, i64* %62, align 8, !tbaa !9
  %64 = icmp sgt i64 %59, %63
  br i1 %64, label %66, label %69

; <label>:65:                                     ; preds = %11, %43
  ret void

; <label>:66:                                     ; preds = %58
  %67 = getelementptr inbounds i64, i64* %10, i64 %48
  store i64 %63, i64* %67, align 8, !tbaa !9
  store i64 %59, i64* %62, align 8, !tbaa !9
  %68 = trunc i64 %61 to i32
  br label %69

; <label>:69:                                     ; preds = %66, %58
  %70 = phi i64 [ %59, %66 ], [ %63, %58 ]
  %71 = phi i32 [ %68, %66 ], [ %60, %58 ]
  %72 = add nsw i64 %48, 2
  %73 = add i64 %50, -2
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %24, label %46
}

; Function Attrs: nounwind uwtable
define void @_Z9BM_bubbleRN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) #1 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  %7 = bitcast %"class.std::vector"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10
  %8 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8, !tbaa !12
  %10 = load i32, i32* %9, align 4, !tbaa !15
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %10)
  %11 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #10
  %12 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %12, align 8, !tbaa !17
  %13 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8, !tbaa !11
  %17 = ptrtoint i64* %14 to i64
  %18 = icmp eq i64* %14, %16
  %19 = ptrtoint i64* %16 to i64
  br i1 %18, label %41, label %20

; <label>:20:                                     ; preds = %1
  %21 = bitcast <2 x i64>* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #10
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !tbaa !9
  %22 = getelementptr inbounds i64, i64* %14, i64 1
  %23 = icmp eq i64* %22, %16
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %20
  %25 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %26 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %30

; <label>:28:                                     ; preds = %30
  br label %29

; <label>:29:                                     ; preds = %28, %20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #10
  br label %41

; <label>:30:                                     ; preds = %30, %24
  %31 = phi i64* [ %22, %24 ], [ %39, %30 ]
  %32 = ptrtoint i64* %31 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #10
  %33 = sub i64 %32, %17
  %34 = ashr exact i64 %33, 3
  store i64 0, i64* %26, align 8, !tbaa !33
  store i64 %34, i64* %27, align 8, !tbaa !35
  %35 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10
  %36 = getelementptr inbounds i64, i64* %14, i64 %35
  %37 = load i64, i64* %31, align 8, !tbaa !9
  %38 = load i64, i64* %36, align 8, !tbaa !9
  store i64 %38, i64* %31, align 8, !tbaa !9
  store i64 %37, i64* %36, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #10
  %39 = getelementptr inbounds i64, i64* %31, i64 1
  %40 = icmp eq i64* %39, %16
  br i1 %40, label %28, label %30

; <label>:41:                                     ; preds = %1, %29
  %42 = sub i64 %19, %17
  %43 = lshr exact i64 %42, 3
  %44 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 0
  %45 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 2
  %46 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 11
  %47 = ashr exact i64 %42, 3
  %48 = icmp eq i64 %47, 0
  %49 = icmp eq i64 %42, 0
  %50 = trunc i64 %43 to i32
  %51 = bitcast i64* %14 to i8*
  br i1 %48, label %52, label %67

; <label>:52:                                     ; preds = %41
  %53 = icmp sgt i32 %50, 1
  br label %54

; <label>:54:                                     ; preds = %52, %65
  %55 = load i8, i8* %44, align 8, !tbaa !19, !range !29
  %56 = icmp eq i8 %55, 1
  br i1 %56, label %58, label %57, !prof !30

; <label>:57:                                     ; preds = %54
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %58

; <label>:58:                                     ; preds = %57, %54
  %59 = load i64, i64* %45, align 8, !tbaa !31
  %60 = add i64 %59, 1
  store i64 %60, i64* %45, align 8, !tbaa !31
  %61 = load i64, i64* %46, align 8, !tbaa !32
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %149, !prof !30

; <label>:63:                                     ; preds = %58
  br i1 %49, label %65, label %64

; <label>:64:                                     ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* null, i8* %51, i64 %42, i32 8, i1 false) #10
  br label %65

; <label>:65:                                     ; preds = %64, %63
  br i1 %53, label %66, label %54

; <label>:66:                                     ; preds = %65
  call void @llvm.trap()
  unreachable

; <label>:67:                                     ; preds = %41
  %68 = icmp ugt i64 %47, 2305843009213693951
  br i1 %68, label %70, label %69

; <label>:69:                                     ; preds = %67
  br label %79

; <label>:70:                                     ; preds = %67
  %71 = load i8, i8* %44, align 8, !tbaa !19, !range !29
  %72 = icmp eq i8 %71, 1
  br i1 %72, label %74, label %73, !prof !30

; <label>:73:                                     ; preds = %70
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %74

; <label>:74:                                     ; preds = %73, %70
  %75 = load i64, i64* %45, align 8, !tbaa !31
  %76 = add i64 %75, 1
  store i64 %76, i64* %45, align 8, !tbaa !31
  %77 = load i64, i64* %46, align 8, !tbaa !32
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %88, label %151, !prof !30

; <label>:79:                                     ; preds = %69, %148
  %80 = load i8, i8* %44, align 8, !tbaa !19, !range !29
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %83, label %82, !prof !30

; <label>:82:                                     ; preds = %79
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  br label %83

; <label>:83:                                     ; preds = %82, %79
  %84 = load i64, i64* %45, align 8, !tbaa !31
  %85 = add i64 %84, 1
  store i64 %85, i64* %45, align 8, !tbaa !31
  %86 = load i64, i64* %46, align 8, !tbaa !32
  %87 = icmp ult i64 %84, %86
  br i1 %87, label %89, label %150, !prof !30

; <label>:88:                                     ; preds = %74
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:89:                                     ; preds = %83
  %90 = call i8* @_Znwm(i64 %42) #10
  %91 = bitcast i8* %90 to i64*
  br i1 %49, label %93, label %92

; <label>:92:                                     ; preds = %89
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %90, i8* %51, i64 %42, i32 8, i1 false) #10
  br label %93

; <label>:93:                                     ; preds = %89, %92
  br label %94

; <label>:94:                                     ; preds = %93, %126
  %95 = phi i32 [ %127, %126 ], [ %50, %93 ]
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %148

; <label>:97:                                     ; preds = %94
  %98 = load i64, i64* %91, align 8, !tbaa !9
  %99 = and i32 %95, 1
  %100 = xor i32 %99, 1
  %101 = icmp eq i32 %95, 2
  br i1 %101, label %108, label %102

; <label>:102:                                    ; preds = %97
  %103 = zext i32 %100 to i64
  %104 = zext i32 %95 to i64
  %105 = add nsw i64 %104, -1
  %106 = sub nsw i64 %105, %103
  br label %129

; <label>:107:                                    ; preds = %159
  br label %108

; <label>:108:                                    ; preds = %107, %97
  %109 = phi i32 [ undef, %97 ], [ %161, %107 ]
  %110 = phi i64 [ %98, %97 ], [ %160, %107 ]
  %111 = phi i64 [ 1, %97 ], [ %162, %107 ]
  %112 = phi i32 [ 0, %97 ], [ %161, %107 ]
  %113 = icmp eq i32 %100, 0
  br i1 %113, label %126, label %114

; <label>:114:                                    ; preds = %108
  br label %115

; <label>:115:                                    ; preds = %114
  %116 = getelementptr inbounds i64, i64* %91, i64 %111
  %117 = load i64, i64* %116, align 8, !tbaa !9
  %118 = icmp sgt i64 %110, %117
  br i1 %118, label %119, label %123

; <label>:119:                                    ; preds = %115
  %120 = add nsw i64 %111, -1
  %121 = getelementptr inbounds i64, i64* %91, i64 %120
  store i64 %117, i64* %121, align 8, !tbaa !9
  store i64 %110, i64* %116, align 8, !tbaa !9
  %122 = trunc i64 %111 to i32
  br label %123

; <label>:123:                                    ; preds = %119, %115
  %124 = phi i32 [ %122, %119 ], [ %112, %115 ]
  br label %125

; <label>:125:                                    ; preds = %123
  br label %126

; <label>:126:                                    ; preds = %108, %125
  %127 = phi i32 [ %109, %108 ], [ %124, %125 ]
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %94, label %148

; <label>:129:                                    ; preds = %159, %102
  %130 = phi i64 [ %98, %102 ], [ %160, %159 ]
  %131 = phi i64 [ 1, %102 ], [ %162, %159 ]
  %132 = phi i32 [ 0, %102 ], [ %161, %159 ]
  %133 = phi i64 [ %106, %102 ], [ %163, %159 ]
  %134 = getelementptr inbounds i64, i64* %91, i64 %131
  %135 = load i64, i64* %134, align 8, !tbaa !9
  %136 = icmp sgt i64 %130, %135
  br i1 %136, label %137, label %141

; <label>:137:                                    ; preds = %129
  %138 = add nsw i64 %131, -1
  %139 = getelementptr inbounds i64, i64* %91, i64 %138
  store i64 %135, i64* %139, align 8, !tbaa !9
  store i64 %130, i64* %134, align 8, !tbaa !9
  %140 = trunc i64 %131 to i32
  br label %141

; <label>:141:                                    ; preds = %137, %129
  %142 = phi i64 [ %130, %137 ], [ %135, %129 ]
  %143 = phi i32 [ %140, %137 ], [ %132, %129 ]
  %144 = add nuw nsw i64 %131, 1
  %145 = getelementptr inbounds i64, i64* %91, i64 %144
  %146 = load i64, i64* %145, align 8, !tbaa !9
  %147 = icmp sgt i64 %142, %146
  br i1 %147, label %156, label %159

; <label>:148:                                    ; preds = %94, %126
  call void @_ZdlPv(i8* nonnull %90) #10
  br label %79

; <label>:149:                                    ; preds = %58
  br label %151

; <label>:150:                                    ; preds = %83
  br label %151

; <label>:151:                                    ; preds = %150, %149, %74
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10
  %152 = icmp eq i64* %14, null
  br i1 %152, label %155, label %153

; <label>:153:                                    ; preds = %151
  %154 = bitcast i64* %14 to i8*
  call void @_ZdlPv(i8* %154) #10
  br label %155

; <label>:155:                                    ; preds = %151, %153
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10
  ret void

; <label>:156:                                    ; preds = %141
  %157 = getelementptr inbounds i64, i64* %91, i64 %131
  store i64 %146, i64* %157, align 8, !tbaa !9
  store i64 %142, i64* %145, align 8, !tbaa !9
  %158 = trunc i64 %144 to i32
  br label %159

; <label>:159:                                    ; preds = %156, %141
  %160 = phi i64 [ %142, %156 ], [ %146, %141 ]
  %161 = phi i32 [ %158, %156 ], [ %143, %141 ]
  %162 = add nsw i64 %131, 2
  %163 = add i64 %133, -2
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %107, label %129
}

declare %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(%"class.benchmark::internal::Benchmark"*) local_unnamed_addr #0

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #5

declare %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal9Benchmark15RangeMultiplierEi(%"class.benchmark::internal::Benchmark"*, i32) local_unnamed_addr #0

declare %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal9Benchmark5RangeEii(%"class.benchmark::internal::Benchmark"*, i32, i32) local_unnamed_addr #0

; Function Attrs: norecurse nounwind uwtable
define i32 @main(i32, i8**) local_unnamed_addr #4 {
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !15
  call void @_ZN9benchmark10InitializeEPiPPc(i32* nonnull %3, i8** %1) #10
  %4 = load i32, i32* %3, align 4, !tbaa !15
  %5 = call zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32 %4, i8** %1) #10
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %2
  %7 = call i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() #10
  br label %8

; <label>:8:                                      ; preds = %2, %6
  %9 = phi i32 [ 0, %6 ], [ 1, %2 ]
  ret i32 %9
}

declare void @_ZN9benchmark10InitializeEPiPPc(i32*, i8**) local_unnamed_addr #0

declare zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32, i8**) local_unnamed_addr #0

declare i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() local_unnamed_addr #0

declare void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"*) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"*) local_unnamed_addr #0

declare void @_ZN9benchmark8internal9BenchmarkC2EPKc(%"class.benchmark::internal::Benchmark"*, i8*) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"*, %"class.std::linear_congruential_engine"* dereferenceable(8), %"struct.std::uniform_int_distribution<unsigned long>::param_type"* dereferenceable(16)) local_unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %2, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %2, i64 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !33
  %9 = sub i64 %6, %8
  %10 = icmp ult i64 %9, 2147483645
  br i1 %10, label %11, label %25

; <label>:11:                                     ; preds = %3
  %12 = add i64 %9, 1
  %13 = udiv i64 2147483645, %12
  %14 = mul i64 %13, %12
  %15 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %1, i64 0, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !17
  br label %17

; <label>:17:                                     ; preds = %17, %11
  %18 = phi i64 [ %20, %17 ], [ %16, %11 ]
  %19 = mul i64 %18, 48271
  %20 = urem i64 %19, 2147483647
  %21 = add nsw i64 %20, -1
  %22 = icmp ult i64 %21, %14
  br i1 %22, label %23, label %17

; <label>:23:                                     ; preds = %17
  store i64 %20, i64* %15, align 8, !tbaa !17
  %24 = udiv i64 %21, %13
  br label %52

; <label>:25:                                     ; preds = %3
  %26 = icmp eq i64 %9, 2147483645
  br i1 %26, label %44, label %27

; <label>:27:                                     ; preds = %25
  %28 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %29 = udiv i64 %9, 2147483646
  %30 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %31 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  %32 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %1, i64 0, i32 0
  br label %33

; <label>:33:                                     ; preds = %27, %33
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #10
  store i64 0, i64* %30, align 8, !tbaa !33
  store i64 %29, i64* %31, align 8, !tbaa !35
  %34 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* %0, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %1, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4)
  %35 = mul i64 %34, 2147483646
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #10
  %36 = load i64, i64* %32, align 8, !tbaa !17
  %37 = mul i64 %36, 48271
  %38 = urem i64 %37, 2147483647
  store i64 %38, i64* %32, align 8, !tbaa !17
  %39 = add i64 %35, -1
  %40 = add i64 %39, %38
  %41 = icmp ugt i64 %40, %9
  %42 = icmp ult i64 %40, %35
  %43 = or i1 %41, %42
  br i1 %43, label %33, label %50

; <label>:44:                                     ; preds = %25
  %45 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %1, i64 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !17
  %47 = mul i64 %46, 48271
  %48 = urem i64 %47, 2147483647
  store i64 %48, i64* %45, align 8, !tbaa !17
  %49 = add nsw i64 %48, -1
  br label %52

; <label>:50:                                     ; preds = %33
  %51 = load i64, i64* %7, align 8, !tbaa !33
  br label %52

; <label>:52:                                     ; preds = %50, %44, %23
  %53 = phi i64 [ %8, %23 ], [ %8, %44 ], [ %51, %50 ]
  %54 = phi i64 [ %24, %23 ], [ %49, %44 ], [ %40, %50 ]
  %55 = add i64 %53, %54
  ret i64 %55
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_T0_(i64*, i64*, i64) local_unnamed_addr #1 comdat {
  %4 = ptrtoint i64* %0 to i64
  %5 = ptrtoint i64* %1 to i64
  %6 = sub i64 %5, %4
  %7 = icmp sgt i64 %6, 128
  br i1 %7, label %8, label %129

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds i64, i64* %0, i64 1
  br label %10

; <label>:10:                                     ; preds = %8, %123
  %11 = phi i64 [ %6, %8 ], [ %125, %123 ]
  %12 = phi i64 [ %5, %8 ], [ %124, %123 ]
  %13 = phi i64 [ %2, %8 ], [ %82, %123 ]
  %14 = phi i64* [ %1, %8 ], [ %110, %123 ]
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %16, label %80

; <label>:16:                                     ; preds = %10
  tail call void @_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_(i64* %0, i64* %14) #10
  br label %17

; <label>:17:                                     ; preds = %16, %76
  %18 = phi i64 [ %21, %76 ], [ %12, %16 ]
  %19 = inttoptr i64 %18 to i64*
  %20 = getelementptr inbounds i64, i64* %19, i64 -1
  %21 = ptrtoint i64* %20 to i64
  %22 = load i64, i64* %20, align 8, !tbaa !9
  %23 = load i64, i64* %0, align 8, !tbaa !9
  store i64 %23, i64* %20, align 8, !tbaa !9
  %24 = sub i64 %21, %4
  %25 = ashr exact i64 %24, 3
  %26 = add nsw i64 %25, -1
  %27 = sdiv i64 %26, 2
  %28 = icmp sgt i64 %24, 16
  br i1 %28, label %29, label %46

; <label>:29:                                     ; preds = %17
  br label %30

; <label>:30:                                     ; preds = %29, %30
  %31 = phi i64 [ %40, %30 ], [ 0, %29 ]
  %32 = shl i64 %31, 1
  %33 = add i64 %32, 2
  %34 = getelementptr inbounds i64, i64* %0, i64 %33
  %35 = load i64, i64* %34, align 8, !tbaa !9
  %36 = or i64 %32, 1
  %37 = getelementptr inbounds i64, i64* %0, i64 %36
  %38 = load i64, i64* %37, align 8, !tbaa !9
  %39 = icmp slt i64 %35, %38
  %40 = select i1 %39, i64 %36, i64 %33
  %41 = getelementptr inbounds i64, i64* %0, i64 %40
  %42 = load i64, i64* %41, align 8, !tbaa !9
  %43 = getelementptr inbounds i64, i64* %0, i64 %31
  store i64 %42, i64* %43, align 8, !tbaa !9
  %44 = icmp slt i64 %40, %27
  br i1 %44, label %30, label %45

; <label>:45:                                     ; preds = %30
  br label %46

; <label>:46:                                     ; preds = %45, %17
  %47 = phi i64 [ 0, %17 ], [ %40, %45 ]
  %48 = and i64 %25, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %60

; <label>:50:                                     ; preds = %46
  %51 = add nsw i64 %25, -2
  %52 = sdiv i64 %51, 2
  %53 = icmp eq i64 %47, %52
  br i1 %53, label %54, label %60

; <label>:54:                                     ; preds = %50
  %55 = shl i64 %47, 1
  %56 = or i64 %55, 1
  %57 = getelementptr inbounds i64, i64* %0, i64 %56
  %58 = load i64, i64* %57, align 8, !tbaa !9
  %59 = getelementptr inbounds i64, i64* %0, i64 %47
  store i64 %58, i64* %59, align 8, !tbaa !9
  br label %60

; <label>:60:                                     ; preds = %54, %50, %46
  %61 = phi i64 [ %56, %54 ], [ %47, %50 ], [ %47, %46 ]
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %76

; <label>:63:                                     ; preds = %60
  br label %64

; <label>:64:                                     ; preds = %63, %71
  %65 = phi i64 [ %67, %71 ], [ %61, %63 ]
  %66 = add nsw i64 %65, -1
  %67 = sdiv i64 %66, 2
  %68 = getelementptr inbounds i64, i64* %0, i64 %67
  %69 = load i64, i64* %68, align 8, !tbaa !9
  %70 = icmp slt i64 %69, %22
  br i1 %70, label %71, label %74

; <label>:71:                                     ; preds = %64
  %72 = getelementptr inbounds i64, i64* %0, i64 %65
  store i64 %69, i64* %72, align 8, !tbaa !9
  %73 = icmp sgt i64 %65, 2
  br i1 %73, label %64, label %74

; <label>:74:                                     ; preds = %64, %71
  %75 = phi i64 [ %65, %64 ], [ %67, %71 ]
  br label %76

; <label>:76:                                     ; preds = %74, %60
  %77 = phi i64 [ %61, %60 ], [ %75, %74 ]
  %78 = getelementptr inbounds i64, i64* %0, i64 %77
  store i64 %22, i64* %78, align 8, !tbaa !9
  %79 = icmp sgt i64 %24, 8
  br i1 %79, label %17, label %127

; <label>:80:                                     ; preds = %10
  %81 = lshr i64 %11, 4
  %82 = add nsw i64 %13, -1
  %83 = getelementptr inbounds i64, i64* %0, i64 %81
  %84 = getelementptr inbounds i64, i64* %14, i64 -1
  %85 = load i64, i64* %9, align 8, !tbaa !9
  %86 = load i64, i64* %83, align 8, !tbaa !9
  %87 = icmp slt i64 %85, %86
  %88 = load i64, i64* %84, align 8, !tbaa !9
  %89 = load i64, i64* %0, align 8, !tbaa !9
  br i1 %87, label %90, label %96

; <label>:90:                                     ; preds = %80
  %91 = icmp slt i64 %86, %88
  br i1 %91, label %102, label %92

; <label>:92:                                     ; preds = %90
  %93 = icmp slt i64 %85, %88
  %94 = select i1 %93, i64 %88, i64 %85
  %95 = select i1 %93, i64* %84, i64* %9
  br label %102

; <label>:96:                                     ; preds = %80
  %97 = icmp slt i64 %85, %88
  br i1 %97, label %102, label %98

; <label>:98:                                     ; preds = %96
  %99 = icmp slt i64 %86, %88
  %100 = select i1 %99, i64 %88, i64 %86
  %101 = select i1 %99, i64* %84, i64* %83
  br label %102

; <label>:102:                                    ; preds = %98, %96, %92, %90
  %103 = phi i64 [ %94, %92 ], [ %85, %96 ], [ %100, %98 ], [ %86, %90 ]
  %104 = phi i64* [ %95, %92 ], [ %9, %96 ], [ %101, %98 ], [ %83, %90 ]
  store i64 %103, i64* %0, align 8, !tbaa !9
  store i64 %89, i64* %104, align 8, !tbaa !9
  br label %105

; <label>:105:                                    ; preds = %122, %102
  %106 = phi i64* [ %9, %102 ], [ %113, %122 ]
  %107 = phi i64* [ %14, %102 ], [ %117, %122 ]
  %108 = load i64, i64* %0, align 8, !tbaa !9
  br label %109

; <label>:109:                                    ; preds = %109, %105
  %110 = phi i64* [ %106, %105 ], [ %113, %109 ]
  %111 = load i64, i64* %110, align 8, !tbaa !9
  %112 = icmp slt i64 %111, %108
  %113 = getelementptr inbounds i64, i64* %110, i64 1
  br i1 %112, label %109, label %114

; <label>:114:                                    ; preds = %109
  br label %115

; <label>:115:                                    ; preds = %114, %115
  %116 = phi i64* [ %117, %115 ], [ %107, %114 ]
  %117 = getelementptr inbounds i64, i64* %116, i64 -1
  %118 = load i64, i64* %117, align 8, !tbaa !9
  %119 = icmp slt i64 %108, %118
  br i1 %119, label %115, label %120

; <label>:120:                                    ; preds = %115
  %121 = icmp ult i64* %110, %117
  br i1 %121, label %122, label %123

; <label>:122:                                    ; preds = %120
  store i64 %118, i64* %110, align 8, !tbaa !9
  store i64 %111, i64* %117, align 8, !tbaa !9
  br label %105

; <label>:123:                                    ; preds = %120
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_T0_(i64* %110, i64* %14, i64 %82)
  %124 = ptrtoint i64* %110 to i64
  %125 = sub i64 %124, %4
  %126 = icmp sgt i64 %125, 128
  br i1 %126, label %10, label %128

; <label>:127:                                    ; preds = %76
  br label %129

; <label>:128:                                    ; preds = %123
  br label %129

; <label>:129:                                    ; preds = %128, %127, %3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_(i64*, i64*) local_unnamed_addr #1 comdat {
  %3 = ptrtoint i64* %0 to i64
  %4 = ptrtoint i64* %1 to i64
  %5 = sub i64 %4, %3
  %6 = icmp sgt i64 %5, 128
  br i1 %6, label %7, label %92

; <label>:7:                                      ; preds = %2
  %8 = bitcast i64* %0 to i8*
  br label %9

; <label>:9:                                      ; preds = %35, %7
  %10 = phi i64 [ 1, %7 ], [ %37, %35 ]
  %11 = phi i64* [ %0, %7 ], [ %12, %35 ]
  %12 = getelementptr inbounds i64, i64* %0, i64 %10
  %13 = load i64, i64* %12, align 8, !tbaa !9
  %14 = load i64, i64* %0, align 8, !tbaa !9
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %9
  %17 = shl nuw i64 %10, 3
  %18 = ashr exact i64 %17, 3
  %19 = getelementptr inbounds i64, i64* %11, i64 2
  %20 = sub nsw i64 0, %18
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = bitcast i64* %21 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %22, i8* nonnull %8, i64 %17, i32 8, i1 false) #10
  br label %35

; <label>:23:                                     ; preds = %9
  %24 = load i64, i64* %11, align 8, !tbaa !9
  %25 = icmp slt i64 %13, %24
  br i1 %25, label %26, label %35

; <label>:26:                                     ; preds = %23
  br label %27

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i64 [ %32, %27 ], [ %24, %26 ]
  %29 = phi i64* [ %31, %27 ], [ %11, %26 ]
  %30 = phi i64* [ %29, %27 ], [ %12, %26 ]
  store i64 %28, i64* %30, align 8, !tbaa !9
  %31 = getelementptr inbounds i64, i64* %29, i64 -1
  %32 = load i64, i64* %31, align 8, !tbaa !9
  %33 = icmp slt i64 %13, %32
  br i1 %33, label %27, label %34

; <label>:34:                                     ; preds = %27
  br label %35

; <label>:35:                                     ; preds = %34, %23, %16
  %36 = phi i64* [ %12, %23 ], [ %0, %16 ], [ %29, %34 ]
  store i64 %13, i64* %36, align 8, !tbaa !9
  %37 = add nuw nsw i64 %10, 1
  %38 = icmp eq i64 %37, 16
  br i1 %38, label %39, label %9

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds i64, i64* %0, i64 16
  %41 = icmp eq i64* %40, %1
  br i1 %41, label %134, label %42

; <label>:42:                                     ; preds = %39
  %43 = getelementptr i64, i64* %1, i64 -17
  %44 = ptrtoint i64* %43 to i64
  %45 = sub i64 %44, %3
  %46 = lshr i64 %45, 3
  %47 = and i64 %46, 1
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %67

; <label>:49:                                     ; preds = %42
  br label %50

; <label>:50:                                     ; preds = %49
  %51 = load i64, i64* %40, align 8, !tbaa !9
  %52 = getelementptr inbounds i64, i64* %0, i64 15
  %53 = load i64, i64* %52, align 8, !tbaa !9
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %50
  br label %56

; <label>:56:                                     ; preds = %56, %55
  %57 = phi i64 [ %61, %56 ], [ %53, %55 ]
  %58 = phi i64* [ %60, %56 ], [ %52, %55 ]
  %59 = phi i64* [ %58, %56 ], [ %40, %55 ]
  store i64 %57, i64* %59, align 8, !tbaa !9
  %60 = getelementptr inbounds i64, i64* %58, i64 -1
  %61 = load i64, i64* %60, align 8, !tbaa !9
  %62 = icmp slt i64 %51, %61
  br i1 %62, label %56, label %63

; <label>:63:                                     ; preds = %56
  br label %64

; <label>:64:                                     ; preds = %63, %50
  %65 = phi i64* [ %40, %50 ], [ %58, %63 ]
  store i64 %51, i64* %65, align 8, !tbaa !9
  %66 = getelementptr inbounds i64, i64* %0, i64 17
  br label %67

; <label>:67:                                     ; preds = %64, %42
  %68 = phi i64* [ %40, %42 ], [ %66, %64 ]
  %69 = icmp eq i64 %46, 0
  br i1 %69, label %132, label %70

; <label>:70:                                     ; preds = %67
  br label %71

; <label>:71:                                     ; preds = %144, %70
  %72 = phi i64* [ %68, %70 ], [ %146, %144 ]
  %73 = load i64, i64* %72, align 8, !tbaa !9
  %74 = getelementptr inbounds i64, i64* %72, i64 -1
  %75 = load i64, i64* %74, align 8, !tbaa !9
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %77, label %86

; <label>:77:                                     ; preds = %71
  br label %78

; <label>:78:                                     ; preds = %77, %78
  %79 = phi i64 [ %83, %78 ], [ %75, %77 ]
  %80 = phi i64* [ %82, %78 ], [ %74, %77 ]
  %81 = phi i64* [ %80, %78 ], [ %72, %77 ]
  store i64 %79, i64* %81, align 8, !tbaa !9
  %82 = getelementptr inbounds i64, i64* %80, i64 -1
  %83 = load i64, i64* %82, align 8, !tbaa !9
  %84 = icmp slt i64 %73, %83
  br i1 %84, label %78, label %85

; <label>:85:                                     ; preds = %78
  br label %86

; <label>:86:                                     ; preds = %85, %71
  %87 = phi i64* [ %72, %71 ], [ %80, %85 ]
  store i64 %73, i64* %87, align 8, !tbaa !9
  %88 = getelementptr inbounds i64, i64* %72, i64 1
  %89 = load i64, i64* %88, align 8, !tbaa !9
  %90 = load i64, i64* %72, align 8, !tbaa !9
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %135, label %144

; <label>:92:                                     ; preds = %2
  %93 = icmp eq i64* %0, %1
  br i1 %93, label %134, label %94

; <label>:94:                                     ; preds = %92
  %95 = getelementptr inbounds i64, i64* %0, i64 1
  %96 = icmp eq i64* %95, %1
  br i1 %96, label %134, label %97

; <label>:97:                                     ; preds = %94
  %98 = bitcast i64* %0 to i8*
  br label %99

; <label>:99:                                     ; preds = %127, %97
  %100 = phi i64* [ %95, %97 ], [ %129, %127 ]
  %101 = phi i64* [ %0, %97 ], [ %100, %127 ]
  %102 = load i64, i64* %100, align 8, !tbaa !9
  %103 = load i64, i64* %0, align 8, !tbaa !9
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %115

; <label>:105:                                    ; preds = %99
  %106 = ptrtoint i64* %100 to i64
  %107 = sub i64 %106, %3
  %108 = ashr exact i64 %107, 3
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %127, label %110

; <label>:110:                                    ; preds = %105
  %111 = getelementptr inbounds i64, i64* %101, i64 2
  %112 = sub nsw i64 0, %108
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = bitcast i64* %113 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %114, i8* nonnull %98, i64 %107, i32 8, i1 false) #10
  br label %127

; <label>:115:                                    ; preds = %99
  %116 = load i64, i64* %101, align 8, !tbaa !9
  %117 = icmp slt i64 %102, %116
  br i1 %117, label %118, label %127

; <label>:118:                                    ; preds = %115
  br label %119

; <label>:119:                                    ; preds = %118, %119
  %120 = phi i64 [ %124, %119 ], [ %116, %118 ]
  %121 = phi i64* [ %123, %119 ], [ %101, %118 ]
  %122 = phi i64* [ %121, %119 ], [ %100, %118 ]
  store i64 %120, i64* %122, align 8, !tbaa !9
  %123 = getelementptr inbounds i64, i64* %121, i64 -1
  %124 = load i64, i64* %123, align 8, !tbaa !9
  %125 = icmp slt i64 %102, %124
  br i1 %125, label %119, label %126

; <label>:126:                                    ; preds = %119
  br label %127

; <label>:127:                                    ; preds = %126, %115, %110, %105
  %128 = phi i64* [ %100, %115 ], [ %0, %105 ], [ %0, %110 ], [ %121, %126 ]
  store i64 %102, i64* %128, align 8, !tbaa !9
  %129 = getelementptr inbounds i64, i64* %100, i64 1
  %130 = icmp eq i64* %129, %1
  br i1 %130, label %133, label %99

; <label>:131:                                    ; preds = %144
  br label %132

; <label>:132:                                    ; preds = %67, %131
  br label %134

; <label>:133:                                    ; preds = %127
  br label %134

; <label>:134:                                    ; preds = %133, %132, %94, %92, %39
  ret void

; <label>:135:                                    ; preds = %86
  br label %136

; <label>:136:                                    ; preds = %136, %135
  %137 = phi i64 [ %141, %136 ], [ %90, %135 ]
  %138 = phi i64* [ %140, %136 ], [ %72, %135 ]
  %139 = phi i64* [ %138, %136 ], [ %88, %135 ]
  store i64 %137, i64* %139, align 8, !tbaa !9
  %140 = getelementptr inbounds i64, i64* %138, i64 -1
  %141 = load i64, i64* %140, align 8, !tbaa !9
  %142 = icmp slt i64 %89, %141
  br i1 %142, label %136, label %143

; <label>:143:                                    ; preds = %136
  br label %144

; <label>:144:                                    ; preds = %143, %86
  %145 = phi i64* [ %88, %86 ], [ %138, %143 ]
  store i64 %89, i64* %145, align 8, !tbaa !9
  %146 = getelementptr inbounds i64, i64* %72, i64 2
  %147 = icmp eq i64* %146, %1
  br i1 %147, label %131, label %71
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_(i64*, i64*) local_unnamed_addr #1 comdat {
  %3 = ptrtoint i64* %0 to i64
  %4 = ptrtoint i64* %1 to i64
  %5 = sub i64 %4, %3
  %6 = ashr exact i64 %5, 3
  %7 = icmp slt i64 %5, 16
  br i1 %7, label %112, label %8

; <label>:8:                                      ; preds = %2
  %9 = add nsw i64 %6, -2
  %10 = sdiv i64 %9, 2
  %11 = add nsw i64 %6, -1
  %12 = sdiv i64 %11, 2
  %13 = and i64 %6, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

; <label>:15:                                     ; preds = %8
  br label %69

; <label>:16:                                     ; preds = %8
  %17 = shl nsw i64 %10, 1
  %18 = or i64 %17, 1
  %19 = getelementptr inbounds i64, i64* %0, i64 %18
  %20 = getelementptr inbounds i64, i64* %0, i64 %10
  br label %21

; <label>:21:                                     ; preds = %16, %64
  %22 = phi i64 [ %68, %64 ], [ %10, %16 ]
  %23 = getelementptr inbounds i64, i64* %0, i64 %22
  %24 = load i64, i64* %23, align 8, !tbaa !9
  %25 = icmp sgt i64 %12, %22
  br i1 %25, label %26, label %43

; <label>:26:                                     ; preds = %21
  br label %27

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i64 [ %37, %27 ], [ %22, %26 ]
  %29 = shl i64 %28, 1
  %30 = add i64 %29, 2
  %31 = getelementptr inbounds i64, i64* %0, i64 %30
  %32 = load i64, i64* %31, align 8, !tbaa !9
  %33 = or i64 %29, 1
  %34 = getelementptr inbounds i64, i64* %0, i64 %33
  %35 = load i64, i64* %34, align 8, !tbaa !9
  %36 = icmp slt i64 %32, %35
  %37 = select i1 %36, i64 %33, i64 %30
  %38 = getelementptr inbounds i64, i64* %0, i64 %37
  %39 = load i64, i64* %38, align 8, !tbaa !9
  %40 = getelementptr inbounds i64, i64* %0, i64 %28
  store i64 %39, i64* %40, align 8, !tbaa !9
  %41 = icmp slt i64 %37, %12
  br i1 %41, label %27, label %42

; <label>:42:                                     ; preds = %27
  br label %43

; <label>:43:                                     ; preds = %42, %21
  %44 = phi i64 [ %22, %21 ], [ %37, %42 ]
  %45 = icmp eq i64 %44, %10
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %43
  %47 = load i64, i64* %19, align 8, !tbaa !9
  store i64 %47, i64* %20, align 8, !tbaa !9
  br label %48

; <label>:48:                                     ; preds = %46, %43
  %49 = phi i64 [ %18, %46 ], [ %44, %43 ]
  %50 = icmp sgt i64 %49, %22
  br i1 %50, label %51, label %64

; <label>:51:                                     ; preds = %48
  br label %52

; <label>:52:                                     ; preds = %51, %59
  %53 = phi i64 [ %55, %59 ], [ %49, %51 ]
  %54 = add nsw i64 %53, -1
  %55 = sdiv i64 %54, 2
  %56 = getelementptr inbounds i64, i64* %0, i64 %55
  %57 = load i64, i64* %56, align 8, !tbaa !9
  %58 = icmp slt i64 %57, %24
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %52
  %60 = getelementptr inbounds i64, i64* %0, i64 %53
  store i64 %57, i64* %60, align 8, !tbaa !9
  %61 = icmp sgt i64 %55, %22
  br i1 %61, label %52, label %62

; <label>:62:                                     ; preds = %59, %52
  %63 = phi i64 [ %55, %59 ], [ %53, %52 ]
  br label %64

; <label>:64:                                     ; preds = %62, %48
  %65 = phi i64 [ %49, %48 ], [ %63, %62 ]
  %66 = getelementptr inbounds i64, i64* %0, i64 %65
  store i64 %24, i64* %66, align 8, !tbaa !9
  %67 = icmp eq i64 %22, 0
  %68 = add nsw i64 %22, -1
  br i1 %67, label %110, label %21

; <label>:69:                                     ; preds = %15, %105
  %70 = phi i64 [ %109, %105 ], [ %10, %15 ]
  %71 = getelementptr inbounds i64, i64* %0, i64 %70
  %72 = load i64, i64* %71, align 8, !tbaa !9
  %73 = icmp sgt i64 %12, %70
  br i1 %73, label %74, label %105

; <label>:74:                                     ; preds = %69
  br label %75

; <label>:75:                                     ; preds = %74, %75
  %76 = phi i64 [ %85, %75 ], [ %70, %74 ]
  %77 = shl i64 %76, 1
  %78 = add i64 %77, 2
  %79 = getelementptr inbounds i64, i64* %0, i64 %78
  %80 = load i64, i64* %79, align 8, !tbaa !9
  %81 = or i64 %77, 1
  %82 = getelementptr inbounds i64, i64* %0, i64 %81
  %83 = load i64, i64* %82, align 8, !tbaa !9
  %84 = icmp slt i64 %80, %83
  %85 = select i1 %84, i64 %81, i64 %78
  %86 = getelementptr inbounds i64, i64* %0, i64 %85
  %87 = load i64, i64* %86, align 8, !tbaa !9
  %88 = getelementptr inbounds i64, i64* %0, i64 %76
  store i64 %87, i64* %88, align 8, !tbaa !9
  %89 = icmp slt i64 %85, %12
  br i1 %89, label %75, label %90

; <label>:90:                                     ; preds = %75
  %91 = icmp sgt i64 %85, %70
  br i1 %91, label %92, label %105

; <label>:92:                                     ; preds = %90
  br label %93

; <label>:93:                                     ; preds = %92, %100
  %94 = phi i64 [ %96, %100 ], [ %85, %92 ]
  %95 = add nsw i64 %94, -1
  %96 = sdiv i64 %95, 2
  %97 = getelementptr inbounds i64, i64* %0, i64 %96
  %98 = load i64, i64* %97, align 8, !tbaa !9
  %99 = icmp slt i64 %98, %72
  br i1 %99, label %100, label %103

; <label>:100:                                    ; preds = %93
  %101 = getelementptr inbounds i64, i64* %0, i64 %94
  store i64 %98, i64* %101, align 8, !tbaa !9
  %102 = icmp sgt i64 %96, %70
  br i1 %102, label %93, label %103

; <label>:103:                                    ; preds = %100, %93
  %104 = phi i64 [ %96, %100 ], [ %94, %93 ]
  br label %105

; <label>:105:                                    ; preds = %103, %69, %90
  %106 = phi i64 [ %85, %90 ], [ %70, %69 ], [ %104, %103 ]
  %107 = getelementptr inbounds i64, i64* %0, i64 %106
  store i64 %72, i64* %107, align 8, !tbaa !9
  %108 = icmp eq i64 %70, 0
  %109 = add nsw i64 %70, -1
  br i1 %108, label %111, label %69

; <label>:110:                                    ; preds = %64
  br label %112

; <label>:111:                                    ; preds = %105
  br label %112

; <label>:112:                                    ; preds = %111, %110, %2
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #8

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_wordsort.cc() #1 section ".text.startup" {
  %1 = tail call i32 @_ZN9benchmark8internal17InitializeStreamsEv() #10
  %2 = tail call i8* @_Znwm(i64 152) #11
  %3 = bitcast i8* %2 to %"class.benchmark::internal::Benchmark"*
  tail call void @_ZN9benchmark8internal9BenchmarkC2EPKc(%"class.benchmark::internal::Benchmark"* nonnull %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #10
  %4 = bitcast i8* %2 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !38
  %5 = getelementptr inbounds i8, i8* %2, i64 144
  %6 = bitcast i8* %5 to void (%"class.benchmark::State"*)**
  store void (%"class.benchmark::State"*)* @_Z9BM_bubbleRN9benchmark5StateE, void (%"class.benchmark::State"*)** %6, align 8, !tbaa !40
  %7 = tail call %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(%"class.benchmark::internal::Benchmark"* nonnull %3) #10
  %8 = tail call %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal9Benchmark15RangeMultiplierEi(%"class.benchmark::internal::Benchmark"* %7, i32 2) #10
  %9 = tail call %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal9Benchmark5RangeEii(%"class.benchmark::internal::Benchmark"* %8, i32 2, i32 64) #10
  store %"class.benchmark::internal::Benchmark"* %9, %"class.benchmark::internal::Benchmark"** @_ZL21_benchmark_2BM_bubble, align 8, !tbaa !11
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #9

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 5.0.0 (https://github.com/llvm-mirror/clang.git 007c596e637ba3a933a07b5ee277201612c7fb61) (http://llvm.org/git/llvm.git e77d07916ef01861b911ff0399d2c4e9120e6499)"}
!1 = !{!2, !4, i64 0}
!2 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !3, i64 0}
!3 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!2, !4, i64 8}
!8 = !{!2, !4, i64 16}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!13, !4, i64 0}
!13 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !5, i64 0}
!17 = !{!18, !10, i64 0}
!18 = !{!"_ZTSSt26linear_congruential_engineImLm48271ELm0ELm2147483647EE", !10, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSN9benchmark5StateE", !21, i64 0, !21, i64 1, !10, i64 8, !22, i64 16, !10, i64 40, !10, i64 48, !16, i64 56, !21, i64 60, !23, i64 64, !16, i64 112, !16, i64 116, !10, i64 120, !4, i64 128, !4, i64 136}
!21 = !{!"bool", !5, i64 0}
!22 = !{!"_ZTSSt6vectorIiSaIiEE"}
!23 = !{!"_ZTSSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE", !24, i64 0}
!24 = !{!"_ZTSSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE", !25, i64 0}
!25 = !{!"_ZTSNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !26, i64 0, !27, i64 8, !10, i64 40}
!26 = !{!"_ZTSSt4lessISsE"}
!27 = !{!"_ZTSSt18_Rb_tree_node_base", !28, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!28 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!29 = !{i8 0, i8 2}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{!20, !10, i64 8}
!32 = !{!20, !10, i64 120}
!33 = !{!34, !10, i64 0}
!34 = !{!"_ZTSNSt24uniform_int_distributionImE10param_typeE", !10, i64 0, !10, i64 8}
!35 = !{!34, !10, i64 8}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !6, i64 0}
!40 = !{!41, !4, i64 144}
!41 = !{!"_ZTSN9benchmark8internal17FunctionBenchmarkE", !4, i64 144}
