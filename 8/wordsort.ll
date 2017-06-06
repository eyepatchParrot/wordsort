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
%"class.std::move_iterator" = type { i64* }
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
%"class.__gnu_cxx::__normal_iterator" = type { i64* }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.21" = type { i64* }

$_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_T0_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_ = comdat any

$_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_ = comdat any

@_ZL21_benchmark_2BM_bubble = internal unnamed_addr global %"class.benchmark::internal::Benchmark"* null, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"BM_bubble\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x i8*] }
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_wordsort.cc, i8* null }]

declare i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @_Z5rangei(%"class.std::vector"* noalias nocapture sret, i32) local_unnamed_addr #1 !dbg !2006 {
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2011, metadata !2015), !dbg !2016
  tail call void @llvm.dbg.declare(metadata %"class.std::vector"* %0, metadata !2012, metadata !2015), !dbg !2017
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2018, metadata !2015) #10, !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 100, i64 0, metadata !2022, metadata !2015) #10, !dbg !2031
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2032, metadata !2015) #10, !dbg !2036
  %3 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 2, !dbg !2038
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2039, metadata !2015) #10, !dbg !2042
  %4 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1, !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2023, metadata !2015) #10, !dbg !2045
  tail call void @llvm.dbg.value(metadata i64** %4, i64 0, metadata !2046, metadata !2058) #10, !dbg !2059
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2054, metadata !2015) #10, !dbg !2061
  tail call void @llvm.dbg.value(metadata i64 100, i64 0, metadata !2055, metadata !2015) #10, !dbg !2062
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2056, metadata !2015) #10, !dbg !2063
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2046, metadata !2015) #10, !dbg !2059
  tail call void @llvm.dbg.value(metadata i64 100, i64 0, metadata !2064, metadata !2015) #10, !dbg !2069
  tail call void @llvm.dbg.value(metadata i64 100, i64 0, metadata !2071, metadata !2015) #10, !dbg !2077
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !2079
  %5 = tail call i8* @_Znwm(i64 800) #10, !dbg !2080
  tail call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2057, metadata !2015) #10, !dbg !2081
  tail call void @llvm.dbg.value(metadata i64** %4, i64 0, metadata !2082, metadata !2058) #10, !dbg !2094
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2091, metadata !2015) #10, !dbg !2098
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2082, metadata !2015) #10, !dbg !2094
  tail call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2092, metadata !2015) #10, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64** %4, i64 0, metadata !2100, metadata !2058) #10, !dbg !2108
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2106, metadata !2015) #10, !dbg !2110
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2100, metadata !2015) #10, !dbg !2108
  tail call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2107, metadata !2015) #10, !dbg !2111
  tail call void @llvm.dbg.value(metadata i64** %4, i64 0, metadata !2112, metadata !2058) #10, !dbg !2121
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2119, metadata !2015) #10, !dbg !2123
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2112, metadata !2015) #10, !dbg !2121
  tail call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2120, metadata !2015) #10, !dbg !2124
  tail call void @llvm.dbg.value(metadata i64** %4, i64 0, metadata !2125, metadata !2058) #10, !dbg !2135
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2132, metadata !2015) #10, !dbg !2137
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2125, metadata !2015) #10, !dbg !2135
  tail call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2134, metadata !2015) #10, !dbg !2138
  tail call void @llvm.dbg.value(metadata i64** %4, i64 0, metadata !2139, metadata !2058) #10, !dbg !2150
  tail call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2149, metadata !2015) #10, !dbg !2152
  tail call void @llvm.dbg.value(metadata i64** %4, i64 0, metadata !2153, metadata !2058) #10, !dbg !2159
  tail call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2157, metadata !2015) #10, !dbg !2161
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2158, metadata !2015) #10, !dbg !2162
  tail call void @llvm.dbg.value(metadata i64** %4, i64 0, metadata !2163, metadata !2058) #10, !dbg !2186
  tail call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2183, metadata !2015) #10, !dbg !2188
  tail call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2027, metadata !2015) #10, !dbg !2189
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2190, metadata !2015) #10, !dbg !2195
  %6 = bitcast %"class.std::vector"* %0 to i8**, !dbg !2197
  store i8* %5, i8** %6, align 8, !dbg !2197, !tbaa !2198
  %7 = bitcast i64** %4 to i8**, !dbg !2204
  store i8* %5, i8** %7, align 8, !dbg !2204, !tbaa !2205
  %8 = getelementptr inbounds i8, i8* %5, i64 800, !dbg !2206
  %9 = bitcast i64** %3 to i8**, !dbg !2207
  store i8* %8, i8** %9, align 8, !dbg !2207, !tbaa !2208
  %10 = ptrtoint i8* %5 to i64, !dbg !2209
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2013, metadata !2015), !dbg !2210
  %11 = icmp sgt i32 %1, 0, !dbg !2211
  br i1 %11, label %12, label %77, !dbg !2213

; <label>:12:                                     ; preds = %2
  %13 = ptrtoint i8* %5 to i64, !dbg !2209
  %14 = bitcast i8* %8 to i64*, !dbg !2209
  %15 = bitcast i8* %5 to i64*, !dbg !2214
  %16 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1
  %17 = bitcast %"class.std::vector"* %0 to i8**
  %18 = sext i32 %1 to i64, !dbg !2213
  br label %19, !dbg !2213

; <label>:19:                                     ; preds = %72, %12
  %20 = phi i64 [ %10, %12 ], [ %66, %72 ]
  %21 = phi i64 [ %13, %12 ], [ %75, %72 ]
  %22 = phi i64 [ %10, %12 ], [ %67, %72 ]
  %23 = phi i64* [ %14, %12 ], [ %74, %72 ], !dbg !2215
  %24 = phi i64* [ %15, %12 ], [ %73, %72 ], !dbg !2234
  %25 = phi i64 [ 0, %12 ], [ %70, %72 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2013, metadata !2015), !dbg !2210
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2231, metadata !2015) #10, !dbg !2235
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2226, metadata !2015) #10, !dbg !2236
  %26 = icmp eq i64* %24, %23, !dbg !2237
  br i1 %26, label %29, label %27, !dbg !2238

; <label>:27:                                     ; preds = %19
  tail call void @llvm.dbg.value(metadata i64* %24, i64 0, metadata !2239, metadata !2015) #10, !dbg !2252
  tail call void @llvm.dbg.value(metadata i64* %24, i64 0, metadata !2255, metadata !2015) #10, !dbg !2261
  tail call void @llvm.dbg.value(metadata i64* %24, i64 0, metadata !2263, metadata !2015) #10, !dbg !2273
  store i64 %25, i64* %24, align 8, !dbg !2275, !tbaa !2276
  %28 = getelementptr inbounds i64, i64* %24, i64 1, !dbg !2278
  br label %65, !dbg !2279

; <label>:29:                                     ; preds = %19
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2280, metadata !2015) #10, !dbg !2288
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2290, metadata !2015) #10, !dbg !2296
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2293, metadata !2015) #10, !dbg !2298
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2039, metadata !2015) #10, !dbg !2299
  %30 = sub i64 %21, %22, !dbg !2302
  %31 = ashr exact i64 %30, 3, !dbg !2302
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2293, metadata !2015) #10, !dbg !2298
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2039, metadata !2015) #10, !dbg !2303
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2039, metadata !2015) #10, !dbg !2305
  %32 = icmp eq i64 %31, 0, !dbg !2307
  %33 = select i1 %32, i64 1, i64 %31, !dbg !2318
  %34 = add nsw i64 %33, %31, !dbg !2319
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !2295, metadata !2015) #10, !dbg !2320
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2039, metadata !2015) #10, !dbg !2321
  %35 = icmp ult i64 %34, %31, !dbg !2323
  %36 = icmp ugt i64 %34, 2305843009213693951, !dbg !2324
  %37 = or i1 %35, %36, !dbg !2325
  %38 = select i1 %37, i64 2305843009213693951, i64 %34, !dbg !2325
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2285, metadata !2015) #10, !dbg !2326
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2064, metadata !2015) #10, !dbg !2327
  %39 = icmp eq i64 %38, 0, !dbg !2329
  br i1 %39, label %47, label %40, !dbg !2330

; <label>:40:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2071, metadata !2015) #10, !dbg !2331
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !2333
  %41 = icmp ugt i64 %38, 2305843009213693951, !dbg !2334
  br i1 %41, label %42, label %43, !dbg !2336

; <label>:42:                                     ; preds = %40
  tail call void @_ZSt17__throw_bad_allocv() #9, !dbg !2337
  unreachable, !dbg !2337

; <label>:43:                                     ; preds = %40
  %44 = shl i64 %38, 3, !dbg !2338
  %45 = tail call i8* @_Znwm(i64 %44) #10, !dbg !2339
  %46 = bitcast i8* %45 to i64*, !dbg !2340
  br label %47, !dbg !2330

; <label>:47:                                     ; preds = %43, %29
  %48 = phi i64 [ %20, %43 ], [ %22, %29 ]
  %49 = phi i8* [ %45, %43 ], [ null, %29 ], !dbg !2330
  %50 = phi i64* [ %46, %43 ], [ null, %29 ], !dbg !2330
  tail call void @llvm.dbg.value(metadata i64* %50, i64 0, metadata !2286, metadata !2015) #10, !dbg !2341
  tail call void @llvm.dbg.value(metadata i64* %50, i64 0, metadata !2287, metadata !2015) #10, !dbg !2342
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2039, metadata !2015) #10, !dbg !2343
  %51 = sub i64 %21, %48, !dbg !2347
  %52 = ashr exact i64 %51, 3, !dbg !2347
  %53 = getelementptr inbounds i64, i64* %50, i64 %52, !dbg !2348
  tail call void @llvm.dbg.value(metadata i64* %53, i64 0, metadata !2239, metadata !2015) #10, !dbg !2349
  tail call void @llvm.dbg.value(metadata i64* %53, i64 0, metadata !2255, metadata !2015) #10, !dbg !2351
  tail call void @llvm.dbg.value(metadata i64* %53, i64 0, metadata !2263, metadata !2015) #10, !dbg !2353
  store i64 %25, i64* %53, align 8, !dbg !2355, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2287, metadata !2015) #10, !dbg !2342
  tail call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !2356, metadata !2058) #10, !dbg !2367
  tail call void @llvm.dbg.value(metadata i64* %50, i64 0, metadata !2365, metadata !2015) #10, !dbg !2369
  tail call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !2082, metadata !2058) #10, !dbg !2370
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2091, metadata !2015) #10, !dbg !2372
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2082, metadata !2015) #10, !dbg !2370
  tail call void @llvm.dbg.value(metadata i64* %50, i64 0, metadata !2092, metadata !2015) #10, !dbg !2373
  tail call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !2100, metadata !2058) #10, !dbg !2374
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2106, metadata !2015) #10, !dbg !2376
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2100, metadata !2015) #10, !dbg !2374
  tail call void @llvm.dbg.value(metadata i64* %50, i64 0, metadata !2107, metadata !2015) #10, !dbg !2377
  tail call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !2112, metadata !2058) #10, !dbg !2378
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2119, metadata !2015) #10, !dbg !2380
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2112, metadata !2015) #10, !dbg !2378
  tail call void @llvm.dbg.value(metadata i64* %50, i64 0, metadata !2120, metadata !2015) #10, !dbg !2381
  tail call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !2125, metadata !2058) #10, !dbg !2382
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2132, metadata !2015) #10, !dbg !2384
  tail call void @llvm.dbg.declare(metadata %"class.std::move_iterator"* undef, metadata !2125, metadata !2015) #10, !dbg !2382
  tail call void @llvm.dbg.value(metadata i64* %50, i64 0, metadata !2134, metadata !2015) #10, !dbg !2385
  tail call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !2139, metadata !2058) #10, !dbg !2386
  tail call void @llvm.dbg.value(metadata i64* %50, i64 0, metadata !2149, metadata !2015) #10, !dbg !2388
  tail call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !2153, metadata !2058) #10, !dbg !2389
  tail call void @llvm.dbg.value(metadata i64* %50, i64 0, metadata !2157, metadata !2015) #10, !dbg !2391
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2158, metadata !2015) #10, !dbg !2392
  tail call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !2163, metadata !2058) #10, !dbg !2393
  tail call void @llvm.dbg.value(metadata i64* %50, i64 0, metadata !2183, metadata !2015) #10, !dbg !2395
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !2184, metadata !2015) #10, !dbg !2396
  %54 = icmp eq i64 %52, 0, !dbg !2397
  br i1 %54, label %57, label %55, !dbg !2399

; <label>:55:                                     ; preds = %47
  %56 = inttoptr i64 %48 to i8*, !dbg !2400
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %49, i8* %56, i64 %51, i32 8, i1 false) #10, !dbg !2400
  br label %57, !dbg !2400

; <label>:57:                                     ; preds = %55, %47
  tail call void @llvm.dbg.value(metadata i64* %53, i64 0, metadata !2287, metadata !2015) #10, !dbg !2342
  %58 = getelementptr inbounds i64, i64* %53, i64 1, !dbg !2401
  tail call void @llvm.dbg.value(metadata i64* %58, i64 0, metadata !2287, metadata !2015) #10, !dbg !2342
  %59 = icmp eq i64 %48, 0, !dbg !2402
  br i1 %59, label %62, label %60, !dbg !2405

; <label>:60:                                     ; preds = %57
  %61 = inttoptr i64 %48 to i8*, !dbg !2406
  tail call void @_ZdlPv(i8* %61) #10, !dbg !2413
  br label %62, !dbg !2414

; <label>:62:                                     ; preds = %57, %60
  store i8* %49, i8** %17, align 8, !dbg !2415, !tbaa !2198
  store i64* %58, i64** %16, align 8, !dbg !2416, !tbaa !2205
  %63 = getelementptr inbounds i64, i64* %50, i64 %38, !dbg !2417
  %64 = ptrtoint i8* %49 to i64
  br label %65

; <label>:65:                                     ; preds = %27, %62
  %66 = phi i64 [ %20, %27 ], [ %64, %62 ]
  %67 = phi i64 [ %22, %27 ], [ %64, %62 ]
  %68 = phi i64** [ %16, %27 ], [ %3, %62 ]
  %69 = phi i64* [ %28, %27 ], [ %63, %62 ]
  store i64* %69, i64** %68, align 8, !tbaa !2418
  %70 = add nuw nsw i64 %25, 1, !dbg !2419
  %71 = icmp slt i64 %70, %18, !dbg !2211
  br i1 %71, label %72, label %76, !dbg !2213, !llvm.loop !2420

; <label>:72:                                     ; preds = %65
  %73 = load i64*, i64** %16, align 8, !tbaa !2205
  %74 = load i64*, i64** %3, align 8, !tbaa !2208
  %75 = ptrtoint i64* %73 to i64, !dbg !2213
  br label %19, !dbg !2213

; <label>:76:                                     ; preds = %65
  br label %77, !dbg !2422

; <label>:77:                                     ; preds = %76, %2
  ret void, !dbg !2422
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind readonly uwtable
define i32 @_Z3cmpPKvS0_(i8* nocapture readonly, i8* nocapture readonly) #4 !dbg !2423 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2425, metadata !2015), !dbg !2427
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2426, metadata !2015), !dbg !2428
  %3 = bitcast i8* %0 to i64*, !dbg !2429
  %4 = load i64, i64* %3, align 8, !dbg !2430, !tbaa !2276
  %5 = bitcast i8* %1 to i64*, !dbg !2431
  %6 = load i64, i64* %5, align 8, !dbg !2432, !tbaa !2276
  %7 = sub nsw i64 %4, %6, !dbg !2433
  %8 = trunc i64 %7 to i32, !dbg !2430
  ret i32 %8, !dbg !2434
}

; Function Attrs: nounwind uwtable
define void @_Z13BM_copy_qsortRN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) local_unnamed_addr #1 !dbg !2435 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3546, metadata !2015), !dbg !3552
  %7 = bitcast %"class.std::vector"* %5 to i8*, !dbg !3553
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10, !dbg !3553
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3554, metadata !2015), !dbg !3559
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3557, metadata !2015), !dbg !3561
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3562, metadata !3567), !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3565, metadata !2015), !dbg !3570
  %8 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, !dbg !3571
  %9 = load i32*, i32** %8, align 8, !dbg !3571, !tbaa !3572
  %10 = load i32, i32* %9, align 4, !dbg !3575, !tbaa !3576
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3547, metadata !2015), !dbg !3578
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %10), !dbg !3579
  %11 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*, !dbg !3580
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #10, !dbg !3580
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !3548, metadata !2015), !dbg !3581
  %12 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %12, align 8, !tbaa !3582
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3547, metadata !2015), !dbg !3578
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3584, metadata !2015), !dbg !3587
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !3594
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3592, metadata !2015), !dbg !3596
  %13 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, !dbg !3597
  %14 = load i64*, i64** %13, align 8, !dbg !3597, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3547, metadata !2015), !dbg !3578
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3598, metadata !2015), !dbg !3601
  %15 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1, !dbg !3603
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !3604
  tail call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3592, metadata !2015), !dbg !3606
  %16 = load i64*, i64** %15, align 8, !dbg !3607, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !3548, metadata !2015), !dbg !3581
  %17 = ptrtoint i64* %14 to i64
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !3608, metadata !2015) #10, !dbg !3621
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !3623
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !3624
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3625, metadata !2015) #10, !dbg !3632
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3631, metadata !2015) #10, !dbg !3635
  %18 = icmp eq i64* %14, %16, !dbg !3636
  %19 = ptrtoint i64* %16 to i64, !dbg !3637
  br i1 %18, label %30, label %20, !dbg !3637

; <label>:20:                                     ; preds = %1
  %21 = bitcast <2 x i64>* %2 to i8*, !dbg !3638
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #10, !dbg !3638
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !3639
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3640, metadata !2015) #10, !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3643, metadata !2015) #10, !dbg !3647
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3644, metadata !2015) #10, !dbg !3648
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3649, metadata !2015) #10, !dbg !3655
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3653, metadata !2015) #10, !dbg !3658
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !dbg !3659, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !3623
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !3665
  %22 = getelementptr inbounds i64, i64* %14, i64 1
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !3624
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !3667
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !3672
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !3675
  %23 = icmp eq i64* %22, %16, !dbg !3676
  br i1 %23, label %29, label %24, !dbg !3677

; <label>:24:                                     ; preds = %20
  %25 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %26 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %74, !dbg !3677

; <label>:28:                                     ; preds = %74
  br label %29, !dbg !3678

; <label>:29:                                     ; preds = %28, %20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #10, !dbg !3678
  br label %30, !dbg !3678

; <label>:30:                                     ; preds = %1, %29
  %31 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 0
  %32 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 2
  %33 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 11
  %34 = sub i64 %19, %17
  %35 = ashr exact i64 %34, 3
  %36 = icmp eq i64 %35, 0
  %37 = icmp eq i64 %34, 0
  %38 = bitcast i64* %14 to i8*
  br i1 %36, label %39, label %62, !dbg !3679

; <label>:39:                                     ; preds = %30
  br i1 %37, label %41, label %40, !dbg !3679

; <label>:40:                                     ; preds = %39
  br label %52, !dbg !3679

; <label>:41:                                     ; preds = %39
  br label %42, !dbg !3679

; <label>:42:                                     ; preds = %41, %51
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !3687
  %43 = load i8, i8* %31, align 8, !dbg !3679, !tbaa !3688, !range !3698
  %44 = icmp eq i8 %43, 1, !dbg !3679
  br i1 %44, label %46, label %45, !dbg !3699, !prof !3700

; <label>:45:                                     ; preds = %42
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !3701
  br label %46, !dbg !3703

; <label>:46:                                     ; preds = %45, %42
  %47 = load i64, i64* %32, align 8, !dbg !3704, !tbaa !3705
  %48 = add i64 %47, 1, !dbg !3704
  store i64 %48, i64* %32, align 8, !dbg !3704, !tbaa !3705
  %49 = load i64, i64* %33, align 8, !dbg !3706, !tbaa !3707
  %50 = icmp ult i64 %47, %49, !dbg !3708
  br i1 %50, label %51, label %99, !dbg !3709, !prof !3700

; <label>:51:                                     ; preds = %46
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3547, metadata !2015), !dbg !3578
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !3715
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !3717
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !3723
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3721, metadata !2015) #10, !dbg !3725
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !3726
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !3731
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3730, metadata !2015) #10, !dbg !3734
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2064, metadata !2015) #10, !dbg !3737
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3738, metadata !2058) #10, !dbg !3748
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !3751
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !3748
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3746, metadata !2015) #10, !dbg !3752
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3753, metadata !2058) #10, !dbg !3761
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !3763
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !3761
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3760, metadata !2015) #10, !dbg !3764
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3765, metadata !2058) #10, !dbg !3771
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !3773
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !3771
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3770, metadata !2015) #10, !dbg !3774
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3775, metadata !2058) #10, !dbg !3782
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !3784
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !3782
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3781, metadata !2015) #10, !dbg !3785
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3786, metadata !2058) #10, !dbg !3794
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !3796
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !3794
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3793, metadata !2015) #10, !dbg !3797
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3798, metadata !2058) #10, !dbg !3806
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3804, metadata !2015) #10, !dbg !3808
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !3809
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3810, metadata !2058) #10, !dbg !3820
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3818, metadata !2015) #10, !dbg !3822
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @qsort(i8* null, i64 0, i64 8, i32 (i8*, i8*)* nonnull @_Z3cmpPKvS0_) #10, !dbg !3823
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3824, metadata !2015) #10, !dbg !3827
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3829, metadata !2015) #10, !dbg !3832
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2193, metadata !2015) #10, !dbg !3835
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2190, metadata !2015) #10, !dbg !3838
  br label %42, !dbg !3687, !llvm.loop !3839

; <label>:52:                                     ; preds = %40, %61
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !3687
  %53 = load i8, i8* %31, align 8, !dbg !3679, !tbaa !3688, !range !3698
  %54 = icmp eq i8 %53, 1, !dbg !3679
  br i1 %54, label %56, label %55, !dbg !3699, !prof !3700

; <label>:55:                                     ; preds = %52
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !3701
  br label %56, !dbg !3703

; <label>:56:                                     ; preds = %55, %52
  %57 = load i64, i64* %32, align 8, !dbg !3704, !tbaa !3705
  %58 = add i64 %57, 1, !dbg !3704
  store i64 %58, i64* %32, align 8, !dbg !3704, !tbaa !3705
  %59 = load i64, i64* %33, align 8, !dbg !3706, !tbaa !3707
  %60 = icmp ult i64 %57, %59, !dbg !3708
  br i1 %60, label %61, label %100, !dbg !3709, !prof !3700

; <label>:61:                                     ; preds = %56
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3547, metadata !2015), !dbg !3578
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !3715
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !3717
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !3723
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3721, metadata !2015) #10, !dbg !3725
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !3726
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !3731
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3730, metadata !2015) #10, !dbg !3734
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2064, metadata !2015) #10, !dbg !3737
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3738, metadata !2058) #10, !dbg !3748
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !3751
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !3748
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3746, metadata !2015) #10, !dbg !3752
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3753, metadata !2058) #10, !dbg !3761
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !3763
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !3761
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3760, metadata !2015) #10, !dbg !3764
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3765, metadata !2058) #10, !dbg !3771
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !3773
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !3771
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3770, metadata !2015) #10, !dbg !3774
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3775, metadata !2058) #10, !dbg !3782
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !3784
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !3782
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3781, metadata !2015) #10, !dbg !3785
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3786, metadata !2058) #10, !dbg !3794
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !3796
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !3794
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3793, metadata !2015) #10, !dbg !3797
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3798, metadata !2058) #10, !dbg !3806
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3804, metadata !2015) #10, !dbg !3808
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !3809
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3810, metadata !2058) #10, !dbg !3820
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3818, metadata !2015) #10, !dbg !3822
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* null, i8* %38, i64 %34, i32 8, i1 false) #10, !dbg !3842
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @qsort(i8* null, i64 0, i64 8, i32 (i8*, i8*)* nonnull @_Z3cmpPKvS0_) #10, !dbg !3823
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3824, metadata !2015) #10, !dbg !3827
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3829, metadata !2015) #10, !dbg !3832
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2193, metadata !2015) #10, !dbg !3835
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2190, metadata !2015) #10, !dbg !3838
  br label %52, !dbg !3687, !llvm.loop !3839

; <label>:62:                                     ; preds = %30
  %63 = icmp ugt i64 %35, 2305843009213693951
  br i1 %63, label %65, label %64, !dbg !3679

; <label>:64:                                     ; preds = %62
  br label %85, !dbg !3679

; <label>:65:                                     ; preds = %62
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !3687
  %66 = load i8, i8* %31, align 8, !dbg !3679, !tbaa !3688, !range !3698
  %67 = icmp eq i8 %66, 1, !dbg !3679
  br i1 %67, label %69, label %68, !dbg !3699, !prof !3700

; <label>:68:                                     ; preds = %65
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !3701
  br label %69, !dbg !3703

; <label>:69:                                     ; preds = %68, %65
  %70 = load i64, i64* %32, align 8, !dbg !3704, !tbaa !3705
  %71 = add i64 %70, 1, !dbg !3704
  store i64 %71, i64* %32, align 8, !dbg !3704, !tbaa !3705
  %72 = load i64, i64* %33, align 8, !dbg !3706, !tbaa !3707
  %73 = icmp ult i64 %70, %72, !dbg !3708
  br i1 %73, label %94, label %102, !dbg !3709, !prof !3700

; <label>:74:                                     ; preds = %74, %24
  %75 = phi i64* [ %22, %24 ], [ %83, %74 ]
  %76 = ptrtoint i64* %75 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #10, !dbg !3844
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !3623
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !3667
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015) #10, !dbg !3851
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015) #10, !dbg !3853
  %77 = sub i64 %76, %17, !dbg !3854
  %78 = ashr exact i64 %77, 3, !dbg !3854
  call void @llvm.dbg.value(metadata %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, metadata !3649, metadata !2015) #10, !dbg !3855
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !3857
  call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !3653, metadata !2015) #10, !dbg !3858
  store i64 0, i64* %26, align 8, !dbg !3859, !tbaa !3860
  store i64 %78, i64* %27, align 8, !dbg !3862, !tbaa !3863
  call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !3639
  %79 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10, !dbg !3864
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !3623
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !3865
  %80 = getelementptr inbounds i64, i64* %14, i64 %79, !dbg !3867
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3868, metadata !2015) #10, !dbg !3877
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3876, metadata !2015) #10, !dbg !3879
  call void @llvm.dbg.value(metadata i64* %75, i64 0, metadata !3880, metadata !2015) #10, !dbg !3888
  call void @llvm.dbg.value(metadata i64* %80, i64 0, metadata !3886, metadata !2015) #10, !dbg !3890
  %81 = load i64, i64* %75, align 8, !dbg !3891, !tbaa !2276
  call void @llvm.dbg.value(metadata i64 %81, i64 0, metadata !3887, metadata !2015) #10, !dbg !3892
  %82 = load i64, i64* %80, align 8, !dbg !3893, !tbaa !2276
  store i64 %82, i64* %75, align 8, !dbg !3894, !tbaa !2276
  store i64 %81, i64* %80, align 8, !dbg !3895, !tbaa !2276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #10, !dbg !3896
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !3667
  %83 = getelementptr inbounds i64, i64* %75, i64 1
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !3624
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !3667
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !3672
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !3675
  %84 = icmp eq i64* %83, %16, !dbg !3676
  br i1 %84, label %28, label %74, !dbg !3677, !llvm.loop !3897

; <label>:85:                                     ; preds = %64, %98
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !3687
  %86 = load i8, i8* %31, align 8, !dbg !3679, !tbaa !3688, !range !3698
  %87 = icmp eq i8 %86, 1, !dbg !3679
  br i1 %87, label %89, label %88, !dbg !3699, !prof !3700

; <label>:88:                                     ; preds = %85
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !3701
  br label %89, !dbg !3703

; <label>:89:                                     ; preds = %88, %85
  %90 = load i64, i64* %32, align 8, !dbg !3704, !tbaa !3705
  %91 = add i64 %90, 1, !dbg !3704
  store i64 %91, i64* %32, align 8, !dbg !3704, !tbaa !3705
  %92 = load i64, i64* %33, align 8, !dbg !3706, !tbaa !3707
  %93 = icmp ult i64 %90, %92, !dbg !3708
  br i1 %93, label %95, label %101, !dbg !3709, !prof !3700

; <label>:94:                                     ; preds = %69
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3547, metadata !2015), !dbg !3578
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !3715
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !3717
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !3723
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3721, metadata !2015) #10, !dbg !3725
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !3726
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !3731
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3730, metadata !2015) #10, !dbg !3734
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2064, metadata !2015) #10, !dbg !3737
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2071, metadata !2015) #10, !dbg !3900
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !3902
  call void @_ZSt17__throw_bad_allocv() #9, !dbg !3903
  unreachable, !dbg !3903

; <label>:95:                                     ; preds = %89
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3547, metadata !2015), !dbg !3578
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !3715
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !3717
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !3723
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3721, metadata !2015) #10, !dbg !3725
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !3726
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !3731
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3730, metadata !2015) #10, !dbg !3734
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2064, metadata !2015) #10, !dbg !3737
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2071, metadata !2015) #10, !dbg !3900
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !3902
  %96 = call i8* @_Znwm(i64 %34) #10, !dbg !3904
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3738, metadata !2058) #10, !dbg !3748
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !3751
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !3746, metadata !2015) #10, !dbg !3752
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3753, metadata !2058) #10, !dbg !3761
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !3763
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !3761
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !3760, metadata !2015) #10, !dbg !3764
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3765, metadata !2058) #10, !dbg !3771
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !3773
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !3771
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !3770, metadata !2015) #10, !dbg !3774
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3775, metadata !2058) #10, !dbg !3782
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !3784
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !3782
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !3781, metadata !2015) #10, !dbg !3785
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3786, metadata !2058) #10, !dbg !3794
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !3796
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !3793, metadata !2015) #10, !dbg !3797
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3798, metadata !2058) #10, !dbg !3806
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !3804, metadata !2015) #10, !dbg !3808
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !3809
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3810, metadata !2058) #10, !dbg !3820
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !3818, metadata !2015) #10, !dbg !3822
  br i1 %37, label %98, label %97, !dbg !3905

; <label>:97:                                     ; preds = %95
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %96, i8* %38, i64 %34, i32 8, i1 false) #10, !dbg !3842
  br label %98, !dbg !3842

; <label>:98:                                     ; preds = %97, %95
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @qsort(i8* nonnull %96, i64 %35, i64 8, i32 (i8*, i8*)* nonnull @_Z3cmpPKvS0_) #10, !dbg !3823
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3550, metadata !2015), !dbg !3710
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3824, metadata !2015) #10, !dbg !3827
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3829, metadata !2015) #10, !dbg !3832
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2193, metadata !2015) #10, !dbg !3835
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2190, metadata !2015) #10, !dbg !3838
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2410, metadata !2015) #10, !dbg !3906
  call void @_ZdlPv(i8* nonnull %96) #10, !dbg !3908
  br label %85, !dbg !3687, !llvm.loop !3839

; <label>:99:                                     ; preds = %46
  br label %102, !dbg !3909

; <label>:100:                                    ; preds = %56
  br label %102, !dbg !3909

; <label>:101:                                    ; preds = %89
  br label %102, !dbg !3909

; <label>:102:                                    ; preds = %101, %100, %99, %69
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !3909
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10, !dbg !3912
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3547, metadata !2015), !dbg !3578
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3824, metadata !2015) #10, !dbg !3913
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3829, metadata !2015) #10, !dbg !3915
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2193, metadata !2015) #10, !dbg !3917
  call void @llvm.dbg.value(metadata i64* %14, i64 0, metadata !2190, metadata !2015) #10, !dbg !3919
  %103 = icmp eq i64* %14, null, !dbg !3920
  br i1 %103, label %106, label %104, !dbg !3921

; <label>:104:                                    ; preds = %102
  call void @llvm.dbg.value(metadata i64* %14, i64 0, metadata !2410, metadata !2015) #10, !dbg !3922
  %105 = bitcast i64* %14 to i8*, !dbg !3924
  call void @_ZdlPv(i8* %105) #10, !dbg !3925
  br label %106, !dbg !3926

; <label>:106:                                    ; preds = %102, %104
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10, !dbg !3912
  ret void, !dbg !3912
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @_Z11BM_std_sortRN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) local_unnamed_addr #1 !dbg !3927 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3929, metadata !2015), !dbg !3934
  %7 = bitcast %"class.std::vector"* %5 to i8*, !dbg !3935
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10, !dbg !3935
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3554, metadata !2015), !dbg !3936
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3557, metadata !2015), !dbg !3938
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3562, metadata !3567), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3565, metadata !2015), !dbg !3941
  %8 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, !dbg !3942
  %9 = load i32*, i32** %8, align 8, !dbg !3942, !tbaa !3572
  %10 = load i32, i32* %9, align 4, !dbg !3943, !tbaa !3576
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3930, metadata !2015), !dbg !3944
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %10), !dbg !3945
  %11 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*, !dbg !3946
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #10, !dbg !3946
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !3931, metadata !2015), !dbg !3947
  %12 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %12, align 8, !tbaa !3582
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3930, metadata !2015), !dbg !3944
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3584, metadata !2015), !dbg !3948
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !3950
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3592, metadata !2015), !dbg !3952
  %13 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, !dbg !3953
  %14 = load i64*, i64** %13, align 8, !dbg !3953, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3930, metadata !2015), !dbg !3944
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3598, metadata !2015), !dbg !3954
  %15 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1, !dbg !3956
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !3957
  tail call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3592, metadata !2015), !dbg !3959
  %16 = load i64*, i64** %15, align 8, !dbg !3960, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !3931, metadata !2015), !dbg !3947
  %17 = ptrtoint i64* %14 to i64
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !3608, metadata !2015) #10, !dbg !3961
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !3963
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !3964
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3625, metadata !2015) #10, !dbg !3965
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3631, metadata !2015) #10, !dbg !3967
  %18 = icmp eq i64* %14, %16, !dbg !3968
  %19 = ptrtoint i64* %16 to i64, !dbg !3969
  br i1 %18, label %30, label %20, !dbg !3969

; <label>:20:                                     ; preds = %1
  %21 = bitcast <2 x i64>* %2 to i8*, !dbg !3970
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #10, !dbg !3970
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !3971
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3640, metadata !2015) #10, !dbg !3972
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3643, metadata !2015) #10, !dbg !3974
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3644, metadata !2015) #10, !dbg !3975
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3649, metadata !2015) #10, !dbg !3976
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !3978
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3653, metadata !2015) #10, !dbg !3979
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !dbg !3980, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !3963
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !3981
  %22 = getelementptr inbounds i64, i64* %14, i64 1
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !3964
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !3983
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !3984
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !3986
  %23 = icmp eq i64* %22, %16, !dbg !3987
  br i1 %23, label %29, label %24, !dbg !3988

; <label>:24:                                     ; preds = %20
  %25 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %26 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %63, !dbg !3988

; <label>:28:                                     ; preds = %63
  br label %29, !dbg !3989

; <label>:29:                                     ; preds = %28, %20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #10, !dbg !3989
  br label %30, !dbg !3989

; <label>:30:                                     ; preds = %1, %29
  %31 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 0
  %32 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 2
  %33 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 11
  %34 = sub i64 %19, %17
  %35 = ashr exact i64 %34, 3
  %36 = icmp eq i64 %35, 0
  %37 = call i64 @llvm.ctlz.i64(i64 %35, i1 true) #10, !dbg !3990
  %38 = shl nuw nsw i64 %37, 1
  %39 = xor i64 %38, 126
  %40 = bitcast i64* %14 to i8*
  br i1 %36, label %41, label %51, !dbg !4002

; <label>:41:                                     ; preds = %30
  br label %42, !dbg !4002

; <label>:42:                                     ; preds = %41, %46
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !4004
  %43 = load i8, i8* %31, align 8, !dbg !4002, !tbaa !3688, !range !3698
  %44 = icmp eq i8 %43, 1, !dbg !4002
  br i1 %44, label %46, label %45, !dbg !4005, !prof !3700

; <label>:45:                                     ; preds = %42
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4006
  br label %46, !dbg !4007

; <label>:46:                                     ; preds = %45, %42
  %47 = load i64, i64* %32, align 8, !dbg !4008, !tbaa !3705
  %48 = add i64 %47, 1, !dbg !4008
  store i64 %48, i64* %32, align 8, !dbg !4008, !tbaa !3705
  %49 = load i64, i64* %33, align 8, !dbg !4009, !tbaa !3707
  %50 = icmp ult i64 %47, %49, !dbg !4010
  br i1 %50, label %42, label %88, !dbg !4011, !prof !3700, !llvm.loop !4012

; <label>:51:                                     ; preds = %30
  %52 = icmp ugt i64 %35, 2305843009213693951
  br i1 %52, label %54, label %53, !dbg !4002

; <label>:53:                                     ; preds = %51
  br label %74, !dbg !4002

; <label>:54:                                     ; preds = %51
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !4004
  %55 = load i8, i8* %31, align 8, !dbg !4002, !tbaa !3688, !range !3698
  %56 = icmp eq i8 %55, 1, !dbg !4002
  br i1 %56, label %58, label %57, !dbg !4005, !prof !3700

; <label>:57:                                     ; preds = %54
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4006
  br label %58, !dbg !4007

; <label>:58:                                     ; preds = %57, %54
  %59 = load i64, i64* %32, align 8, !dbg !4008, !tbaa !3705
  %60 = add i64 %59, 1, !dbg !4008
  store i64 %60, i64* %32, align 8, !dbg !4008, !tbaa !3705
  %61 = load i64, i64* %33, align 8, !dbg !4009, !tbaa !3707
  %62 = icmp ult i64 %59, %61, !dbg !4010
  br i1 %62, label %83, label %90, !dbg !4011, !prof !3700

; <label>:63:                                     ; preds = %63, %24
  %64 = phi i64* [ %22, %24 ], [ %72, %63 ]
  %65 = ptrtoint i64* %64 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #10, !dbg !4015
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !3963
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !3983
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015) #10, !dbg !4016
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015) #10, !dbg !4018
  %66 = sub i64 %65, %17, !dbg !4019
  %67 = ashr exact i64 %66, 3, !dbg !4019
  call void @llvm.dbg.value(metadata %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, metadata !3649, metadata !2015) #10, !dbg !4020
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !3653, metadata !2015) #10, !dbg !4023
  store i64 0, i64* %26, align 8, !dbg !4024, !tbaa !3860
  store i64 %67, i64* %27, align 8, !dbg !4025, !tbaa !3863
  call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !3971
  %68 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10, !dbg !4026
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !3963
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !4027
  %69 = getelementptr inbounds i64, i64* %14, i64 %68, !dbg !4029
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3868, metadata !2015) #10, !dbg !4030
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3876, metadata !2015) #10, !dbg !4032
  call void @llvm.dbg.value(metadata i64* %64, i64 0, metadata !3880, metadata !2015) #10, !dbg !4033
  call void @llvm.dbg.value(metadata i64* %69, i64 0, metadata !3886, metadata !2015) #10, !dbg !4035
  %70 = load i64, i64* %64, align 8, !dbg !4036, !tbaa !2276
  call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !3887, metadata !2015) #10, !dbg !4037
  %71 = load i64, i64* %69, align 8, !dbg !4038, !tbaa !2276
  store i64 %71, i64* %64, align 8, !dbg !4039, !tbaa !2276
  store i64 %70, i64* %69, align 8, !dbg !4040, !tbaa !2276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #10, !dbg !4041
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !3983
  %72 = getelementptr inbounds i64, i64* %64, i64 1
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !3964
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !3983
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !3984
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !3986
  %73 = icmp eq i64* %72, %16, !dbg !3987
  br i1 %73, label %28, label %63, !dbg !3988, !llvm.loop !3897

; <label>:74:                                     ; preds = %53, %84
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !4004
  %75 = load i8, i8* %31, align 8, !dbg !4002, !tbaa !3688, !range !3698
  %76 = icmp eq i8 %75, 1, !dbg !4002
  br i1 %76, label %78, label %77, !dbg !4005, !prof !3700

; <label>:77:                                     ; preds = %74
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4006
  br label %78, !dbg !4007

; <label>:78:                                     ; preds = %77, %74
  %79 = load i64, i64* %32, align 8, !dbg !4008, !tbaa !3705
  %80 = add i64 %79, 1, !dbg !4008
  store i64 %80, i64* %32, align 8, !dbg !4008, !tbaa !3705
  %81 = load i64, i64* %33, align 8, !dbg !4009, !tbaa !3707
  %82 = icmp ult i64 %79, %81, !dbg !4010
  br i1 %82, label %84, label %89, !dbg !4011, !prof !3700

; <label>:83:                                     ; preds = %58
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3930, metadata !2015), !dbg !3944
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3932, metadata !2015), !dbg !4042
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !4043
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !4045
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !4046
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3721, metadata !2015) #10, !dbg !4048
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !4049
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3730, metadata !2015) #10, !dbg !4052
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !4053
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2064, metadata !2015) #10, !dbg !4055
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2071, metadata !2015) #10, !dbg !4056
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !4058
  call void @_ZSt17__throw_bad_allocv() #9, !dbg !4059
  unreachable, !dbg !4059

; <label>:84:                                     ; preds = %78
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3930, metadata !2015), !dbg !3944
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3932, metadata !2015), !dbg !4042
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !4043
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !4045
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !4046
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3721, metadata !2015) #10, !dbg !4048
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !4049
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3730, metadata !2015) #10, !dbg !4052
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !4053
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2064, metadata !2015) #10, !dbg !4055
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2071, metadata !2015) #10, !dbg !4056
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !4058
  %85 = call i8* @_Znwm(i64 %34) #10, !dbg !4060
  %86 = bitcast i8* %85 to i64*, !dbg !4061
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3738, metadata !2058) #10, !dbg !4062
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !4064
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !4062
  call void @llvm.dbg.value(metadata i64* %86, i64 0, metadata !3746, metadata !2015) #10, !dbg !4065
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3753, metadata !2058) #10, !dbg !4066
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !4068
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !4066
  call void @llvm.dbg.value(metadata i64* %86, i64 0, metadata !3760, metadata !2015) #10, !dbg !4069
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3765, metadata !2058) #10, !dbg !4070
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !4072
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !4070
  call void @llvm.dbg.value(metadata i64* %86, i64 0, metadata !3770, metadata !2015) #10, !dbg !4073
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3775, metadata !2058) #10, !dbg !4074
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !4076
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !4074
  call void @llvm.dbg.value(metadata i64* %86, i64 0, metadata !3781, metadata !2015) #10, !dbg !4077
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3786, metadata !2058) #10, !dbg !4078
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !4080
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !4078
  call void @llvm.dbg.value(metadata i64* %86, i64 0, metadata !3793, metadata !2015) #10, !dbg !4081
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3798, metadata !2058) #10, !dbg !4082
  call void @llvm.dbg.value(metadata i64* %86, i64 0, metadata !3804, metadata !2015) #10, !dbg !4084
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !4085
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3810, metadata !2058) #10, !dbg !4086
  call void @llvm.dbg.value(metadata i64* %86, i64 0, metadata !3818, metadata !2015) #10, !dbg !4088
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3819, metadata !2015) #10, !dbg !4089
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %85, i8* %40, i64 %34, i32 8, i1 false) #10, !dbg !4090
  %87 = getelementptr inbounds i64, i64* %86, i64 %35, !dbg !4091
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3932, metadata !2015), !dbg !4042
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3584, metadata !2015), !dbg !4092
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !4094
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3592, metadata !2015), !dbg !4096
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3932, metadata !2015), !dbg !4042
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3598, metadata !2015), !dbg !4097
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64** undef, i64 0, metadata !3592, metadata !2015), !dbg !4101
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3999, metadata !2015) #10, !dbg !4102
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !4000, metadata !2015) #10, !dbg !4103
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !4104
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !4106
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3999, metadata !2015) #10, !dbg !4102
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !4000, metadata !2015) #10, !dbg !4103
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015) #10, !dbg !4107
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015) #10, !dbg !4109
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3993, metadata !2015) #10, !dbg !4110
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_T0_(i64* nonnull %86, i64* %87, i64 %39) #10, !dbg !4111
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_(i64* nonnull %86, i64* %87) #10, !dbg !4112
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3932, metadata !2015), !dbg !4042
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3824, metadata !2015) #10, !dbg !4113
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3829, metadata !2015) #10, !dbg !4115
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2193, metadata !2015) #10, !dbg !4117
  call void @llvm.dbg.value(metadata i64* %86, i64 0, metadata !2190, metadata !2015) #10, !dbg !4119
  call void @llvm.dbg.value(metadata i64* %86, i64 0, metadata !2410, metadata !2015) #10, !dbg !4120
  call void @_ZdlPv(i8* nonnull %85) #10, !dbg !4122
  br label %74, !dbg !4004, !llvm.loop !4012

; <label>:88:                                     ; preds = %46
  br label %90, !dbg !4123

; <label>:89:                                     ; preds = %78
  br label %90, !dbg !4123

; <label>:90:                                     ; preds = %89, %88, %58
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4123
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10, !dbg !4124
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3930, metadata !2015), !dbg !3944
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3824, metadata !2015) #10, !dbg !4125
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3829, metadata !2015) #10, !dbg !4127
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2193, metadata !2015) #10, !dbg !4129
  call void @llvm.dbg.value(metadata i64* %14, i64 0, metadata !2190, metadata !2015) #10, !dbg !4131
  %91 = icmp eq i64* %14, null, !dbg !4132
  br i1 %91, label %94, label %92, !dbg !4133

; <label>:92:                                     ; preds = %90
  call void @llvm.dbg.value(metadata i64* %14, i64 0, metadata !2410, metadata !2015) #10, !dbg !4134
  %93 = bitcast i64* %14 to i8*, !dbg !4136
  call void @_ZdlPv(i8* %93) #10, !dbg !4137
  br label %94, !dbg !4138

; <label>:94:                                     ; preds = %90, %92
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10, !dbg !4124
  ret void, !dbg !4124
}

; Function Attrs: nounwind uwtable
define i32 @_Z9partitionRSt6vectorIlSaIlEEii(%"class.std::vector"* nocapture readonly dereferenceable(24), i32, i32) local_unnamed_addr #1 !dbg !4139 {
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4144, metadata !2015), !dbg !4150
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4145, metadata !2015), !dbg !4151
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4146, metadata !2015), !dbg !4152
  %4 = sext i32 %2 to i64, !dbg !4153
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4157, metadata !2015), !dbg !4160
  %5 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, !dbg !4161
  %6 = add nsw i32 %1, -1, !dbg !4162
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4148, metadata !2015), !dbg !4163
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4149, metadata !2015), !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4149, metadata !2015), !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4148, metadata !2015), !dbg !4163
  %7 = icmp slt i32 %1, %2, !dbg !4165
  %8 = load i64*, i64** %5, align 8, !dbg !4168, !tbaa !2198
  %9 = getelementptr inbounds i64, i64* %8, i64 %4, !dbg !4172
  br i1 %7, label %10, label %41, !dbg !4173

; <label>:10:                                     ; preds = %3
  %11 = load i64, i64* %9, align 8, !dbg !4174, !tbaa !2276
  %12 = shl i64 %11, 32
  %13 = ashr exact i64 %12, 32
  %14 = sext i32 %1 to i64, !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4148, metadata !2015), !dbg !4163
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4149, metadata !2015), !dbg !4164
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4157, metadata !2015), !dbg !4176
  %15 = getelementptr inbounds i64, i64* %8, i64 %14, !dbg !4177
  %16 = load i64, i64* %15, align 8, !dbg !4178, !tbaa !2276
  %17 = icmp sgt i64 %16, %13, !dbg !4179
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4148, metadata !2015), !dbg !4163
  %18 = select i1 %17, i32 %6, i32 %1, !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !4148, metadata !2015), !dbg !4163
  %19 = add nsw i64 %14, 1, !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !4148, metadata !2015), !dbg !4163
  %20 = icmp eq i64 %19, %4, !dbg !4165
  br i1 %20, label %41, label %21, !dbg !4173, !llvm.loop !4182

; <label>:21:                                     ; preds = %10
  br label %22, !dbg !4177

; <label>:22:                                     ; preds = %21, %36
  %23 = phi i64 [ %38, %36 ], [ %19, %21 ]
  %24 = phi i32 [ %37, %36 ], [ %18, %21 ]
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !4148, metadata !2015), !dbg !4163
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4149, metadata !2015), !dbg !4164
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4157, metadata !2015), !dbg !4176
  %25 = getelementptr inbounds i64, i64* %8, i64 %23, !dbg !4177
  %26 = load i64, i64* %25, align 8, !dbg !4178, !tbaa !2276
  %27 = icmp sgt i64 %26, %13, !dbg !4179
  br i1 %27, label %36, label %28, !dbg !4180

; <label>:28:                                     ; preds = %22
  %29 = add nsw i32 %24, 1, !dbg !4184
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !4148, metadata !2015), !dbg !4163
  %30 = trunc i64 %23 to i32, !dbg !4186
  %31 = icmp eq i32 %29, %30, !dbg !4186
  br i1 %31, label %36, label %32, !dbg !4188

; <label>:32:                                     ; preds = %28
  %33 = sext i32 %29 to i64, !dbg !4189
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4190
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !4157, metadata !2015), !dbg !4192
  %34 = getelementptr inbounds i64, i64* %8, i64 %33, !dbg !4193
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4194
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4157, metadata !2015), !dbg !4196
  tail call void @llvm.dbg.value(metadata i64* %34, i64 0, metadata !3880, metadata !2015), !dbg !4197
  tail call void @llvm.dbg.value(metadata i64* %25, i64 0, metadata !3886, metadata !2015), !dbg !4199
  %35 = load i64, i64* %34, align 8, !dbg !4200, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3887, metadata !2015), !dbg !4201
  store i64 %26, i64* %34, align 8, !dbg !4202, !tbaa !2276
  store i64 %35, i64* %25, align 8, !dbg !4203, !tbaa !2276
  br label %36, !dbg !4204

; <label>:36:                                     ; preds = %28, %22, %32
  %37 = phi i32 [ %29, %32 ], [ %29, %28 ], [ %24, %22 ]
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !4148, metadata !2015), !dbg !4163
  %38 = add nsw i64 %23, 1, !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !4148, metadata !2015), !dbg !4163
  %39 = icmp eq i64 %38, %4, !dbg !4165
  br i1 %39, label %40, label %22, !dbg !4173, !llvm.loop !4205

; <label>:40:                                     ; preds = %36
  br label %41, !dbg !4207

; <label>:41:                                     ; preds = %40, %3, %10
  %42 = phi i32 [ %18, %10 ], [ %6, %3 ], [ %37, %40 ]
  %43 = add nsw i32 %42, 1, !dbg !4207
  %44 = sext i32 %43 to i64, !dbg !4208
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4209
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !4157, metadata !2015), !dbg !4211
  %45 = getelementptr inbounds i64, i64* %8, i64 %44, !dbg !4212
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4213
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4157, metadata !2015), !dbg !4215
  tail call void @llvm.dbg.value(metadata i64* %45, i64 0, metadata !3880, metadata !2015), !dbg !4216
  tail call void @llvm.dbg.value(metadata i64* %9, i64 0, metadata !3886, metadata !2015), !dbg !4218
  %46 = load i64, i64* %45, align 8, !dbg !4219, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !3887, metadata !2015), !dbg !4220
  %47 = load i64, i64* %9, align 8, !dbg !4221, !tbaa !2276
  store i64 %47, i64* %45, align 8, !dbg !4222, !tbaa !2276
  store i64 %46, i64* %9, align 8, !dbg !4223, !tbaa !2276
  ret i32 %43, !dbg !4224
}

; Function Attrs: nounwind uwtable
define void @_Z9quickSortRSt6vectorIlSaIlEEii(%"class.std::vector"* readonly dereferenceable(24), i32, i32) local_unnamed_addr #1 !dbg !4225 {
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4229, metadata !2015), !dbg !4233
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4230, metadata !2015), !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4231, metadata !2015), !dbg !4235
  %4 = icmp slt i32 %1, %2, !dbg !4236
  br i1 %4, label %5, label %54, !dbg !4238

; <label>:5:                                      ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0
  br label %8, !dbg !4238

; <label>:8:                                      ; preds = %5, %44
  %9 = phi i32 [ %1, %5 ], [ %51, %44 ]
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4144, metadata !2015), !dbg !4239
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !4145, metadata !2015), !dbg !4241
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4146, metadata !2015), !dbg !4242
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !4230, metadata !2015), !dbg !4234
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !4157, metadata !2015), !dbg !4245
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !4149, metadata !2015), !dbg !4246
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !4149, metadata !2015), !dbg !4246
  %10 = load i64*, i64** %7, align 8, !dbg !4247, !tbaa !2198
  %11 = getelementptr inbounds i64, i64* %10, i64 %6, !dbg !4249
  %12 = load i64, i64* %11, align 8, !dbg !4250, !tbaa !2276
  %13 = shl i64 %12, 32
  %14 = ashr exact i64 %13, 32
  %15 = sext i32 %9 to i64, !dbg !4251
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4149, metadata !2015), !dbg !4246
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4252
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !4157, metadata !2015), !dbg !4253
  %16 = getelementptr inbounds i64, i64* %10, i64 %15, !dbg !4254
  %17 = load i64, i64* %16, align 8, !dbg !4255, !tbaa !2276
  %18 = icmp sgt i64 %17, %14, !dbg !4256
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !4148, metadata !2015), !dbg !4257
  %19 = sext i1 %18 to i32, !dbg !4258
  %20 = add nsw i32 %9, %19, !dbg !4258
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4148, metadata !2015), !dbg !4257
  %21 = add nsw i64 %15, 1, !dbg !4259
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4148, metadata !2015), !dbg !4257
  %22 = icmp eq i64 %21, %6, !dbg !4260
  br i1 %22, label %44, label %23, !dbg !4251, !llvm.loop !4182

; <label>:23:                                     ; preds = %8
  br label %24, !dbg !4254

; <label>:24:                                     ; preds = %23, %38
  %25 = phi i64 [ %40, %38 ], [ %21, %23 ]
  %26 = phi i32 [ %39, %38 ], [ %20, %23 ]
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !4148, metadata !2015), !dbg !4257
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4149, metadata !2015), !dbg !4246
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4252
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !4157, metadata !2015), !dbg !4253
  %27 = getelementptr inbounds i64, i64* %10, i64 %25, !dbg !4254
  %28 = load i64, i64* %27, align 8, !dbg !4255, !tbaa !2276
  %29 = icmp sgt i64 %28, %14, !dbg !4256
  br i1 %29, label %38, label %30, !dbg !4258

; <label>:30:                                     ; preds = %24
  %31 = add nsw i32 %26, 1, !dbg !4261
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !4148, metadata !2015), !dbg !4257
  %32 = trunc i64 %25 to i32, !dbg !4262
  %33 = icmp eq i32 %31, %32, !dbg !4262
  br i1 %33, label %38, label %34, !dbg !4263

; <label>:34:                                     ; preds = %30
  %35 = sext i32 %31 to i64, !dbg !4264
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4265
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !4157, metadata !2015), !dbg !4267
  %36 = getelementptr inbounds i64, i64* %10, i64 %35, !dbg !4268
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !4157, metadata !2015), !dbg !4271
  tail call void @llvm.dbg.value(metadata i64* %36, i64 0, metadata !3880, metadata !2015), !dbg !4272
  tail call void @llvm.dbg.value(metadata i64* %27, i64 0, metadata !3886, metadata !2015), !dbg !4274
  %37 = load i64, i64* %36, align 8, !dbg !4275, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !3887, metadata !2015), !dbg !4276
  store i64 %28, i64* %36, align 8, !dbg !4277, !tbaa !2276
  store i64 %37, i64* %27, align 8, !dbg !4278, !tbaa !2276
  br label %38, !dbg !4279

; <label>:38:                                     ; preds = %34, %30, %24
  %39 = phi i32 [ %31, %34 ], [ %31, %30 ], [ %26, %24 ]
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !4148, metadata !2015), !dbg !4257
  %40 = add nsw i64 %25, 1, !dbg !4259
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !4148, metadata !2015), !dbg !4257
  %41 = icmp eq i64 %40, %6, !dbg !4260
  br i1 %41, label %42, label %24, !dbg !4251, !llvm.loop !4205

; <label>:42:                                     ; preds = %38
  %43 = load i64, i64* %11, align 8, !tbaa !2276
  br label %44, !dbg !4280

; <label>:44:                                     ; preds = %42, %8
  %45 = phi i64 [ %12, %8 ], [ %43, %42 ], !dbg !4281
  %46 = phi i32 [ %20, %8 ], [ %39, %42 ]
  %47 = add nsw i32 %46, 1, !dbg !4280
  %48 = sext i32 %47 to i64, !dbg !4283
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4284
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !4157, metadata !2015), !dbg !4286
  %49 = getelementptr inbounds i64, i64* %10, i64 %48, !dbg !4287
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4288
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !4157, metadata !2015), !dbg !4290
  tail call void @llvm.dbg.value(metadata i64* %49, i64 0, metadata !3880, metadata !2015), !dbg !4291
  tail call void @llvm.dbg.value(metadata i64* %11, i64 0, metadata !3886, metadata !2015), !dbg !4292
  %50 = load i64, i64* %49, align 8, !dbg !4293, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !3887, metadata !2015), !dbg !4294
  store i64 %45, i64* %49, align 8, !dbg !4295, !tbaa !2276
  store i64 %50, i64* %11, align 8, !dbg !4296, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !4232, metadata !2015), !dbg !4297
  tail call void @_Z9quickSortRSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %0, i32 %9, i32 %46), !dbg !4298
  %51 = add nsw i32 %46, 2, !dbg !4299
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4229, metadata !2015), !dbg !4233
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !4230, metadata !2015), !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4231, metadata !2015), !dbg !4235
  %52 = icmp slt i32 %51, %2, !dbg !4236
  br i1 %52, label %8, label %53, !dbg !4238

; <label>:53:                                     ; preds = %44
  br label %54, !dbg !4300

; <label>:54:                                     ; preds = %53, %3
  ret void, !dbg !4300
}

; Function Attrs: nounwind uwtable
define void @_Z12BM_quickSortRN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) local_unnamed_addr #1 !dbg !4301 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  %7 = alloca %"class.std::vector", align 8
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !4303, metadata !2015), !dbg !4311
  %8 = bitcast %"class.std::vector"* %5 to i8*, !dbg !4312
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #10, !dbg !4312
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3554, metadata !2015), !dbg !4313
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3557, metadata !2015), !dbg !4315
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3562, metadata !3567), !dbg !4316
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3565, metadata !2015), !dbg !4318
  %9 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, !dbg !4319
  %10 = load i32*, i32** %9, align 8, !dbg !4319, !tbaa !3572
  %11 = load i32, i32* %10, align 4, !dbg !4320, !tbaa !3576
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4304, metadata !2015), !dbg !4321
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %11), !dbg !4322
  %12 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*, !dbg !4323
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #10, !dbg !4323
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !4305, metadata !2015), !dbg !4324
  %13 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %13, align 8, !tbaa !3582
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4304, metadata !2015), !dbg !4321
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3584, metadata !2015), !dbg !4325
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !4327
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3592, metadata !2015), !dbg !4329
  %14 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, !dbg !4330
  %15 = load i64*, i64** %14, align 8, !dbg !4330, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4304, metadata !2015), !dbg !4321
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3598, metadata !2015), !dbg !4331
  %16 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1, !dbg !4333
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3592, metadata !2015), !dbg !4336
  %17 = load i64*, i64** %16, align 8, !dbg !4337, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !4305, metadata !2015), !dbg !4324
  %18 = ptrtoint i64* %15 to i64
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !3608, metadata !2015) #10, !dbg !4338
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4340
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !4341
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3625, metadata !2015) #10, !dbg !4342
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3631, metadata !2015) #10, !dbg !4344
  %19 = icmp eq i64* %15, %17, !dbg !4345
  %20 = ptrtoint i64* %17 to i64, !dbg !4346
  br i1 %19, label %42, label %21, !dbg !4346

; <label>:21:                                     ; preds = %1
  %22 = bitcast <2 x i64>* %2 to i8*, !dbg !4347
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #10, !dbg !4347
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !4348
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3640, metadata !2015) #10, !dbg !4349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3643, metadata !2015) #10, !dbg !4351
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3644, metadata !2015) #10, !dbg !4352
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3649, metadata !2015) #10, !dbg !4353
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !4355
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3653, metadata !2015) #10, !dbg !4356
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !dbg !4357, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4340
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !4358
  %23 = getelementptr inbounds i64, i64* %15, i64 1
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !4341
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4360
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !4361
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !4363
  %24 = icmp eq i64* %23, %17, !dbg !4364
  br i1 %24, label %30, label %25, !dbg !4365

; <label>:25:                                     ; preds = %21
  %26 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %28 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %31, !dbg !4365

; <label>:29:                                     ; preds = %31
  br label %30, !dbg !4366

; <label>:30:                                     ; preds = %29, %21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #10, !dbg !4366
  br label %42, !dbg !4366

; <label>:31:                                     ; preds = %31, %25
  %32 = phi i64* [ %23, %25 ], [ %40, %31 ]
  %33 = ptrtoint i64* %32 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #10, !dbg !4367
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4340
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4360
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015) #10, !dbg !4368
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015) #10, !dbg !4370
  %34 = sub i64 %33, %18, !dbg !4371
  %35 = ashr exact i64 %34, 3, !dbg !4371
  call void @llvm.dbg.value(metadata %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, metadata !3649, metadata !2015) #10, !dbg !4372
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !4374
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3653, metadata !2015) #10, !dbg !4375
  store i64 0, i64* %27, align 8, !dbg !4376, !tbaa !3860
  store i64 %35, i64* %28, align 8, !dbg !4377, !tbaa !3863
  call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !4348
  %36 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10, !dbg !4378
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4340
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !4379
  %37 = getelementptr inbounds i64, i64* %15, i64 %36, !dbg !4381
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3868, metadata !2015) #10, !dbg !4382
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3876, metadata !2015) #10, !dbg !4384
  call void @llvm.dbg.value(metadata i64* %32, i64 0, metadata !3880, metadata !2015) #10, !dbg !4385
  call void @llvm.dbg.value(metadata i64* %37, i64 0, metadata !3886, metadata !2015) #10, !dbg !4387
  %38 = load i64, i64* %32, align 8, !dbg !4388, !tbaa !2276
  call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3887, metadata !2015) #10, !dbg !4389
  %39 = load i64, i64* %37, align 8, !dbg !4390, !tbaa !2276
  store i64 %39, i64* %32, align 8, !dbg !4391, !tbaa !2276
  store i64 %38, i64* %37, align 8, !dbg !4392, !tbaa !2276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #10, !dbg !4393
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4360
  %40 = getelementptr inbounds i64, i64* %32, i64 1
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !4341
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4360
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !4361
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !4363
  %41 = icmp eq i64* %40, %17, !dbg !4364
  br i1 %41, label %29, label %31, !dbg !4365, !llvm.loop !3897

; <label>:42:                                     ; preds = %1, %30
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4304, metadata !2015), !dbg !4321
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015), !dbg !4394
  %43 = sub i64 %20, %18, !dbg !4396
  %44 = lshr exact i64 %43, 3, !dbg !4396
  %45 = add nuw nsw i64 %44, 4294967295, !dbg !4397
  %46 = trunc i64 %45 to i32, !dbg !4398
  call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !4306, metadata !2015), !dbg !4399
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
  br i1 %52, label %58, label %75, !dbg !4400

; <label>:58:                                     ; preds = %42
  %59 = bitcast %"class.std::vector"* %7 to i8*
  br label %60, !dbg !4401

; <label>:60:                                     ; preds = %58, %74
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !4403
  %61 = load i8, i8* %47, align 8, !dbg !4401, !tbaa !3688, !range !3698
  %62 = icmp eq i8 %61, 1, !dbg !4401
  br i1 %62, label %64, label %63, !dbg !4404, !prof !3700

; <label>:63:                                     ; preds = %60
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4405
  br label %64, !dbg !4406

; <label>:64:                                     ; preds = %63, %60
  %65 = load i64, i64* %48, align 8, !dbg !4407, !tbaa !3705
  %66 = add i64 %65, 1, !dbg !4407
  store i64 %66, i64* %48, align 8, !dbg !4407, !tbaa !3705
  %67 = load i64, i64* %49, align 8, !dbg !4408, !tbaa !3707
  %68 = icmp ult i64 %65, %67, !dbg !4409
  br i1 %68, label %69, label %107, !dbg !4410, !prof !3700

; <label>:69:                                     ; preds = %64
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10, !dbg !4411
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4304, metadata !2015), !dbg !4321
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4307, metadata !2015), !dbg !4412
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3711, metadata !2015) #10, !dbg !4413
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !4415
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !4416
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3718, metadata !2015) #10, !dbg !4418
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3721, metadata !2015) #10, !dbg !4420
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !4421
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4422, metadata !2015) #10, !dbg !4427
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !4425, metadata !2015) #10, !dbg !4429
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3727, metadata !2015) #10, !dbg !4430
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3730, metadata !2015) #10, !dbg !4432
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !2067, metadata !2015) #10, !dbg !4433
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2064, metadata !2015) #10, !dbg !4435
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3745, metadata !2015) #10, !dbg !4436
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3738, metadata !2058) #10, !dbg !4438
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !4436
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !4438
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3746, metadata !2015) #10, !dbg !4439
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3759, metadata !2015) #10, !dbg !4440
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3753, metadata !2058) #10, !dbg !4442
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !4440
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !4442
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3760, metadata !2015) #10, !dbg !4443
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3769, metadata !2015) #10, !dbg !4444
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3765, metadata !2058) #10, !dbg !4446
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !4444
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !4446
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3770, metadata !2015) #10, !dbg !4447
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3780, metadata !2015) #10, !dbg !4448
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3775, metadata !2058) #10, !dbg !4450
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !4448
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !4450
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3781, metadata !2015) #10, !dbg !4451
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3792, metadata !2015) #10, !dbg !4452
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3786, metadata !2058) #10, !dbg !4454
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !4452
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !4454
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3793, metadata !2015) #10, !dbg !4455
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3803, metadata !2015) #10, !dbg !4456
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3798, metadata !2058) #10, !dbg !4458
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3804, metadata !2015) #10, !dbg !4459
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !4460
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3817, metadata !2015) #10, !dbg !4461
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3810, metadata !2058) #10, !dbg !4463
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3818, metadata !2015) #10, !dbg !4464
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3819, metadata !2015) #10, !dbg !4465
  call void @llvm.memset.p0i8.i64(i8* nonnull %59, i8 0, i64 24, i32 8, i1 false), !dbg !4466
  store i64* null, i64** %54, align 8, !dbg !4467, !tbaa !2205
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4307, metadata !2015), !dbg !4412
  call void @_Z9quickSortRSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %7, i32 0, i32 %46), !dbg !4468
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4307, metadata !2015), !dbg !4412
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3824, metadata !2015) #10, !dbg !4469
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3829, metadata !2015) #10, !dbg !4471
  %70 = load i64*, i64** %53, align 8, !dbg !4473, !tbaa !2198
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !2193, metadata !2015) #10, !dbg !4474
  call void @llvm.dbg.value(metadata i64* %70, i64 0, metadata !2190, metadata !2015) #10, !dbg !4476
  %71 = icmp eq i64* %70, null, !dbg !4477
  br i1 %71, label %74, label %72, !dbg !4478

; <label>:72:                                     ; preds = %69
  call void @llvm.dbg.value(metadata i64* %70, i64 0, metadata !2410, metadata !2015) #10, !dbg !4479
  %73 = bitcast i64* %70 to i8*, !dbg !4481
  call void @_ZdlPv(i8* %73) #10, !dbg !4482
  br label %74, !dbg !4483

; <label>:74:                                     ; preds = %72, %69
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #10, !dbg !4484
  br label %60, !dbg !4400, !llvm.loop !4485

; <label>:75:                                     ; preds = %42
  %76 = icmp ugt i64 %51, 2305843009213693951
  br i1 %76, label %79, label %77, !dbg !4400

; <label>:77:                                     ; preds = %75
  %78 = bitcast %"class.std::vector"* %7 to i8**
  br label %89, !dbg !4401

; <label>:79:                                     ; preds = %75
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !4403
  %80 = load i8, i8* %47, align 8, !dbg !4401, !tbaa !3688, !range !3698
  %81 = icmp eq i8 %80, 1, !dbg !4401
  br i1 %81, label %83, label %82, !dbg !4404, !prof !3700

; <label>:82:                                     ; preds = %79
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4405
  br label %83, !dbg !4406

; <label>:83:                                     ; preds = %82, %79
  %84 = load i64, i64* %48, align 8, !dbg !4407, !tbaa !3705
  %85 = add i64 %84, 1, !dbg !4407
  store i64 %85, i64* %48, align 8, !dbg !4407, !tbaa !3705
  %86 = load i64, i64* %49, align 8, !dbg !4408, !tbaa !3707
  %87 = icmp ult i64 %84, %86, !dbg !4409
  br i1 %87, label %88, label %109, !dbg !4410, !prof !3700

; <label>:88:                                     ; preds = %83
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10, !dbg !4411
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4304, metadata !2015), !dbg !4321
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4307, metadata !2015), !dbg !4412
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3711, metadata !2015) #10, !dbg !4413
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !4415
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !4416
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3718, metadata !2015) #10, !dbg !4418
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3721, metadata !2015) #10, !dbg !4420
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !4421
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4422, metadata !2015) #10, !dbg !4427
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !4425, metadata !2015) #10, !dbg !4429
  call void @llvm.memset.p0i8.i64(i8* nonnull %50, i8 0, i64 24, i32 8, i1 false) #10, !dbg !4486
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3727, metadata !2015) #10, !dbg !4430
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3730, metadata !2015) #10, !dbg !4432
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !2067, metadata !2015) #10, !dbg !4433
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2064, metadata !2015) #10, !dbg !4435
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2071, metadata !2015) #10, !dbg !4487
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !4489
  call void @_ZSt17__throw_bad_allocv() #9, !dbg !4490
  unreachable, !dbg !4490

; <label>:89:                                     ; preds = %77, %106
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !4403
  %90 = load i8, i8* %47, align 8, !dbg !4401, !tbaa !3688, !range !3698
  %91 = icmp eq i8 %90, 1, !dbg !4401
  br i1 %91, label %93, label %92, !dbg !4404, !prof !3700

; <label>:92:                                     ; preds = %89
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4405
  br label %93, !dbg !4406

; <label>:93:                                     ; preds = %92, %89
  %94 = load i64, i64* %48, align 8, !dbg !4407, !tbaa !3705
  %95 = add i64 %94, 1, !dbg !4407
  store i64 %95, i64* %48, align 8, !dbg !4407, !tbaa !3705
  %96 = load i64, i64* %49, align 8, !dbg !4408, !tbaa !3707
  %97 = icmp ult i64 %94, %96, !dbg !4409
  br i1 %97, label %98, label %108, !dbg !4410, !prof !3700

; <label>:98:                                     ; preds = %93
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10, !dbg !4411
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4304, metadata !2015), !dbg !4321
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4307, metadata !2015), !dbg !4412
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3711, metadata !2015) #10, !dbg !4413
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !4415
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !4416
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3718, metadata !2015) #10, !dbg !4418
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3721, metadata !2015) #10, !dbg !4420
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !4421
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4422, metadata !2015) #10, !dbg !4427
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !4425, metadata !2015) #10, !dbg !4429
  call void @llvm.memset.p0i8.i64(i8* nonnull %50, i8 0, i64 24, i32 8, i1 false) #10, !dbg !4486
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3727, metadata !2015) #10, !dbg !4430
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3730, metadata !2015) #10, !dbg !4432
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !2067, metadata !2015) #10, !dbg !4433
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2064, metadata !2015) #10, !dbg !4435
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2071, metadata !2015) #10, !dbg !4487
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !4489
  %99 = call i8* @_Znwm(i64 %43) #10, !dbg !4491
  %100 = bitcast i8* %99 to i64*, !dbg !4492
  store i8* %99, i8** %78, align 8, !dbg !4466, !tbaa !2198
  store i8* %99, i8** %55, align 8, !dbg !4493, !tbaa !2205
  %101 = getelementptr inbounds i64, i64* %100, i64 %51, !dbg !4494
  store i64* %101, i64** %56, align 8, !dbg !4495, !tbaa !2208
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3745, metadata !2015) #10, !dbg !4436
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3738, metadata !2058) #10, !dbg !4438
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !4436
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !4438
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3746, metadata !2015) #10, !dbg !4439
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3759, metadata !2015) #10, !dbg !4440
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3753, metadata !2058) #10, !dbg !4442
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !4440
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !4442
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3760, metadata !2015) #10, !dbg !4443
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3769, metadata !2015) #10, !dbg !4444
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3765, metadata !2058) #10, !dbg !4446
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !4444
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !4446
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3770, metadata !2015) #10, !dbg !4447
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3780, metadata !2015) #10, !dbg !4448
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3775, metadata !2058) #10, !dbg !4450
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !4448
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !4450
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3781, metadata !2015) #10, !dbg !4451
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3792, metadata !2015) #10, !dbg !4452
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3786, metadata !2058) #10, !dbg !4454
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !4452
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !4454
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3793, metadata !2015) #10, !dbg !4455
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3803, metadata !2015) #10, !dbg !4456
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3798, metadata !2058) #10, !dbg !4458
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3804, metadata !2015) #10, !dbg !4459
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !4460
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3817, metadata !2015) #10, !dbg !4461
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3810, metadata !2058) #10, !dbg !4463
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3818, metadata !2015) #10, !dbg !4464
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3819, metadata !2015) #10, !dbg !4465
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %99, i8* %57, i64 %43, i32 8, i1 false) #10, !dbg !4496
  store i64* %101, i64** %54, align 8, !dbg !4467, !tbaa !2205
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4307, metadata !2015), !dbg !4412
  call void @_Z9quickSortRSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %7, i32 0, i32 %46), !dbg !4468
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4307, metadata !2015), !dbg !4412
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3824, metadata !2015) #10, !dbg !4469
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3829, metadata !2015) #10, !dbg !4471
  %102 = load i64*, i64** %53, align 8, !dbg !4473, !tbaa !2198
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !2193, metadata !2015) #10, !dbg !4474
  call void @llvm.dbg.value(metadata i64* %102, i64 0, metadata !2190, metadata !2015) #10, !dbg !4476
  %103 = icmp eq i64* %102, null, !dbg !4477
  br i1 %103, label %106, label %104, !dbg !4478

; <label>:104:                                    ; preds = %98
  call void @llvm.dbg.value(metadata i64* %102, i64 0, metadata !2410, metadata !2015) #10, !dbg !4479
  %105 = bitcast i64* %102 to i8*, !dbg !4481
  call void @_ZdlPv(i8* %105) #10, !dbg !4482
  br label %106, !dbg !4483

; <label>:106:                                    ; preds = %98, %104
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #10, !dbg !4484
  br label %89, !dbg !4400, !llvm.loop !4485

; <label>:107:                                    ; preds = %64
  br label %109, !dbg !4497

; <label>:108:                                    ; preds = %93
  br label %109, !dbg !4497

; <label>:109:                                    ; preds = %108, %107, %83
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4497
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #10, !dbg !4498
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4304, metadata !2015), !dbg !4321
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3824, metadata !2015) #10, !dbg !4499
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3829, metadata !2015) #10, !dbg !4501
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2193, metadata !2015) #10, !dbg !4503
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2190, metadata !2015) #10, !dbg !4505
  %110 = icmp eq i64* %15, null, !dbg !4506
  br i1 %110, label %112, label %111, !dbg !4507

; <label>:111:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2410, metadata !2015) #10, !dbg !4508
  call void @_ZdlPv(i8* %57) #10, !dbg !4510
  br label %112, !dbg !4511

; <label>:112:                                    ; preds = %109, %111
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #10, !dbg !4498
  ret void, !dbg !4498
}

; Function Attrs: nounwind uwtable
define i32 @_Z10partition2RSt6vectorIlSaIlEEii(%"class.std::vector"* nocapture readonly dereferenceable(24), i32, i32) local_unnamed_addr #1 !dbg !4512 {
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4514, metadata !2015), !dbg !4520
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4515, metadata !2015), !dbg !4521
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4516, metadata !2015), !dbg !4522
  %4 = sext i32 %2 to i64, !dbg !4523
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4524
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4157, metadata !2015), !dbg !4526
  %5 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, !dbg !4527
  %6 = load i64*, i64** %5, align 8, !dbg !4527, !tbaa !2198
  %7 = getelementptr inbounds i64, i64* %6, i64 %4, !dbg !4528
  %8 = load i64, i64* %7, align 8, !dbg !4529, !tbaa !2276
  %9 = add nsw i32 %1, -1, !dbg !4530
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !4518, metadata !2015), !dbg !4531
  %10 = add nsw i32 %2, 1, !dbg !4532
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4519, metadata !2015), !dbg !4533
  %11 = shl i64 %8, 32
  %12 = ashr exact i64 %11, 32
  br label %13, !dbg !4534

; <label>:13:                                     ; preds = %36, %3
  %14 = phi i32 [ %9, %3 ], [ %32, %36 ]
  %15 = phi i32 [ %10, %3 ], [ %33, %36 ]
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !4519, metadata !2015), !dbg !4533
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !4518, metadata !2015), !dbg !4531
  %16 = sext i32 %14 to i64, !dbg !4535
  br label %17, !dbg !4535, !llvm.loop !4539

; <label>:17:                                     ; preds = %17, %13
  %18 = phi i64 [ %19, %17 ], [ %16, %13 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4518, metadata !2015), !dbg !4531
  %19 = add nsw i64 %18, 1, !dbg !4541
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4543
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4157, metadata !2015), !dbg !4545
  %20 = getelementptr inbounds i64, i64* %6, i64 %19, !dbg !4546
  %21 = load i64, i64* %20, align 8, !dbg !4547, !tbaa !2276
  %22 = icmp slt i64 %21, %12, !dbg !4548
  br i1 %22, label %17, label %23, !dbg !4549, !llvm.loop !4550

; <label>:23:                                     ; preds = %17
  %24 = sext i32 %15 to i64, !dbg !4553
  br label %25, !dbg !4553

; <label>:25:                                     ; preds = %23, %25
  %26 = phi i64 [ %24, %23 ], [ %27, %25 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4519, metadata !2015), !dbg !4533
  %27 = add nsw i64 %26, -1, !dbg !4553
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4555
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !4157, metadata !2015), !dbg !4557
  %28 = getelementptr inbounds i64, i64* %6, i64 %27, !dbg !4558
  %29 = load i64, i64* %28, align 8, !dbg !4559, !tbaa !2276
  %30 = icmp sgt i64 %29, %12, !dbg !4560
  br i1 %30, label %25, label %31, !dbg !4561, !llvm.loop !4550

; <label>:31:                                     ; preds = %25
  %32 = trunc i64 %19 to i32, !dbg !4553
  %33 = trunc i64 %27 to i32, !dbg !4562
  %34 = icmp slt i32 %32, %33, !dbg !4562
  br i1 %34, label %36, label %35, !dbg !4564

; <label>:35:                                     ; preds = %31
  ret i32 %33, !dbg !4565

; <label>:36:                                     ; preds = %31
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4566
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4157, metadata !2015), !dbg !4568
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4569
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !4157, metadata !2015), !dbg !4571
  tail call void @llvm.dbg.value(metadata i64* %20, i64 0, metadata !3880, metadata !2015), !dbg !4572
  tail call void @llvm.dbg.value(metadata i64* %28, i64 0, metadata !3886, metadata !2015), !dbg !4574
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3887, metadata !2015), !dbg !4575
  store i64 %29, i64* %20, align 8, !dbg !4576, !tbaa !2276
  store i64 %21, i64* %28, align 8, !dbg !4577, !tbaa !2276
  br label %13, !dbg !4578, !llvm.loop !4579
}

; Function Attrs: nounwind uwtable
define void @_Z10quickSort2RSt6vectorIlSaIlEEii(%"class.std::vector"* readonly dereferenceable(24), i32, i32) local_unnamed_addr #1 !dbg !4582 {
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4584, metadata !2015), !dbg !4588
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4585, metadata !2015), !dbg !4589
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4586, metadata !2015), !dbg !4590
  %4 = icmp sgt i32 %2, %1, !dbg !4591
  br i1 %4, label %5, label %44, !dbg !4593

; <label>:5:                                      ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0
  %8 = add nsw i32 %2, 1
  br label %9, !dbg !4593

; <label>:9:                                      ; preds = %5, %40
  %10 = phi i32 [ %1, %5 ], [ %37, %40 ]
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4514, metadata !2015), !dbg !4594
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4515, metadata !2015), !dbg !4596
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4516, metadata !2015), !dbg !4597
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4585, metadata !2015), !dbg !4589
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4598
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !4157, metadata !2015), !dbg !4600
  %11 = load i64*, i64** %7, align 8, !dbg !4601, !tbaa !2198
  %12 = getelementptr inbounds i64, i64* %11, i64 %6, !dbg !4602
  %13 = load i64, i64* %12, align 8, !dbg !4603, !tbaa !2276
  %14 = add nsw i32 %10, -1, !dbg !4604
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !4518, metadata !2015), !dbg !4605
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !4519, metadata !2015), !dbg !4606
  %15 = shl i64 %13, 32
  %16 = ashr exact i64 %15, 32
  br label %17, !dbg !4607

; <label>:17:                                     ; preds = %39, %9
  %18 = phi i32 [ %14, %9 ], [ %36, %39 ]
  %19 = phi i32 [ %8, %9 ], [ %37, %39 ]
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !4519, metadata !2015), !dbg !4606
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !4518, metadata !2015), !dbg !4605
  %20 = sext i32 %18 to i64, !dbg !4608
  br label %21, !dbg !4608, !llvm.loop !4539

; <label>:21:                                     ; preds = %21, %17
  %22 = phi i64 [ %23, %21 ], [ %20, %17 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4518, metadata !2015), !dbg !4605
  %23 = add nsw i64 %22, 1, !dbg !4609
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4610
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4157, metadata !2015), !dbg !4612
  %24 = getelementptr inbounds i64, i64* %11, i64 %23, !dbg !4613
  %25 = load i64, i64* %24, align 8, !dbg !4614, !tbaa !2276
  %26 = icmp slt i64 %25, %16, !dbg !4615
  br i1 %26, label %21, label %27, !dbg !4616, !llvm.loop !4550

; <label>:27:                                     ; preds = %21
  %28 = sext i32 %19 to i64, !dbg !4617
  br label %29, !dbg !4617

; <label>:29:                                     ; preds = %29, %27
  %30 = phi i64 [ %28, %27 ], [ %31, %29 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4519, metadata !2015), !dbg !4606
  %31 = add nsw i64 %30, -1, !dbg !4617
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4618
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !4157, metadata !2015), !dbg !4620
  %32 = getelementptr inbounds i64, i64* %11, i64 %31, !dbg !4621
  %33 = load i64, i64* %32, align 8, !dbg !4622, !tbaa !2276
  %34 = icmp sgt i64 %33, %16, !dbg !4623
  br i1 %34, label %29, label %35, !dbg !4624, !llvm.loop !4550

; <label>:35:                                     ; preds = %29
  %36 = trunc i64 %23 to i32, !dbg !4617
  %37 = trunc i64 %31 to i32, !dbg !4625
  %38 = icmp slt i32 %36, %37, !dbg !4625
  br i1 %38, label %39, label %40, !dbg !4626

; <label>:39:                                     ; preds = %35
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4627
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4157, metadata !2015), !dbg !4629
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4630
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !4157, metadata !2015), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64* %24, i64 0, metadata !3880, metadata !2015), !dbg !4633
  tail call void @llvm.dbg.value(metadata i64* %32, i64 0, metadata !3886, metadata !2015), !dbg !4635
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !3887, metadata !2015), !dbg !4636
  store i64 %33, i64* %24, align 8, !dbg !4637, !tbaa !2276
  store i64 %25, i64* %32, align 8, !dbg !4638, !tbaa !2276
  br label %17, !dbg !4639, !llvm.loop !4579

; <label>:40:                                     ; preds = %35
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !4587, metadata !2015), !dbg !4640
  %41 = add nsw i32 %37, -1, !dbg !4641
  tail call void @_Z10quickSort2RSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %0, i32 %10, i32 %41), !dbg !4642
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4584, metadata !2015), !dbg !4588
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !4585, metadata !2015), !dbg !4589
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4586, metadata !2015), !dbg !4590
  %42 = icmp slt i32 %37, %2, !dbg !4591
  br i1 %42, label %9, label %43, !dbg !4593

; <label>:43:                                     ; preds = %40
  br label %44, !dbg !4643

; <label>:44:                                     ; preds = %43, %3
  ret void, !dbg !4643
}

; Function Attrs: nounwind uwtable
define void @_Z13BM_quickSort2RN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) local_unnamed_addr #1 !dbg !4644 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  %7 = alloca %"class.std::vector", align 8
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !4646, metadata !2015), !dbg !4654
  %8 = bitcast %"class.std::vector"* %5 to i8*, !dbg !4655
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #10, !dbg !4655
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3554, metadata !2015), !dbg !4656
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3557, metadata !2015), !dbg !4658
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3562, metadata !3567), !dbg !4659
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3565, metadata !2015), !dbg !4661
  %9 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, !dbg !4662
  %10 = load i32*, i32** %9, align 8, !dbg !4662, !tbaa !3572
  %11 = load i32, i32* %10, align 4, !dbg !4663, !tbaa !3576
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4647, metadata !2015), !dbg !4664
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %11), !dbg !4665
  %12 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*, !dbg !4666
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #10, !dbg !4666
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !4648, metadata !2015), !dbg !4667
  %13 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %13, align 8, !tbaa !3582
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4647, metadata !2015), !dbg !4664
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3584, metadata !2015), !dbg !4668
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !4670
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3592, metadata !2015), !dbg !4672
  %14 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, !dbg !4673
  %15 = load i64*, i64** %14, align 8, !dbg !4673, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4647, metadata !2015), !dbg !4664
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3598, metadata !2015), !dbg !4674
  %16 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1, !dbg !4676
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !4677
  tail call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3592, metadata !2015), !dbg !4679
  %17 = load i64*, i64** %16, align 8, !dbg !4680, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !4648, metadata !2015), !dbg !4667
  %18 = ptrtoint i64* %15 to i64
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !3608, metadata !2015) #10, !dbg !4681
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4683
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !4684
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3625, metadata !2015) #10, !dbg !4685
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3631, metadata !2015) #10, !dbg !4687
  %19 = icmp eq i64* %15, %17, !dbg !4688
  %20 = ptrtoint i64* %17 to i64, !dbg !4689
  br i1 %19, label %42, label %21, !dbg !4689

; <label>:21:                                     ; preds = %1
  %22 = bitcast <2 x i64>* %2 to i8*, !dbg !4690
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #10, !dbg !4690
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !4691
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3640, metadata !2015) #10, !dbg !4692
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3643, metadata !2015) #10, !dbg !4694
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3644, metadata !2015) #10, !dbg !4695
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3649, metadata !2015) #10, !dbg !4696
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !4698
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3653, metadata !2015) #10, !dbg !4699
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !dbg !4700, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4683
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !4701
  %23 = getelementptr inbounds i64, i64* %15, i64 1
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !4684
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4703
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !4704
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !4706
  %24 = icmp eq i64* %23, %17, !dbg !4707
  br i1 %24, label %30, label %25, !dbg !4708

; <label>:25:                                     ; preds = %21
  %26 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %28 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %31, !dbg !4708

; <label>:29:                                     ; preds = %31
  br label %30, !dbg !4709

; <label>:30:                                     ; preds = %29, %21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #10, !dbg !4709
  br label %42, !dbg !4709

; <label>:31:                                     ; preds = %31, %25
  %32 = phi i64* [ %23, %25 ], [ %40, %31 ]
  %33 = ptrtoint i64* %32 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #10, !dbg !4710
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4683
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4703
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015) #10, !dbg !4711
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015) #10, !dbg !4713
  %34 = sub i64 %33, %18, !dbg !4714
  %35 = ashr exact i64 %34, 3, !dbg !4714
  call void @llvm.dbg.value(metadata %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, metadata !3649, metadata !2015) #10, !dbg !4715
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !4717
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3653, metadata !2015) #10, !dbg !4718
  store i64 0, i64* %27, align 8, !dbg !4719, !tbaa !3860
  store i64 %35, i64* %28, align 8, !dbg !4720, !tbaa !3863
  call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !4691
  %36 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10, !dbg !4721
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4683
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !4722
  %37 = getelementptr inbounds i64, i64* %15, i64 %36, !dbg !4724
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3868, metadata !2015) #10, !dbg !4725
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3876, metadata !2015) #10, !dbg !4727
  call void @llvm.dbg.value(metadata i64* %32, i64 0, metadata !3880, metadata !2015) #10, !dbg !4728
  call void @llvm.dbg.value(metadata i64* %37, i64 0, metadata !3886, metadata !2015) #10, !dbg !4730
  %38 = load i64, i64* %32, align 8, !dbg !4731, !tbaa !2276
  call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3887, metadata !2015) #10, !dbg !4732
  %39 = load i64, i64* %37, align 8, !dbg !4733, !tbaa !2276
  store i64 %39, i64* %32, align 8, !dbg !4734, !tbaa !2276
  store i64 %38, i64* %37, align 8, !dbg !4735, !tbaa !2276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #10, !dbg !4736
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4703
  %40 = getelementptr inbounds i64, i64* %32, i64 1
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !4684
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4703
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !4704
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !4706
  %41 = icmp eq i64* %40, %17, !dbg !4707
  br i1 %41, label %29, label %31, !dbg !4708, !llvm.loop !3897

; <label>:42:                                     ; preds = %1, %30
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4647, metadata !2015), !dbg !4664
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015), !dbg !4737
  %43 = sub i64 %20, %18, !dbg !4739
  %44 = lshr exact i64 %43, 3, !dbg !4739
  %45 = add nuw nsw i64 %44, 4294967295, !dbg !4740
  %46 = trunc i64 %45 to i32, !dbg !4741
  call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !4649, metadata !2015), !dbg !4742
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
  br i1 %52, label %58, label %75, !dbg !4743

; <label>:58:                                     ; preds = %42
  %59 = bitcast %"class.std::vector"* %7 to i8*
  br label %60, !dbg !4744

; <label>:60:                                     ; preds = %58, %74
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !4746
  %61 = load i8, i8* %47, align 8, !dbg !4744, !tbaa !3688, !range !3698
  %62 = icmp eq i8 %61, 1, !dbg !4744
  br i1 %62, label %64, label %63, !dbg !4747, !prof !3700

; <label>:63:                                     ; preds = %60
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4748
  br label %64, !dbg !4749

; <label>:64:                                     ; preds = %63, %60
  %65 = load i64, i64* %48, align 8, !dbg !4750, !tbaa !3705
  %66 = add i64 %65, 1, !dbg !4750
  store i64 %66, i64* %48, align 8, !dbg !4750, !tbaa !3705
  %67 = load i64, i64* %49, align 8, !dbg !4751, !tbaa !3707
  %68 = icmp ult i64 %65, %67, !dbg !4752
  br i1 %68, label %69, label %107, !dbg !4753, !prof !3700

; <label>:69:                                     ; preds = %64
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10, !dbg !4754
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4647, metadata !2015), !dbg !4664
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4650, metadata !2015), !dbg !4755
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3711, metadata !2015) #10, !dbg !4756
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !4758
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !4759
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3718, metadata !2015) #10, !dbg !4761
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3721, metadata !2015) #10, !dbg !4763
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !4764
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4422, metadata !2015) #10, !dbg !4765
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !4425, metadata !2015) #10, !dbg !4767
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3727, metadata !2015) #10, !dbg !4768
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3730, metadata !2015) #10, !dbg !4770
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !2067, metadata !2015) #10, !dbg !4771
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2064, metadata !2015) #10, !dbg !4773
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3745, metadata !2015) #10, !dbg !4774
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3738, metadata !2058) #10, !dbg !4776
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !4774
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !4776
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3746, metadata !2015) #10, !dbg !4777
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3759, metadata !2015) #10, !dbg !4778
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3753, metadata !2058) #10, !dbg !4780
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !4778
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !4780
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3760, metadata !2015) #10, !dbg !4781
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3769, metadata !2015) #10, !dbg !4782
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3765, metadata !2058) #10, !dbg !4784
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !4782
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !4784
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3770, metadata !2015) #10, !dbg !4785
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3780, metadata !2015) #10, !dbg !4786
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3775, metadata !2058) #10, !dbg !4788
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !4786
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !4788
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3781, metadata !2015) #10, !dbg !4789
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3792, metadata !2015) #10, !dbg !4790
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3786, metadata !2058) #10, !dbg !4792
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !4790
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !4792
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3793, metadata !2015) #10, !dbg !4793
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3803, metadata !2015) #10, !dbg !4794
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3798, metadata !2058) #10, !dbg !4796
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3804, metadata !2015) #10, !dbg !4797
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !4798
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3817, metadata !2015) #10, !dbg !4799
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3810, metadata !2058) #10, !dbg !4801
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3818, metadata !2015) #10, !dbg !4802
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3819, metadata !2015) #10, !dbg !4803
  call void @llvm.memset.p0i8.i64(i8* nonnull %59, i8 0, i64 24, i32 8, i1 false), !dbg !4804
  store i64* null, i64** %54, align 8, !dbg !4805, !tbaa !2205
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4650, metadata !2015), !dbg !4755
  call void @_Z10quickSort2RSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %7, i32 0, i32 %46), !dbg !4806
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4650, metadata !2015), !dbg !4755
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3824, metadata !2015) #10, !dbg !4807
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3829, metadata !2015) #10, !dbg !4809
  %70 = load i64*, i64** %53, align 8, !dbg !4811, !tbaa !2198
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !2193, metadata !2015) #10, !dbg !4812
  call void @llvm.dbg.value(metadata i64* %70, i64 0, metadata !2190, metadata !2015) #10, !dbg !4814
  %71 = icmp eq i64* %70, null, !dbg !4815
  br i1 %71, label %74, label %72, !dbg !4816

; <label>:72:                                     ; preds = %69
  call void @llvm.dbg.value(metadata i64* %70, i64 0, metadata !2410, metadata !2015) #10, !dbg !4817
  %73 = bitcast i64* %70 to i8*, !dbg !4819
  call void @_ZdlPv(i8* %73) #10, !dbg !4820
  br label %74, !dbg !4821

; <label>:74:                                     ; preds = %72, %69
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #10, !dbg !4822
  br label %60, !dbg !4743, !llvm.loop !4823

; <label>:75:                                     ; preds = %42
  %76 = icmp ugt i64 %51, 2305843009213693951
  br i1 %76, label %79, label %77, !dbg !4743

; <label>:77:                                     ; preds = %75
  %78 = bitcast %"class.std::vector"* %7 to i8**
  br label %89, !dbg !4744

; <label>:79:                                     ; preds = %75
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !4746
  %80 = load i8, i8* %47, align 8, !dbg !4744, !tbaa !3688, !range !3698
  %81 = icmp eq i8 %80, 1, !dbg !4744
  br i1 %81, label %83, label %82, !dbg !4747, !prof !3700

; <label>:82:                                     ; preds = %79
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4748
  br label %83, !dbg !4749

; <label>:83:                                     ; preds = %82, %79
  %84 = load i64, i64* %48, align 8, !dbg !4750, !tbaa !3705
  %85 = add i64 %84, 1, !dbg !4750
  store i64 %85, i64* %48, align 8, !dbg !4750, !tbaa !3705
  %86 = load i64, i64* %49, align 8, !dbg !4751, !tbaa !3707
  %87 = icmp ult i64 %84, %86, !dbg !4752
  br i1 %87, label %88, label %109, !dbg !4753, !prof !3700

; <label>:88:                                     ; preds = %83
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10, !dbg !4754
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4647, metadata !2015), !dbg !4664
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4650, metadata !2015), !dbg !4755
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3711, metadata !2015) #10, !dbg !4756
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !4758
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !4759
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3718, metadata !2015) #10, !dbg !4761
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3721, metadata !2015) #10, !dbg !4763
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !4764
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4422, metadata !2015) #10, !dbg !4765
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !4425, metadata !2015) #10, !dbg !4767
  call void @llvm.memset.p0i8.i64(i8* nonnull %50, i8 0, i64 24, i32 8, i1 false) #10, !dbg !4824
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3727, metadata !2015) #10, !dbg !4768
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3730, metadata !2015) #10, !dbg !4770
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !2067, metadata !2015) #10, !dbg !4771
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2064, metadata !2015) #10, !dbg !4773
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2071, metadata !2015) #10, !dbg !4825
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !4827
  call void @_ZSt17__throw_bad_allocv() #9, !dbg !4828
  unreachable, !dbg !4828

; <label>:89:                                     ; preds = %77, %106
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !4746
  %90 = load i8, i8* %47, align 8, !dbg !4744, !tbaa !3688, !range !3698
  %91 = icmp eq i8 %90, 1, !dbg !4744
  br i1 %91, label %93, label %92, !dbg !4747, !prof !3700

; <label>:92:                                     ; preds = %89
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4748
  br label %93, !dbg !4749

; <label>:93:                                     ; preds = %92, %89
  %94 = load i64, i64* %48, align 8, !dbg !4750, !tbaa !3705
  %95 = add i64 %94, 1, !dbg !4750
  store i64 %95, i64* %48, align 8, !dbg !4750, !tbaa !3705
  %96 = load i64, i64* %49, align 8, !dbg !4751, !tbaa !3707
  %97 = icmp ult i64 %94, %96, !dbg !4752
  br i1 %97, label %98, label %108, !dbg !4753, !prof !3700

; <label>:98:                                     ; preds = %93
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #10, !dbg !4754
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4647, metadata !2015), !dbg !4664
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4650, metadata !2015), !dbg !4755
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3711, metadata !2015) #10, !dbg !4756
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !4758
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !4759
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3718, metadata !2015) #10, !dbg !4761
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3721, metadata !2015) #10, !dbg !4763
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !4764
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4422, metadata !2015) #10, !dbg !4765
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !4425, metadata !2015) #10, !dbg !4767
  call void @llvm.memset.p0i8.i64(i8* nonnull %50, i8 0, i64 24, i32 8, i1 false) #10, !dbg !4824
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3727, metadata !2015) #10, !dbg !4768
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3730, metadata !2015) #10, !dbg !4770
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !2067, metadata !2015) #10, !dbg !4771
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2064, metadata !2015) #10, !dbg !4773
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2071, metadata !2015) #10, !dbg !4825
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !4827
  %99 = call i8* @_Znwm(i64 %43) #10, !dbg !4829
  %100 = bitcast i8* %99 to i64*, !dbg !4830
  store i8* %99, i8** %78, align 8, !dbg !4804, !tbaa !2198
  store i8* %99, i8** %55, align 8, !dbg !4831, !tbaa !2205
  %101 = getelementptr inbounds i64, i64* %100, i64 %51, !dbg !4832
  store i64* %101, i64** %56, align 8, !dbg !4833, !tbaa !2208
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3745, metadata !2015) #10, !dbg !4774
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3738, metadata !2058) #10, !dbg !4776
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !4774
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !4776
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3746, metadata !2015) #10, !dbg !4777
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3759, metadata !2015) #10, !dbg !4778
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3753, metadata !2058) #10, !dbg !4780
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !4778
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !4780
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3760, metadata !2015) #10, !dbg !4781
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3769, metadata !2015) #10, !dbg !4782
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3765, metadata !2058) #10, !dbg !4784
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !4782
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !4784
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3770, metadata !2015) #10, !dbg !4785
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3780, metadata !2015) #10, !dbg !4786
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3775, metadata !2058) #10, !dbg !4788
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !4786
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !4788
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3781, metadata !2015) #10, !dbg !4789
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3792, metadata !2015) #10, !dbg !4790
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3786, metadata !2058) #10, !dbg !4792
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !4790
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !4792
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3793, metadata !2015) #10, !dbg !4793
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3803, metadata !2015) #10, !dbg !4794
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3798, metadata !2058) #10, !dbg !4796
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3804, metadata !2015) #10, !dbg !4797
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !4798
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !3817, metadata !2015) #10, !dbg !4799
  call void @llvm.dbg.value(metadata i64** %16, i64 0, metadata !3810, metadata !2058) #10, !dbg !4801
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3818, metadata !2015) #10, !dbg !4802
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3819, metadata !2015) #10, !dbg !4803
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %99, i8* %57, i64 %43, i32 8, i1 false) #10, !dbg !4834
  store i64* %101, i64** %54, align 8, !dbg !4805, !tbaa !2205
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4650, metadata !2015), !dbg !4755
  call void @_Z10quickSort2RSt6vectorIlSaIlEEii(%"class.std::vector"* nonnull dereferenceable(24) %7, i32 0, i32 %46), !dbg !4806
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !4650, metadata !2015), !dbg !4755
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3824, metadata !2015) #10, !dbg !4807
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !3829, metadata !2015) #10, !dbg !4809
  %102 = load i64*, i64** %53, align 8, !dbg !4811, !tbaa !2198
  call void @llvm.dbg.value(metadata %"class.std::vector"* %7, i64 0, metadata !2193, metadata !2015) #10, !dbg !4812
  call void @llvm.dbg.value(metadata i64* %102, i64 0, metadata !2190, metadata !2015) #10, !dbg !4814
  %103 = icmp eq i64* %102, null, !dbg !4815
  br i1 %103, label %106, label %104, !dbg !4816

; <label>:104:                                    ; preds = %98
  call void @llvm.dbg.value(metadata i64* %102, i64 0, metadata !2410, metadata !2015) #10, !dbg !4817
  %105 = bitcast i64* %102 to i8*, !dbg !4819
  call void @_ZdlPv(i8* %105) #10, !dbg !4820
  br label %106, !dbg !4821

; <label>:106:                                    ; preds = %98, %104
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #10, !dbg !4822
  br label %89, !dbg !4743, !llvm.loop !4823

; <label>:107:                                    ; preds = %64
  br label %109, !dbg !4835

; <label>:108:                                    ; preds = %93
  br label %109, !dbg !4835

; <label>:109:                                    ; preds = %108, %107, %83
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !4835
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #10, !dbg !4836
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4647, metadata !2015), !dbg !4664
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3824, metadata !2015) #10, !dbg !4837
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3829, metadata !2015) #10, !dbg !4839
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2193, metadata !2015) #10, !dbg !4841
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2190, metadata !2015) #10, !dbg !4843
  %110 = icmp eq i64* %15, null, !dbg !4844
  br i1 %110, label %112, label %111, !dbg !4845

; <label>:111:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !2410, metadata !2015) #10, !dbg !4846
  call void @_ZdlPv(i8* %57) #10, !dbg !4848
  br label %112, !dbg !4849

; <label>:112:                                    ; preds = %109, %111
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #10, !dbg !4836
  ret void, !dbg !4836
}

; Function Attrs: nounwind uwtable
define void @_Z6insertRSt6vectorIlSaIlEE(%"class.std::vector"* nocapture readonly dereferenceable(24)) local_unnamed_addr #1 !dbg !4850 {
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4854, metadata !2015), !dbg !4862
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2039, metadata !2015), !dbg !4863
  %2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1, !dbg !4865
  %3 = bitcast i64** %2 to i64*, !dbg !4865
  %4 = load i64, i64* %3, align 8, !dbg !4865, !tbaa !2205
  %5 = bitcast %"class.std::vector"* %0 to i64*, !dbg !4866
  %6 = load i64, i64* %5, align 8, !dbg !4866, !tbaa !2198
  %7 = sub i64 %4, %6, !dbg !4867
  %8 = lshr exact i64 %7, 3, !dbg !4867
  %9 = add nuw nsw i64 %8, 4294967295, !dbg !4868
  %10 = trunc i64 %9 to i32, !dbg !4869
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4855, metadata !2015), !dbg !4870
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4856, metadata !2015), !dbg !4871
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4856, metadata !2015), !dbg !4871
  %11 = icmp sgt i32 %10, 1, !dbg !4872
  %12 = inttoptr i64 %6 to i64*, !dbg !4873
  br i1 %11, label %13, label %44, !dbg !4873

; <label>:13:                                     ; preds = %1
  %14 = and i64 %9, 4294967295
  %15 = add nsw i64 %14, -1, !dbg !4874
  %16 = and i64 %15, 1, !dbg !4874
  %17 = icmp eq i64 %14, 2, !dbg !4874
  br i1 %17, label %21, label %18, !dbg !4874

; <label>:18:                                     ; preds = %13
  %19 = sub nsw i64 %15, %16, !dbg !4874
  br label %45, !dbg !4874

; <label>:20:                                     ; preds = %78
  br label %21, !dbg !4876

; <label>:21:                                     ; preds = %20, %13
  %22 = phi i64 [ 1, %13 ], [ %81, %20 ]
  %23 = icmp eq i64 %16, 0, !dbg !4876
  br i1 %23, label %43, label %24, !dbg !4876

; <label>:24:                                     ; preds = %21
  br label %25, !dbg !4876

; <label>:25:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4856, metadata !2015), !dbg !4871
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !4157, metadata !2015), !dbg !4878
  %26 = getelementptr inbounds i64, i64* %12, i64 %22, !dbg !4874
  %27 = load i64, i64* %26, align 8, !dbg !4879, !tbaa !2276
  %28 = shl i64 %27, 32, !dbg !4880
  %29 = ashr exact i64 %28, 32, !dbg !4880
  br label %30

; <label>:30:                                     ; preds = %36, %25
  %31 = phi i64 [ %22, %25 ], [ %32, %36 ]
  %32 = add nsw i64 %31, -1
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4881
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !4157, metadata !2015), !dbg !4883
  %33 = getelementptr inbounds i64, i64* %12, i64 %32, !dbg !4884
  %34 = load i64, i64* %33, align 8, !dbg !4885, !tbaa !2276
  %35 = icmp sgt i64 %34, %29, !dbg !4886
  br i1 %35, label %36, label %39, !dbg !4887

; <label>:36:                                     ; preds = %30
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !4157, metadata !2015), !dbg !4891
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !4157, metadata !2015), !dbg !4894
  %37 = getelementptr inbounds i64, i64* %12, i64 %31, !dbg !4895
  store i64 %34, i64* %37, align 8, !dbg !4896, !tbaa !2276
  %38 = icmp sgt i64 %31, 1, !dbg !4897
  br i1 %38, label %30, label %39, !dbg !4898, !llvm.loop !4899

; <label>:39:                                     ; preds = %36, %30
  %40 = phi i64 [ %31, %30 ], [ %32, %36 ]
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4901
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !4157, metadata !2015), !dbg !4903
  %41 = getelementptr inbounds i64, i64* %12, i64 %40, !dbg !4904
  store i64 %29, i64* %41, align 8, !dbg !4905, !tbaa !2276
  br label %42, !dbg !4873

; <label>:42:                                     ; preds = %39
  br label %43, !dbg !4876

; <label>:43:                                     ; preds = %21, %42
  br label %44, !dbg !4876

; <label>:44:                                     ; preds = %43, %1
  ret void, !dbg !4876

; <label>:45:                                     ; preds = %78, %18
  %46 = phi i64 [ 1, %18 ], [ %81, %78 ]
  %47 = phi i64 [ %19, %18 ], [ %82, %78 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4856, metadata !2015), !dbg !4871
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !4157, metadata !2015), !dbg !4878
  %48 = getelementptr inbounds i64, i64* %12, i64 %46, !dbg !4874
  %49 = load i64, i64* %48, align 8, !dbg !4879, !tbaa !2276
  %50 = shl i64 %49, 32, !dbg !4880
  %51 = ashr exact i64 %50, 32, !dbg !4880
  br label %52

; <label>:52:                                     ; preds = %45, %58
  %53 = phi i64 [ %46, %45 ], [ %54, %58 ]
  %54 = add nsw i64 %53, -1
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4881
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4157, metadata !2015), !dbg !4883
  %55 = getelementptr inbounds i64, i64* %12, i64 %54, !dbg !4884
  %56 = load i64, i64* %55, align 8, !dbg !4885, !tbaa !2276
  %57 = icmp sgt i64 %56, %51, !dbg !4886
  br i1 %57, label %58, label %61, !dbg !4887

; <label>:58:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4157, metadata !2015), !dbg !4891
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !4157, metadata !2015), !dbg !4894
  %59 = getelementptr inbounds i64, i64* %12, i64 %53, !dbg !4895
  store i64 %56, i64* %59, align 8, !dbg !4896, !tbaa !2276
  %60 = icmp sgt i64 %53, 1, !dbg !4897
  br i1 %60, label %52, label %61, !dbg !4898, !llvm.loop !4899

; <label>:61:                                     ; preds = %52, %58
  %62 = phi i64 [ %53, %52 ], [ %54, %58 ]
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4901
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !4157, metadata !2015), !dbg !4903
  %63 = getelementptr inbounds i64, i64* %12, i64 %62, !dbg !4904
  store i64 %51, i64* %63, align 8, !dbg !4905, !tbaa !2276
  %64 = add nuw nsw i64 %46, 1, !dbg !4906
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4856, metadata !2015), !dbg !4871
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !4157, metadata !2015), !dbg !4878
  %65 = getelementptr inbounds i64, i64* %12, i64 %64, !dbg !4874
  %66 = load i64, i64* %65, align 8, !dbg !4879, !tbaa !2276
  %67 = shl i64 %66, 32, !dbg !4880
  %68 = ashr exact i64 %67, 32, !dbg !4880
  br label %69

; <label>:69:                                     ; preds = %75, %61
  %70 = phi i64 [ %64, %61 ], [ %71, %75 ]
  %71 = add nsw i64 %70, -1
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4881
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4157, metadata !2015), !dbg !4883
  %72 = getelementptr inbounds i64, i64* %12, i64 %71, !dbg !4884
  %73 = load i64, i64* %72, align 8, !dbg !4885, !tbaa !2276
  %74 = icmp sgt i64 %73, %68, !dbg !4886
  br i1 %74, label %75, label %78, !dbg !4887

; <label>:75:                                     ; preds = %69
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4157, metadata !2015), !dbg !4891
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !4157, metadata !2015), !dbg !4894
  %76 = getelementptr inbounds i64, i64* %12, i64 %70, !dbg !4895
  store i64 %73, i64* %76, align 8, !dbg !4896, !tbaa !2276
  %77 = icmp sgt i64 %70, 1, !dbg !4897
  br i1 %77, label %69, label %78, !dbg !4898, !llvm.loop !4899

; <label>:78:                                     ; preds = %75, %69
  %79 = phi i64 [ %70, %69 ], [ %71, %75 ]
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !4901
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !4157, metadata !2015), !dbg !4903
  %80 = getelementptr inbounds i64, i64* %12, i64 %79, !dbg !4904
  store i64 %68, i64* %80, align 8, !dbg !4905, !tbaa !2276
  %81 = add nsw i64 %46, 2, !dbg !4906
  %82 = add i64 %47, -2, !dbg !4873
  %83 = icmp eq i64 %82, 0, !dbg !4873
  br i1 %83, label %20, label %45, !dbg !4873, !llvm.loop !4907
}

; Function Attrs: nounwind uwtable
define void @_Z9BM_insertRN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) local_unnamed_addr #1 !dbg !4909 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !4911, metadata !2015), !dbg !4919
  %7 = bitcast %"class.std::vector"* %5 to i8*, !dbg !4920
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10, !dbg !4920
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3554, metadata !2015), !dbg !4921
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3557, metadata !2015), !dbg !4923
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3562, metadata !3567), !dbg !4924
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3565, metadata !2015), !dbg !4926
  %8 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, !dbg !4927
  %9 = load i32*, i32** %8, align 8, !dbg !4927, !tbaa !3572
  %10 = load i32, i32* %9, align 4, !dbg !4928, !tbaa !3576
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4912, metadata !2015), !dbg !4929
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %10), !dbg !4930
  %11 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*, !dbg !4931
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #10, !dbg !4931
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !4913, metadata !2015), !dbg !4932
  %12 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %12, align 8, !tbaa !3582
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4912, metadata !2015), !dbg !4929
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3584, metadata !2015), !dbg !4933
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !4935
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3592, metadata !2015), !dbg !4937
  %13 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, !dbg !4938
  %14 = load i64*, i64** %13, align 8, !dbg !4938, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4912, metadata !2015), !dbg !4929
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3598, metadata !2015), !dbg !4939
  %15 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1, !dbg !4941
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !4942
  tail call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3592, metadata !2015), !dbg !4944
  %16 = load i64*, i64** %15, align 8, !dbg !4945, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !4913, metadata !2015), !dbg !4932
  %17 = ptrtoint i64* %14 to i64
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !3608, metadata !2015) #10, !dbg !4946
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4948
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !4949
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3625, metadata !2015) #10, !dbg !4950
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3631, metadata !2015) #10, !dbg !4952
  %18 = icmp eq i64* %14, %16, !dbg !4953
  %19 = ptrtoint i64* %16 to i64, !dbg !4954
  br i1 %18, label %41, label %20, !dbg !4954

; <label>:20:                                     ; preds = %1
  %21 = bitcast <2 x i64>* %2 to i8*, !dbg !4955
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #10, !dbg !4955
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !4956
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3640, metadata !2015) #10, !dbg !4957
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3643, metadata !2015) #10, !dbg !4959
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3644, metadata !2015) #10, !dbg !4960
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3649, metadata !2015) #10, !dbg !4961
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !4963
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3653, metadata !2015) #10, !dbg !4964
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !dbg !4965, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4948
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !4966
  %22 = getelementptr inbounds i64, i64* %14, i64 1
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !4949
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4968
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !4969
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !4971
  %23 = icmp eq i64* %22, %16, !dbg !4972
  br i1 %23, label %29, label %24, !dbg !4973

; <label>:24:                                     ; preds = %20
  %25 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %26 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %30, !dbg !4973

; <label>:28:                                     ; preds = %30
  br label %29, !dbg !4974

; <label>:29:                                     ; preds = %28, %20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #10, !dbg !4974
  br label %41, !dbg !4974

; <label>:30:                                     ; preds = %30, %24
  %31 = phi i64* [ %22, %24 ], [ %39, %30 ]
  %32 = ptrtoint i64* %31 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #10, !dbg !4975
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4948
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4968
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015) #10, !dbg !4976
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015) #10, !dbg !4978
  %33 = sub i64 %32, %17, !dbg !4979
  %34 = ashr exact i64 %33, 3, !dbg !4979
  call void @llvm.dbg.value(metadata %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, metadata !3649, metadata !2015) #10, !dbg !4980
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !4982
  call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !3653, metadata !2015) #10, !dbg !4983
  store i64 0, i64* %26, align 8, !dbg !4984, !tbaa !3860
  store i64 %34, i64* %27, align 8, !dbg !4985, !tbaa !3863
  call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !4956
  %35 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10, !dbg !4986
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !4948
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !4987
  %36 = getelementptr inbounds i64, i64* %14, i64 %35, !dbg !4989
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3868, metadata !2015) #10, !dbg !4990
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3876, metadata !2015) #10, !dbg !4992
  call void @llvm.dbg.value(metadata i64* %31, i64 0, metadata !3880, metadata !2015) #10, !dbg !4993
  call void @llvm.dbg.value(metadata i64* %36, i64 0, metadata !3886, metadata !2015) #10, !dbg !4995
  %37 = load i64, i64* %31, align 8, !dbg !4996, !tbaa !2276
  call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !3887, metadata !2015) #10, !dbg !4997
  %38 = load i64, i64* %36, align 8, !dbg !4998, !tbaa !2276
  store i64 %38, i64* %31, align 8, !dbg !4999, !tbaa !2276
  store i64 %37, i64* %36, align 8, !dbg !5000, !tbaa !2276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #10, !dbg !5001
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4968
  %39 = getelementptr inbounds i64, i64* %31, i64 1
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !4949
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !4968
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !4969
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !4971
  %40 = icmp eq i64* %39, %16, !dbg !4972
  br i1 %40, label %28, label %30, !dbg !4973, !llvm.loop !3897

; <label>:41:                                     ; preds = %1, %29
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4912, metadata !2015), !dbg !4929
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015), !dbg !5002
  %42 = sub i64 %19, %17, !dbg !5004
  %43 = lshr exact i64 %42, 3, !dbg !5004
  %44 = add nuw nsw i64 %43, 4294967295, !dbg !5005
  %45 = trunc i64 %44 to i32, !dbg !5006
  call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !4914, metadata !2015), !dbg !5007
  %46 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 0
  %47 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 2
  %48 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 11
  %49 = ashr exact i64 %42, 3
  %50 = icmp eq i64 %49, 0
  %51 = icmp eq i64 %42, 0
  %52 = icmp sgt i32 %45, 1
  %53 = and i64 %44, 4294967295
  %54 = bitcast i64* %14 to i8*
  br i1 %50, label %55, label %71, !dbg !5008

; <label>:55:                                     ; preds = %41
  %56 = shl nuw nsw i64 %53, 3, !dbg !5009
  %57 = add nsw i64 %56, -8, !dbg !5009
  br label %58, !dbg !5009

; <label>:58:                                     ; preds = %69, %55
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !5011
  %59 = load i8, i8* %46, align 8, !dbg !5009, !tbaa !3688, !range !3698
  %60 = icmp eq i8 %59, 1, !dbg !5009
  br i1 %60, label %62, label %61, !dbg !5012, !prof !3700

; <label>:61:                                     ; preds = %58
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !5013
  br label %62, !dbg !5014

; <label>:62:                                     ; preds = %61, %58
  %63 = load i64, i64* %47, align 8, !dbg !5015, !tbaa !3705
  %64 = add i64 %63, 1, !dbg !5015
  store i64 %64, i64* %47, align 8, !dbg !5015, !tbaa !3705
  %65 = load i64, i64* %48, align 8, !dbg !5016, !tbaa !3707
  %66 = icmp ult i64 %63, %65, !dbg !5017
  br i1 %66, label %67, label %153, !dbg !5018, !prof !3700

; <label>:67:                                     ; preds = %62
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4912, metadata !2015), !dbg !4929
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4915, metadata !2015), !dbg !5019
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !5020
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !5022
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !5023
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !5025
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !3721, metadata !2015) #10, !dbg !5027
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !5028
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !5029
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !3730, metadata !2015) #10, !dbg !5031
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !5032
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2064, metadata !2015) #10, !dbg !5034
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3738, metadata !2058) #10, !dbg !5035
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !5037
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !5035
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3746, metadata !2015) #10, !dbg !5038
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3753, metadata !2058) #10, !dbg !5039
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !5041
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !5039
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3760, metadata !2015) #10, !dbg !5042
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3765, metadata !2058) #10, !dbg !5043
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !5045
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !5043
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3770, metadata !2015) #10, !dbg !5046
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3775, metadata !2058) #10, !dbg !5047
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !5049
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !5047
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3781, metadata !2015) #10, !dbg !5050
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3786, metadata !2058) #10, !dbg !5051
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !5053
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !5051
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3793, metadata !2015) #10, !dbg !5054
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3798, metadata !2058) #10, !dbg !5055
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3804, metadata !2015) #10, !dbg !5057
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !5058
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3810, metadata !2058) #10, !dbg !5059
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3818, metadata !2015) #10, !dbg !5061
  br i1 %51, label %69, label %68, !dbg !5062

; <label>:68:                                     ; preds = %67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* null, i8* %54, i64 %42, i32 8, i1 false) #10, !dbg !5063
  br label %69, !dbg !5063

; <label>:69:                                     ; preds = %68, %67
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4915, metadata !2015), !dbg !5019
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4854, metadata !2015), !dbg !5064
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2039, metadata !2015), !dbg !5066
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !4855, metadata !2015), !dbg !5068
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4856, metadata !2015), !dbg !5069
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4856, metadata !2015), !dbg !5069
  br i1 %52, label %70, label %58, !dbg !5070, !llvm.loop !5071

; <label>:70:                                     ; preds = %69
  call void @llvm.memset.p0i8.i64(i8* inttoptr (i64 8 to i8*), i8 0, i64 %57, i32 8, i1 false), !dbg !5073
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4856, metadata !2015), !dbg !5069
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5074
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4157, metadata !2015), !dbg !5076
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5077
  call void @llvm.trap()
  unreachable

; <label>:71:                                     ; preds = %41
  %72 = icmp ugt i64 %49, 2305843009213693951
  br i1 %72, label %79, label %73, !dbg !5008

; <label>:73:                                     ; preds = %71
  %74 = add nsw i64 %53, -1, !dbg !5009
  %75 = and i64 %74, 1
  %76 = icmp eq i64 %53, 2
  %77 = sub nsw i64 %74, %75
  %78 = icmp eq i64 %75, 0
  br label %88, !dbg !5009

; <label>:79:                                     ; preds = %71
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !5011
  %80 = load i8, i8* %46, align 8, !dbg !5009, !tbaa !3688, !range !3698
  %81 = icmp eq i8 %80, 1, !dbg !5009
  br i1 %81, label %83, label %82, !dbg !5012, !prof !3700

; <label>:82:                                     ; preds = %79
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !5013
  br label %83, !dbg !5014

; <label>:83:                                     ; preds = %82, %79
  %84 = load i64, i64* %47, align 8, !dbg !5015, !tbaa !3705
  %85 = add i64 %84, 1, !dbg !5015
  store i64 %85, i64* %47, align 8, !dbg !5015, !tbaa !3705
  %86 = load i64, i64* %48, align 8, !dbg !5016, !tbaa !3707
  %87 = icmp ult i64 %84, %86, !dbg !5017
  br i1 %87, label %97, label %155, !dbg !5018, !prof !3700

; <label>:88:                                     ; preds = %73, %152
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !5011
  %89 = load i8, i8* %46, align 8, !dbg !5009, !tbaa !3688, !range !3698
  %90 = icmp eq i8 %89, 1, !dbg !5009
  br i1 %90, label %92, label %91, !dbg !5012, !prof !3700

; <label>:91:                                     ; preds = %88
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !5013
  br label %92, !dbg !5014

; <label>:92:                                     ; preds = %91, %88
  %93 = load i64, i64* %47, align 8, !dbg !5015, !tbaa !3705
  %94 = add i64 %93, 1, !dbg !5015
  store i64 %94, i64* %47, align 8, !dbg !5015, !tbaa !3705
  %95 = load i64, i64* %48, align 8, !dbg !5016, !tbaa !3707
  %96 = icmp ult i64 %93, %95, !dbg !5017
  br i1 %96, label %98, label %154, !dbg !5018, !prof !3700

; <label>:97:                                     ; preds = %83
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4912, metadata !2015), !dbg !4929
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4915, metadata !2015), !dbg !5019
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !5020
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !5022
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !5023
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !5025
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !3721, metadata !2015) #10, !dbg !5027
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !5028
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !5029
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !3730, metadata !2015) #10, !dbg !5031
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !5032
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2064, metadata !2015) #10, !dbg !5034
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2071, metadata !2015) #10, !dbg !5079
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !5081
  call void @_ZSt17__throw_bad_allocv() #9, !dbg !5082
  unreachable, !dbg !5082

; <label>:98:                                     ; preds = %92
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4912, metadata !2015), !dbg !4929
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4915, metadata !2015), !dbg !5019
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !5020
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !5022
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !5023
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !5025
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !3721, metadata !2015) #10, !dbg !5027
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !5028
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !5029
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !3730, metadata !2015) #10, !dbg !5031
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !5032
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2064, metadata !2015) #10, !dbg !5034
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2071, metadata !2015) #10, !dbg !5079
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !5081
  %99 = call i8* @_Znwm(i64 %42) #10, !dbg !5083
  %100 = bitcast i8* %99 to i64*, !dbg !5084
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3738, metadata !2058) #10, !dbg !5035
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !5037
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !5035
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3746, metadata !2015) #10, !dbg !5038
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3753, metadata !2058) #10, !dbg !5039
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !5041
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !5039
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3760, metadata !2015) #10, !dbg !5042
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3765, metadata !2058) #10, !dbg !5043
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !5045
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !5043
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3770, metadata !2015) #10, !dbg !5046
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3775, metadata !2058) #10, !dbg !5047
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !5049
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !5047
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3781, metadata !2015) #10, !dbg !5050
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3786, metadata !2058) #10, !dbg !5051
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !5053
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !5051
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3793, metadata !2015) #10, !dbg !5054
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3798, metadata !2058) #10, !dbg !5055
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3804, metadata !2015) #10, !dbg !5057
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !5058
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3810, metadata !2058) #10, !dbg !5059
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !3818, metadata !2015) #10, !dbg !5061
  br i1 %51, label %102, label %101, !dbg !5062

; <label>:101:                                    ; preds = %98
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %99, i8* %54, i64 %42, i32 8, i1 false) #10, !dbg !5063
  br label %102, !dbg !5063

; <label>:102:                                    ; preds = %98, %101
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4915, metadata !2015), !dbg !5019
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4854, metadata !2015), !dbg !5064
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2039, metadata !2015), !dbg !5066
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !4855, metadata !2015), !dbg !5068
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4856, metadata !2015), !dbg !5069
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4856, metadata !2015), !dbg !5069
  br i1 %52, label %103, label %152, !dbg !5070

; <label>:103:                                    ; preds = %102
  br i1 %76, label %130, label %104, !dbg !5085

; <label>:104:                                    ; preds = %103
  br label %105, !dbg !5085

; <label>:105:                                    ; preds = %169, %104
  %106 = phi i64 [ 1, %104 ], [ %172, %169 ]
  %107 = phi i64 [ %77, %104 ], [ %173, %169 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4856, metadata !2015), !dbg !5069
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5074
  tail call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !4157, metadata !2015), !dbg !5076
  %108 = getelementptr inbounds i64, i64* %100, i64 %106, !dbg !5085
  %109 = load i64, i64* %108, align 8, !dbg !5086, !tbaa !2276
  %110 = shl i64 %109, 32, !dbg !5087
  %111 = ashr exact i64 %110, 32, !dbg !5087
  br label %112

; <label>:112:                                    ; preds = %118, %105
  %113 = phi i64 [ %106, %105 ], [ %114, %118 ]
  %114 = add nsw i64 %113, -1
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5077
  tail call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !4157, metadata !2015), !dbg !5088
  %115 = getelementptr inbounds i64, i64* %100, i64 %114, !dbg !5089
  %116 = load i64, i64* %115, align 8, !dbg !5090, !tbaa !2276
  %117 = icmp sgt i64 %116, %111, !dbg !5091
  br i1 %117, label %118, label %121, !dbg !5092

; <label>:118:                                    ; preds = %112
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5093
  tail call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !4157, metadata !2015), !dbg !5095
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5096
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !4157, metadata !2015), !dbg !5098
  %119 = getelementptr inbounds i64, i64* %100, i64 %113, !dbg !5099
  store i64 %116, i64* %119, align 8, !dbg !5100, !tbaa !2276
  %120 = icmp sgt i64 %113, 1, !dbg !5101
  br i1 %120, label %112, label %121, !dbg !5102, !llvm.loop !4899

; <label>:121:                                    ; preds = %118, %112
  %122 = phi i64 [ %113, %112 ], [ %114, %118 ]
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5103
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !4157, metadata !2015), !dbg !5105
  %123 = getelementptr inbounds i64, i64* %100, i64 %122, !dbg !5106
  store i64 %111, i64* %123, align 8, !dbg !5073, !tbaa !2276
  %124 = add nuw nsw i64 %106, 1, !dbg !5107
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4856, metadata !2015), !dbg !5069
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5074
  tail call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !4157, metadata !2015), !dbg !5076
  %125 = getelementptr inbounds i64, i64* %100, i64 %124, !dbg !5085
  %126 = load i64, i64* %125, align 8, !dbg !5086, !tbaa !2276
  %127 = shl i64 %126, 32, !dbg !5087
  %128 = ashr exact i64 %127, 32, !dbg !5087
  br label %160

; <label>:129:                                    ; preds = %169
  br label %130, !dbg !5108

; <label>:130:                                    ; preds = %129, %103
  %131 = phi i64 [ 1, %103 ], [ %172, %129 ]
  br i1 %78, label %151, label %132, !dbg !5108

; <label>:132:                                    ; preds = %130
  br label %133, !dbg !5108

; <label>:133:                                    ; preds = %132
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4856, metadata !2015), !dbg !5069
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5074
  tail call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !4157, metadata !2015), !dbg !5076
  %134 = getelementptr inbounds i64, i64* %100, i64 %131, !dbg !5085
  %135 = load i64, i64* %134, align 8, !dbg !5086, !tbaa !2276
  %136 = shl i64 %135, 32, !dbg !5087
  %137 = ashr exact i64 %136, 32, !dbg !5087
  br label %138

; <label>:138:                                    ; preds = %144, %133
  %139 = phi i64 [ %131, %133 ], [ %140, %144 ]
  %140 = add nsw i64 %139, -1
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5077
  tail call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !4157, metadata !2015), !dbg !5088
  %141 = getelementptr inbounds i64, i64* %100, i64 %140, !dbg !5089
  %142 = load i64, i64* %141, align 8, !dbg !5090, !tbaa !2276
  %143 = icmp sgt i64 %142, %137, !dbg !5091
  br i1 %143, label %144, label %147, !dbg !5092

; <label>:144:                                    ; preds = %138
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5093
  tail call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !4157, metadata !2015), !dbg !5095
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5096
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !4157, metadata !2015), !dbg !5098
  %145 = getelementptr inbounds i64, i64* %100, i64 %139, !dbg !5099
  store i64 %142, i64* %145, align 8, !dbg !5100, !tbaa !2276
  %146 = icmp sgt i64 %139, 1, !dbg !5101
  br i1 %146, label %138, label %147, !dbg !5102, !llvm.loop !4899

; <label>:147:                                    ; preds = %144, %138
  %148 = phi i64 [ %139, %138 ], [ %140, %144 ]
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5103
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !4157, metadata !2015), !dbg !5105
  %149 = getelementptr inbounds i64, i64* %100, i64 %148, !dbg !5106
  store i64 %137, i64* %149, align 8, !dbg !5073, !tbaa !2276
  br label %150, !dbg !5070

; <label>:150:                                    ; preds = %147
  br label %151, !dbg !5108

; <label>:151:                                    ; preds = %130, %150
  br label %152, !dbg !5108

; <label>:152:                                    ; preds = %151, %102
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4915, metadata !2015), !dbg !5019
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3824, metadata !2015) #10, !dbg !5113
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3829, metadata !2015) #10, !dbg !5114
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2193, metadata !2015) #10, !dbg !5115
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !2190, metadata !2015) #10, !dbg !5116
  call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !2410, metadata !2015) #10, !dbg !5117
  call void @_ZdlPv(i8* nonnull %99) #10, !dbg !5108
  br label %88, !dbg !5011, !llvm.loop !5071

; <label>:153:                                    ; preds = %62
  br label %155, !dbg !5118

; <label>:154:                                    ; preds = %92
  br label %155, !dbg !5118

; <label>:155:                                    ; preds = %154, %153, %83
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !5118
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10, !dbg !5119
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !4912, metadata !2015), !dbg !4929
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3824, metadata !2015) #10, !dbg !5120
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3829, metadata !2015) #10, !dbg !5122
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2193, metadata !2015) #10, !dbg !5124
  call void @llvm.dbg.value(metadata i64* %14, i64 0, metadata !2190, metadata !2015) #10, !dbg !5126
  %156 = icmp eq i64* %14, null, !dbg !5127
  br i1 %156, label %159, label %157, !dbg !5128

; <label>:157:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i64* %14, i64 0, metadata !2410, metadata !2015) #10, !dbg !5129
  %158 = bitcast i64* %14 to i8*, !dbg !5131
  call void @_ZdlPv(i8* %158) #10, !dbg !5132
  br label %159, !dbg !5133

; <label>:159:                                    ; preds = %155, %157
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10, !dbg !5119
  ret void, !dbg !5119

; <label>:160:                                    ; preds = %166, %121
  %161 = phi i64 [ %124, %121 ], [ %162, %166 ]
  %162 = add nsw i64 %161, -1
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5077
  tail call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !4157, metadata !2015), !dbg !5088
  %163 = getelementptr inbounds i64, i64* %100, i64 %162, !dbg !5089
  %164 = load i64, i64* %163, align 8, !dbg !5090, !tbaa !2276
  %165 = icmp sgt i64 %164, %128, !dbg !5091
  br i1 %165, label %166, label %169, !dbg !5092

; <label>:166:                                    ; preds = %160
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5093
  tail call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !4157, metadata !2015), !dbg !5095
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5096
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !4157, metadata !2015), !dbg !5098
  %167 = getelementptr inbounds i64, i64* %100, i64 %161, !dbg !5099
  store i64 %164, i64* %167, align 8, !dbg !5100, !tbaa !2276
  %168 = icmp sgt i64 %161, 1, !dbg !5101
  br i1 %168, label %160, label %169, !dbg !5102, !llvm.loop !4899

; <label>:169:                                    ; preds = %166, %160
  %170 = phi i64 [ %161, %160 ], [ %162, %166 ]
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5103
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !4157, metadata !2015), !dbg !5105
  %171 = getelementptr inbounds i64, i64* %100, i64 %170, !dbg !5106
  store i64 %128, i64* %171, align 8, !dbg !5073, !tbaa !2276
  %172 = add nsw i64 %106, 2, !dbg !5107
  %173 = add i64 %107, -2, !dbg !5070
  %174 = icmp eq i64 %173, 0, !dbg !5070
  br i1 %174, label %129, label %105, !dbg !5070, !llvm.loop !4907
}

; Function Attrs: nounwind uwtable
define void @_Z6bubbleRSt6vectorIlSaIlEE(%"class.std::vector"* nocapture readonly dereferenceable(24)) local_unnamed_addr #1 !dbg !5134 {
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !5136, metadata !2015), !dbg !5142
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !2039, metadata !2015), !dbg !5143
  %2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1, !dbg !5145
  %3 = bitcast i64** %2 to i64*, !dbg !5145
  %4 = load i64, i64* %3, align 8, !dbg !5145, !tbaa !2205
  %5 = bitcast %"class.std::vector"* %0 to i64*, !dbg !5146
  %6 = load i64, i64* %5, align 8, !dbg !5146
  %7 = sub i64 %4, %6, !dbg !5147
  %8 = lshr exact i64 %7, 3, !dbg !5147
  %9 = trunc i64 %8 to i32, !dbg !5148
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !5137, metadata !2015), !dbg !5149
  %10 = inttoptr i64 %6 to i64*
  br label %11, !dbg !5150, !llvm.loop !5151

; <label>:11:                                     ; preds = %43, %1
  %12 = phi i32 [ %9, %1 ], [ %44, %43 ]
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !5137, metadata !2015), !dbg !5149
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5138, metadata !2015), !dbg !5153
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5140, metadata !2015), !dbg !5154
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5140, metadata !2015), !dbg !5154
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5138, metadata !2015), !dbg !5153
  %13 = icmp sgt i32 %12, 1, !dbg !5155
  br i1 %13, label %14, label %65, !dbg !5157

; <label>:14:                                     ; preds = %11
  %15 = load i64, i64* %10, align 8, !tbaa !2276
  %16 = and i32 %12, 1, !dbg !5158
  %17 = xor i32 %16, 1, !dbg !5158
  %18 = icmp eq i32 %12, 2, !dbg !5158
  br i1 %18, label %25, label %19, !dbg !5158

; <label>:19:                                     ; preds = %14
  %20 = zext i32 %17 to i64, !dbg !5158
  %21 = zext i32 %12 to i64
  %22 = add nsw i64 %21, -1, !dbg !5158
  %23 = sub nsw i64 %22, %20, !dbg !5158
  br label %46, !dbg !5158

; <label>:24:                                     ; preds = %69
  br label %25, !dbg !5161

; <label>:25:                                     ; preds = %24, %14
  %26 = phi i32 [ undef, %14 ], [ %71, %24 ]
  %27 = phi i64 [ %15, %14 ], [ %70, %24 ]
  %28 = phi i64 [ 1, %14 ], [ %72, %24 ]
  %29 = phi i32 [ 0, %14 ], [ %71, %24 ]
  %30 = icmp eq i32 %17, 0, !dbg !5161
  br i1 %30, label %43, label %31, !dbg !5161

; <label>:31:                                     ; preds = %25
  br label %32, !dbg !5161

; <label>:32:                                     ; preds = %31
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !5138, metadata !2015), !dbg !5153
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5140, metadata !2015), !dbg !5154
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5162
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !4157, metadata !2015), !dbg !5164
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5165
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4157, metadata !2015), !dbg !5167
  %33 = getelementptr inbounds i64, i64* %10, i64 %28, !dbg !5168
  %34 = load i64, i64* %33, align 8, !dbg !5169, !tbaa !2276
  %35 = icmp sgt i64 %27, %34, !dbg !5170
  br i1 %35, label %36, label %40, !dbg !5171

; <label>:36:                                     ; preds = %32
  %37 = add nsw i64 %28, -1, !dbg !5158
  %38 = getelementptr inbounds i64, i64* %10, i64 %37, !dbg !5172
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5173
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !4157, metadata !2015), !dbg !5176
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5177
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4157, metadata !2015), !dbg !5179
  tail call void @llvm.dbg.value(metadata i64* %38, i64 0, metadata !3880, metadata !2015), !dbg !5180
  tail call void @llvm.dbg.value(metadata i64* %33, i64 0, metadata !3886, metadata !2015), !dbg !5182
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !3887, metadata !2015), !dbg !5183
  store i64 %34, i64* %38, align 8, !dbg !5184, !tbaa !2276
  store i64 %27, i64* %33, align 8, !dbg !5185, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5138, metadata !2015), !dbg !5153
  %39 = trunc i64 %28 to i32, !dbg !5186
  br label %40, !dbg !5186

; <label>:40:                                     ; preds = %36, %32
  %41 = phi i32 [ %39, %36 ], [ %29, %32 ]
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !5138, metadata !2015), !dbg !5153
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !5138, metadata !2015), !dbg !5153
  br label %42, !dbg !5157

; <label>:42:                                     ; preds = %40
  br label %43, !dbg !5161

; <label>:43:                                     ; preds = %25, %42
  %44 = phi i32 [ %26, %25 ], [ %41, %42 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5137, metadata !2015), !dbg !5149
  %45 = icmp sgt i32 %44, 0, !dbg !5161
  br i1 %45, label %11, label %65, !dbg !5187, !llvm.loop !5151

; <label>:46:                                     ; preds = %69, %19
  %47 = phi i64 [ %15, %19 ], [ %70, %69 ], !dbg !5188
  %48 = phi i64 [ 1, %19 ], [ %72, %69 ]
  %49 = phi i32 [ 0, %19 ], [ %71, %69 ]
  %50 = phi i64 [ %23, %19 ], [ %73, %69 ]
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !5138, metadata !2015), !dbg !5153
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5140, metadata !2015), !dbg !5154
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5162
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !4157, metadata !2015), !dbg !5164
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5165
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !4157, metadata !2015), !dbg !5167
  %51 = getelementptr inbounds i64, i64* %10, i64 %48, !dbg !5168
  %52 = load i64, i64* %51, align 8, !dbg !5169, !tbaa !2276
  %53 = icmp sgt i64 %47, %52, !dbg !5170
  br i1 %53, label %54, label %58, !dbg !5171

; <label>:54:                                     ; preds = %46
  %55 = add nsw i64 %48, -1, !dbg !5158
  %56 = getelementptr inbounds i64, i64* %10, i64 %55, !dbg !5172
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5173
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !4157, metadata !2015), !dbg !5176
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5177
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !4157, metadata !2015), !dbg !5179
  tail call void @llvm.dbg.value(metadata i64* %56, i64 0, metadata !3880, metadata !2015), !dbg !5180
  tail call void @llvm.dbg.value(metadata i64* %51, i64 0, metadata !3886, metadata !2015), !dbg !5182
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !3887, metadata !2015), !dbg !5183
  store i64 %52, i64* %56, align 8, !dbg !5184, !tbaa !2276
  store i64 %47, i64* %51, align 8, !dbg !5185, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5138, metadata !2015), !dbg !5153
  %57 = trunc i64 %48 to i32, !dbg !5186
  br label %58, !dbg !5186

; <label>:58:                                     ; preds = %46, %54
  %59 = phi i64 [ %47, %54 ], [ %52, %46 ]
  %60 = phi i32 [ %57, %54 ], [ %49, %46 ]
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !5138, metadata !2015), !dbg !5153
  %61 = add nuw nsw i64 %48, 1, !dbg !5189
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !5138, metadata !2015), !dbg !5153
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !5138, metadata !2015), !dbg !5153
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5140, metadata !2015), !dbg !5154
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5162
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !4157, metadata !2015), !dbg !5164
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5165
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !4157, metadata !2015), !dbg !5167
  %62 = getelementptr inbounds i64, i64* %10, i64 %61, !dbg !5168
  %63 = load i64, i64* %62, align 8, !dbg !5169, !tbaa !2276
  %64 = icmp sgt i64 %59, %63, !dbg !5170
  br i1 %64, label %66, label %69, !dbg !5171

; <label>:65:                                     ; preds = %11, %43
  ret void, !dbg !5190

; <label>:66:                                     ; preds = %58
  %67 = getelementptr inbounds i64, i64* %10, i64 %48, !dbg !5172
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5173
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !4157, metadata !2015), !dbg !5176
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %0, i64 0, metadata !4154, metadata !2015), !dbg !5177
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !4157, metadata !2015), !dbg !5179
  tail call void @llvm.dbg.value(metadata i64* %56, i64 0, metadata !3880, metadata !2015), !dbg !5180
  tail call void @llvm.dbg.value(metadata i64* %51, i64 0, metadata !3886, metadata !2015), !dbg !5182
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !3887, metadata !2015), !dbg !5183
  store i64 %63, i64* %67, align 8, !dbg !5184, !tbaa !2276
  store i64 %59, i64* %62, align 8, !dbg !5185, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5138, metadata !2015), !dbg !5153
  %68 = trunc i64 %61 to i32, !dbg !5186
  br label %69, !dbg !5186

; <label>:69:                                     ; preds = %66, %58
  %70 = phi i64 [ %59, %66 ], [ %63, %58 ]
  %71 = phi i32 [ %68, %66 ], [ %60, %58 ]
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !5138, metadata !2015), !dbg !5153
  %72 = add nsw i64 %48, 2, !dbg !5189
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !5138, metadata !2015), !dbg !5153
  %73 = add i64 %50, -2, !dbg !5157
  %74 = icmp eq i64 %73, 0, !dbg !5157
  br i1 %74, label %24, label %46, !dbg !5157, !llvm.loop !5191
}

; Function Attrs: nounwind uwtable
define void @_Z9BM_bubbleRN9benchmark5StateE(%"class.benchmark::State"* dereferenceable(144)) #1 !dbg !5193 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %"class.std::uniform_int_distribution"*
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::linear_congruential_engine", align 8
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !5195, metadata !2015), !dbg !5203
  %7 = bitcast %"class.std::vector"* %5 to i8*, !dbg !5204
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10, !dbg !5204
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3554, metadata !2015), !dbg !5205
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3557, metadata !2015), !dbg !5207
  tail call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3562, metadata !3567), !dbg !5208
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3565, metadata !2015), !dbg !5210
  %8 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, !dbg !5211
  %9 = load i32*, i32** %8, align 8, !dbg !5211, !tbaa !3572
  %10 = load i32, i32* %9, align 4, !dbg !5212, !tbaa !3576
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !5196, metadata !2015), !dbg !5213
  call void @_Z5rangei(%"class.std::vector"* nonnull sret %5, i32 %10), !dbg !5214
  %11 = bitcast %"class.std::linear_congruential_engine"* %6 to i8*, !dbg !5215
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #10, !dbg !5215
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !5197, metadata !2015), !dbg !5216
  %12 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %6, i64 0, i32 0
  store i64 200, i64* %12, align 8, !tbaa !3582
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !5196, metadata !2015), !dbg !5213
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3584, metadata !2015), !dbg !5217
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !5219
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3592, metadata !2015), !dbg !5221
  %13 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, !dbg !5222
  %14 = load i64*, i64** %13, align 8, !dbg !5222, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !5196, metadata !2015), !dbg !5213
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3598, metadata !2015), !dbg !5223
  %15 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 1, !dbg !5225
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3589, metadata !2015), !dbg !5226
  tail call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3592, metadata !2015), !dbg !5228
  %16 = load i64*, i64** %15, align 8, !dbg !5229, !tbaa !2418
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !5197, metadata !2015), !dbg !5216
  %17 = ptrtoint i64* %14 to i64
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %6, i64 0, metadata !3608, metadata !2015) #10, !dbg !5230
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !5232
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !5233
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3625, metadata !2015) #10, !dbg !5234
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3631, metadata !2015) #10, !dbg !5236
  %18 = icmp eq i64* %14, %16, !dbg !5237
  %19 = ptrtoint i64* %16 to i64, !dbg !5238
  br i1 %18, label %41, label %20, !dbg !5238

; <label>:20:                                     ; preds = %1
  %21 = bitcast <2 x i64>* %2 to i8*, !dbg !5239
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #10, !dbg !5239
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !5240
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3640, metadata !2015) #10, !dbg !5241
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3643, metadata !2015) #10, !dbg !5243
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3644, metadata !2015) #10, !dbg !5244
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3649, metadata !2015) #10, !dbg !5245
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !5247
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3653, metadata !2015) #10, !dbg !5248
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %2, align 16, !dbg !5249, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !5232
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5250
  %22 = getelementptr inbounds i64, i64* %14, i64 1
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !5233
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !5252
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !5253
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !5255
  %23 = icmp eq i64* %22, %16, !dbg !5256
  br i1 %23, label %29, label %24, !dbg !5257

; <label>:24:                                     ; preds = %20
  %25 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %26 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %27 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  br label %30, !dbg !5257

; <label>:28:                                     ; preds = %30
  br label %29, !dbg !5258

; <label>:29:                                     ; preds = %28, %20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #10, !dbg !5258
  br label %41, !dbg !5258

; <label>:30:                                     ; preds = %30, %24
  %31 = phi i64* [ %22, %24 ], [ %39, %30 ]
  %32 = ptrtoint i64* %31 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #10, !dbg !5259
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !5232
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !5252
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015) #10, !dbg !5260
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015) #10, !dbg !5262
  %33 = sub i64 %32, %17, !dbg !5263
  %34 = ashr exact i64 %33, 3, !dbg !5263
  call void @llvm.dbg.value(metadata %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, metadata !3649, metadata !2015) #10, !dbg !5264
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015) #10, !dbg !5266
  call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !3653, metadata !2015) #10, !dbg !5267
  store i64 0, i64* %26, align 8, !dbg !5268, !tbaa !3860
  store i64 %34, i64* %27, align 8, !dbg !5269, !tbaa !3863
  call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %3, i64 0, metadata !3617, metadata !2015) #10, !dbg !5240
  %35 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull %3, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %6, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4) #10, !dbg !5270
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3615, metadata !2015) #10, !dbg !5232
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5271
  %36 = getelementptr inbounds i64, i64* %14, i64 %35, !dbg !5273
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3868, metadata !2015) #10, !dbg !5274
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3876, metadata !2015) #10, !dbg !5276
  call void @llvm.dbg.value(metadata i64* %31, i64 0, metadata !3880, metadata !2015) #10, !dbg !5277
  call void @llvm.dbg.value(metadata i64* %36, i64 0, metadata !3886, metadata !2015) #10, !dbg !5279
  %37 = load i64, i64* %31, align 8, !dbg !5280, !tbaa !2276
  call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !3887, metadata !2015) #10, !dbg !5281
  %38 = load i64, i64* %36, align 8, !dbg !5282, !tbaa !2276
  store i64 %38, i64* %31, align 8, !dbg !5283, !tbaa !2276
  store i64 %37, i64* %36, align 8, !dbg !5284, !tbaa !2276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #10, !dbg !5285
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !5252
  %39 = getelementptr inbounds i64, i64* %31, i64 1
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3616, metadata !2015) #10, !dbg !5233
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3619, metadata !2015) #10, !dbg !5252
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !5253
  call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !5255
  %40 = icmp eq i64* %39, %16, !dbg !5256
  br i1 %40, label %28, label %30, !dbg !5257, !llvm.loop !3897

; <label>:41:                                     ; preds = %1, %29
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !5196, metadata !2015), !dbg !5213
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015), !dbg !5286
  %42 = sub i64 %19, %17, !dbg !5288
  %43 = lshr exact i64 %42, 3, !dbg !5288
  %44 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 0
  %45 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 2
  %46 = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %0, i64 0, i32 11
  %47 = ashr exact i64 %42, 3
  %48 = icmp eq i64 %47, 0
  %49 = icmp eq i64 %42, 0
  %50 = trunc i64 %43 to i32
  %51 = bitcast i64* %14 to i8*
  br i1 %48, label %52, label %67, !dbg !5289

; <label>:52:                                     ; preds = %41
  %53 = icmp sgt i32 %50, 1
  br label %54, !dbg !5290

; <label>:54:                                     ; preds = %52, %65
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !5292
  %55 = load i8, i8* %44, align 8, !dbg !5290, !tbaa !3688, !range !3698
  %56 = icmp eq i8 %55, 1, !dbg !5290
  br i1 %56, label %58, label %57, !dbg !5293, !prof !3700

; <label>:57:                                     ; preds = %54
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !5294
  br label %58, !dbg !5295

; <label>:58:                                     ; preds = %57, %54
  %59 = load i64, i64* %45, align 8, !dbg !5296, !tbaa !3705
  %60 = add i64 %59, 1, !dbg !5296
  store i64 %60, i64* %45, align 8, !dbg !5296, !tbaa !3705
  %61 = load i64, i64* %46, align 8, !dbg !5297, !tbaa !3707
  %62 = icmp ult i64 %59, %61, !dbg !5298
  br i1 %62, label %63, label %149, !dbg !5299, !prof !3700

; <label>:63:                                     ; preds = %58
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !5196, metadata !2015), !dbg !5213
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !5199, metadata !2015), !dbg !5300
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !5301
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !5303
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !5304
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !5306
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !3721, metadata !2015) #10, !dbg !5308
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !5309
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !5310
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !3730, metadata !2015) #10, !dbg !5312
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !5313
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !2064, metadata !2015) #10, !dbg !5315
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3738, metadata !2058) #10, !dbg !5316
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !5318
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !5316
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3746, metadata !2015) #10, !dbg !5319
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3753, metadata !2058) #10, !dbg !5320
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !5322
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !5320
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3760, metadata !2015) #10, !dbg !5323
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3765, metadata !2058) #10, !dbg !5324
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !5326
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !5324
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3770, metadata !2015) #10, !dbg !5327
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3775, metadata !2058) #10, !dbg !5328
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !5330
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !5328
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3781, metadata !2015) #10, !dbg !5331
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3786, metadata !2058) #10, !dbg !5332
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !5334
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !5332
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3793, metadata !2015) #10, !dbg !5335
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3798, metadata !2058) #10, !dbg !5336
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3804, metadata !2015) #10, !dbg !5338
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !5339
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3810, metadata !2058) #10, !dbg !5340
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3818, metadata !2015) #10, !dbg !5342
  br i1 %49, label %65, label %64, !dbg !5343, !llvm.loop !5151

; <label>:64:                                     ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* null, i8* %51, i64 %42, i32 8, i1 false) #10, !dbg !5344
  br label %65, !dbg !5344, !llvm.loop !5151

; <label>:65:                                     ; preds = %64, %63
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !5137, metadata !2015), !dbg !5345
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5138, metadata !2015), !dbg !5347
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5140, metadata !2015), !dbg !5348
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5140, metadata !2015), !dbg !5348
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5138, metadata !2015), !dbg !5347
  br i1 %53, label %66, label %54, !dbg !5349, !llvm.loop !5350

; <label>:66:                                     ; preds = %65
  call void @llvm.trap()
  unreachable

; <label>:67:                                     ; preds = %41
  %68 = icmp ugt i64 %47, 2305843009213693951
  br i1 %68, label %70, label %69, !dbg !5289

; <label>:69:                                     ; preds = %67
  br label %79, !dbg !5290

; <label>:70:                                     ; preds = %67
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !5292
  %71 = load i8, i8* %44, align 8, !dbg !5290, !tbaa !3688, !range !3698
  %72 = icmp eq i8 %71, 1, !dbg !5290
  br i1 %72, label %74, label %73, !dbg !5293, !prof !3700

; <label>:73:                                     ; preds = %70
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !5294
  br label %74, !dbg !5295

; <label>:74:                                     ; preds = %73, %70
  %75 = load i64, i64* %45, align 8, !dbg !5296, !tbaa !3705
  %76 = add i64 %75, 1, !dbg !5296
  store i64 %76, i64* %45, align 8, !dbg !5296, !tbaa !3705
  %77 = load i64, i64* %46, align 8, !dbg !5297, !tbaa !3707
  %78 = icmp ult i64 %75, %77, !dbg !5298
  br i1 %78, label %88, label %151, !dbg !5299, !prof !3700

; <label>:79:                                     ; preds = %69, %148
  call void @llvm.dbg.value(metadata %"class.benchmark::State"* %0, i64 0, metadata !3683, metadata !2015) #10, !dbg !5292
  %80 = load i8, i8* %44, align 8, !dbg !5290, !tbaa !3688, !range !3698
  %81 = icmp eq i8 %80, 1, !dbg !5290
  br i1 %81, label %83, label %82, !dbg !5293, !prof !3700

; <label>:82:                                     ; preds = %79
  call void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !5294
  br label %83, !dbg !5295

; <label>:83:                                     ; preds = %82, %79
  %84 = load i64, i64* %45, align 8, !dbg !5296, !tbaa !3705
  %85 = add i64 %84, 1, !dbg !5296
  store i64 %85, i64* %45, align 8, !dbg !5296, !tbaa !3705
  %86 = load i64, i64* %46, align 8, !dbg !5297, !tbaa !3707
  %87 = icmp ult i64 %84, %86, !dbg !5298
  br i1 %87, label %89, label %150, !dbg !5299, !prof !3700

; <label>:88:                                     ; preds = %74
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !5196, metadata !2015), !dbg !5213
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !5199, metadata !2015), !dbg !5300
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !5301
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !5303
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !5304
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !5306
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !3721, metadata !2015) #10, !dbg !5308
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !5309
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !5310
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !3730, metadata !2015) #10, !dbg !5312
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !5313
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !2064, metadata !2015) #10, !dbg !5315
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !2071, metadata !2015) #10, !dbg !5352
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !5354
  call void @_ZSt17__throw_bad_allocv() #9, !dbg !5355
  unreachable, !dbg !5355

; <label>:89:                                     ; preds = %83
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !5196, metadata !2015), !dbg !5213
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !5199, metadata !2015), !dbg !5300
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3711, metadata !2015) #10, !dbg !5301
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3714, metadata !2015) #10, !dbg !5303
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2039, metadata !2015) #10, !dbg !5304
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3718, metadata !2015) #10, !dbg !5306
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !3721, metadata !2015) #10, !dbg !5308
  call void @llvm.dbg.value(metadata %"class.std::allocator"* undef, i64 0, metadata !3722, metadata !2015) #10, !dbg !5309
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3727, metadata !2015) #10, !dbg !5310
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !3730, metadata !2015) #10, !dbg !5312
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2067, metadata !2015) #10, !dbg !5313
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !2064, metadata !2015) #10, !dbg !5315
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !2071, metadata !2015) #10, !dbg !5352
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !2015) #10, !dbg !5354
  %90 = call i8* @_Znwm(i64 %42) #10, !dbg !5356
  %91 = bitcast i8* %90 to i64*, !dbg !5357
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3738, metadata !2058) #10, !dbg !5316
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3745, metadata !2015) #10, !dbg !5318
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3738, metadata !2015) #10, !dbg !5316
  call void @llvm.dbg.value(metadata i64* %91, i64 0, metadata !3746, metadata !2015) #10, !dbg !5319
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3753, metadata !2058) #10, !dbg !5320
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3759, metadata !2015) #10, !dbg !5322
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3753, metadata !2015) #10, !dbg !5320
  call void @llvm.dbg.value(metadata i64* %91, i64 0, metadata !3760, metadata !2015) #10, !dbg !5323
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3765, metadata !2058) #10, !dbg !5324
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3769, metadata !2015) #10, !dbg !5326
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3765, metadata !2015) #10, !dbg !5324
  call void @llvm.dbg.value(metadata i64* %91, i64 0, metadata !3770, metadata !2015) #10, !dbg !5327
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3775, metadata !2058) #10, !dbg !5328
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3780, metadata !2015) #10, !dbg !5330
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3775, metadata !2015) #10, !dbg !5328
  call void @llvm.dbg.value(metadata i64* %91, i64 0, metadata !3781, metadata !2015) #10, !dbg !5331
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3786, metadata !2058) #10, !dbg !5332
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3792, metadata !2015) #10, !dbg !5334
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator.21"* undef, metadata !3786, metadata !2015) #10, !dbg !5332
  call void @llvm.dbg.value(metadata i64* %91, i64 0, metadata !3793, metadata !2015) #10, !dbg !5335
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3798, metadata !2058) #10, !dbg !5336
  call void @llvm.dbg.value(metadata i64* %91, i64 0, metadata !3804, metadata !2015) #10, !dbg !5338
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3805, metadata !2015) #10, !dbg !5339
  call void @llvm.dbg.value(metadata i64** %15, i64 0, metadata !3810, metadata !2058) #10, !dbg !5340
  call void @llvm.dbg.value(metadata i64* %91, i64 0, metadata !3818, metadata !2015) #10, !dbg !5342
  br i1 %49, label %93, label %92, !dbg !5343, !llvm.loop !5151

; <label>:92:                                     ; preds = %89
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %90, i8* %51, i64 %42, i32 8, i1 false) #10, !dbg !5344
  br label %93, !dbg !5344, !llvm.loop !5151

; <label>:93:                                     ; preds = %89, %92
  br label %94, !dbg !5358

; <label>:94:                                     ; preds = %93, %126
  %95 = phi i32 [ %127, %126 ], [ %50, %93 ]
  tail call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !5137, metadata !2015), !dbg !5345
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5138, metadata !2015), !dbg !5347
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5140, metadata !2015), !dbg !5348
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5140, metadata !2015), !dbg !5348
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5138, metadata !2015), !dbg !5347
  %96 = icmp sgt i32 %95, 1, !dbg !5358
  br i1 %96, label %97, label %148, !dbg !5349

; <label>:97:                                     ; preds = %94
  %98 = load i64, i64* %91, align 8, !tbaa !2276
  %99 = and i32 %95, 1, !dbg !5359
  %100 = xor i32 %99, 1, !dbg !5359
  %101 = icmp eq i32 %95, 2, !dbg !5359
  br i1 %101, label %108, label %102, !dbg !5359

; <label>:102:                                    ; preds = %97
  %103 = zext i32 %100 to i64, !dbg !5359
  %104 = zext i32 %95 to i64
  %105 = add nsw i64 %104, -1, !dbg !5359
  %106 = sub nsw i64 %105, %103, !dbg !5359
  br label %129, !dbg !5359

; <label>:107:                                    ; preds = %159
  br label %108, !dbg !5360

; <label>:108:                                    ; preds = %107, %97
  %109 = phi i32 [ undef, %97 ], [ %161, %107 ]
  %110 = phi i64 [ %98, %97 ], [ %160, %107 ]
  %111 = phi i64 [ 1, %97 ], [ %162, %107 ]
  %112 = phi i32 [ 0, %97 ], [ %161, %107 ]
  %113 = icmp eq i32 %100, 0, !dbg !5360
  br i1 %113, label %126, label %114, !dbg !5360

; <label>:114:                                    ; preds = %108
  br label %115, !dbg !5360

; <label>:115:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !5138, metadata !2015), !dbg !5347
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5140, metadata !2015), !dbg !5348
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5361
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5363
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !4157, metadata !2015), !dbg !5365
  %116 = getelementptr inbounds i64, i64* %91, i64 %111, !dbg !5366
  %117 = load i64, i64* %116, align 8, !dbg !5367, !tbaa !2276
  %118 = icmp sgt i64 %110, %117, !dbg !5368
  br i1 %118, label %119, label %123, !dbg !5369

; <label>:119:                                    ; preds = %115
  %120 = add nsw i64 %111, -1, !dbg !5359
  %121 = getelementptr inbounds i64, i64* %91, i64 %120, !dbg !5370
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5371
  tail call void @llvm.dbg.value(metadata i64 %120, i64 0, metadata !4157, metadata !2015), !dbg !5373
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5374
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !4157, metadata !2015), !dbg !5376
  tail call void @llvm.dbg.value(metadata i64* %121, i64 0, metadata !3880, metadata !2015), !dbg !5377
  tail call void @llvm.dbg.value(metadata i64* %116, i64 0, metadata !3886, metadata !2015), !dbg !5379
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !3887, metadata !2015), !dbg !5380
  store i64 %117, i64* %121, align 8, !dbg !5381, !tbaa !2276
  store i64 %110, i64* %116, align 8, !dbg !5382, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5138, metadata !2015), !dbg !5347
  %122 = trunc i64 %111 to i32, !dbg !5383
  br label %123, !dbg !5383

; <label>:123:                                    ; preds = %119, %115
  %124 = phi i32 [ %122, %119 ], [ %112, %115 ]
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !5138, metadata !2015), !dbg !5347
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !5138, metadata !2015), !dbg !5347
  br label %125, !dbg !5349

; <label>:125:                                    ; preds = %123
  br label %126, !dbg !5360

; <label>:126:                                    ; preds = %108, %125
  %127 = phi i32 [ %109, %108 ], [ %124, %125 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5137, metadata !2015), !dbg !5345
  %128 = icmp sgt i32 %127, 0, !dbg !5360
  br i1 %128, label %94, label %148, !dbg !5384, !llvm.loop !5151

; <label>:129:                                    ; preds = %159, %102
  %130 = phi i64 [ %98, %102 ], [ %160, %159 ], !dbg !5385
  %131 = phi i64 [ 1, %102 ], [ %162, %159 ]
  %132 = phi i32 [ 0, %102 ], [ %161, %159 ]
  %133 = phi i64 [ %106, %102 ], [ %163, %159 ]
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !5138, metadata !2015), !dbg !5347
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5140, metadata !2015), !dbg !5348
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5361
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5363
  tail call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !4157, metadata !2015), !dbg !5365
  %134 = getelementptr inbounds i64, i64* %91, i64 %131, !dbg !5366
  %135 = load i64, i64* %134, align 8, !dbg !5367, !tbaa !2276
  %136 = icmp sgt i64 %130, %135, !dbg !5368
  br i1 %136, label %137, label %141, !dbg !5369

; <label>:137:                                    ; preds = %129
  %138 = add nsw i64 %131, -1, !dbg !5359
  %139 = getelementptr inbounds i64, i64* %91, i64 %138, !dbg !5370
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5371
  tail call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !4157, metadata !2015), !dbg !5373
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5374
  tail call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !4157, metadata !2015), !dbg !5376
  tail call void @llvm.dbg.value(metadata i64* %139, i64 0, metadata !3880, metadata !2015), !dbg !5377
  tail call void @llvm.dbg.value(metadata i64* %134, i64 0, metadata !3886, metadata !2015), !dbg !5379
  tail call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !3887, metadata !2015), !dbg !5380
  store i64 %135, i64* %139, align 8, !dbg !5381, !tbaa !2276
  store i64 %130, i64* %134, align 8, !dbg !5382, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5138, metadata !2015), !dbg !5347
  %140 = trunc i64 %131 to i32, !dbg !5383
  br label %141, !dbg !5383

; <label>:141:                                    ; preds = %137, %129
  %142 = phi i64 [ %130, %137 ], [ %135, %129 ]
  %143 = phi i32 [ %140, %137 ], [ %132, %129 ]
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !5138, metadata !2015), !dbg !5347
  %144 = add nuw nsw i64 %131, 1, !dbg !5386
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !5138, metadata !2015), !dbg !5347
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !5138, metadata !2015), !dbg !5347
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5140, metadata !2015), !dbg !5348
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5361
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5363
  tail call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !4157, metadata !2015), !dbg !5365
  %145 = getelementptr inbounds i64, i64* %91, i64 %144, !dbg !5366
  %146 = load i64, i64* %145, align 8, !dbg !5367, !tbaa !2276
  %147 = icmp sgt i64 %142, %146, !dbg !5368
  br i1 %147, label %156, label %159, !dbg !5369

; <label>:148:                                    ; preds = %94, %126
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !5199, metadata !2015), !dbg !5300
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3824, metadata !2015) #10, !dbg !5387
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !3829, metadata !2015) #10, !dbg !5389
  call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !2193, metadata !2015) #10, !dbg !5391
  call void @llvm.dbg.value(metadata i64* %91, i64 0, metadata !2190, metadata !2015) #10, !dbg !5393
  call void @llvm.dbg.value(metadata i64* %91, i64 0, metadata !2410, metadata !2015) #10, !dbg !5394
  call void @_ZdlPv(i8* nonnull %90) #10, !dbg !5396
  br label %79, !dbg !5292, !llvm.loop !5350

; <label>:149:                                    ; preds = %58
  br label %151, !dbg !5397

; <label>:150:                                    ; preds = %83
  br label %151, !dbg !5397

; <label>:151:                                    ; preds = %150, %149, %74
  call void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* nonnull %0) #10, !dbg !5397
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10, !dbg !5398
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !5196, metadata !2015), !dbg !5213
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3824, metadata !2015) #10, !dbg !5399
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !3829, metadata !2015) #10, !dbg !5401
  call void @llvm.dbg.value(metadata %"class.std::vector"* %5, i64 0, metadata !2193, metadata !2015) #10, !dbg !5403
  call void @llvm.dbg.value(metadata i64* %14, i64 0, metadata !2190, metadata !2015) #10, !dbg !5405
  %152 = icmp eq i64* %14, null, !dbg !5406
  br i1 %152, label %155, label %153, !dbg !5407

; <label>:153:                                    ; preds = %151
  call void @llvm.dbg.value(metadata i64* %14, i64 0, metadata !2410, metadata !2015) #10, !dbg !5408
  %154 = bitcast i64* %14 to i8*, !dbg !5410
  call void @_ZdlPv(i8* %154) #10, !dbg !5411
  br label %155, !dbg !5412

; <label>:155:                                    ; preds = %151, %153
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10, !dbg !5398
  ret void, !dbg !5398

; <label>:156:                                    ; preds = %141
  %157 = getelementptr inbounds i64, i64* %91, i64 %131, !dbg !5370
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5371
  tail call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !4157, metadata !2015), !dbg !5373
  tail call void @llvm.dbg.value(metadata %"class.std::vector"* undef, i64 0, metadata !4154, metadata !2015), !dbg !5374
  tail call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !4157, metadata !2015), !dbg !5376
  tail call void @llvm.dbg.value(metadata i64* %139, i64 0, metadata !3880, metadata !2015), !dbg !5377
  tail call void @llvm.dbg.value(metadata i64* %134, i64 0, metadata !3886, metadata !2015), !dbg !5379
  tail call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !3887, metadata !2015), !dbg !5380
  store i64 %146, i64* %157, align 8, !dbg !5381, !tbaa !2276
  store i64 %142, i64* %145, align 8, !dbg !5382, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5138, metadata !2015), !dbg !5347
  %158 = trunc i64 %144 to i32, !dbg !5383
  br label %159, !dbg !5383

; <label>:159:                                    ; preds = %156, %141
  %160 = phi i64 [ %142, %156 ], [ %146, %141 ]
  %161 = phi i32 [ %158, %156 ], [ %143, %141 ]
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !5138, metadata !2015), !dbg !5347
  %162 = add nsw i64 %131, 2, !dbg !5386
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !5138, metadata !2015), !dbg !5347
  %163 = add i64 %133, -2, !dbg !5349
  %164 = icmp eq i64 %163, 0, !dbg !5349
  br i1 %164, label %107, label %129, !dbg !5349, !llvm.loop !5191
}

declare %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(%"class.benchmark::internal::Benchmark"*) local_unnamed_addr #0

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #5

declare %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal9Benchmark15RangeMultiplierEi(%"class.benchmark::internal::Benchmark"*, i32) local_unnamed_addr #0

declare %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal9Benchmark5RangeEii(%"class.benchmark::internal::Benchmark"*, i32, i32) local_unnamed_addr #0

; Function Attrs: norecurse nounwind uwtable
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !5413 {
  %3 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5417, metadata !2015), !dbg !5419
  store i32 %0, i32* %3, align 4, !tbaa !3576
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !5418, metadata !2015), !dbg !5419
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !5417, metadata !2015), !dbg !5419
  call void @_ZN9benchmark10InitializeEPiPPc(i32* nonnull %3, i8** %1) #10, !dbg !5419
  %4 = load i32, i32* %3, align 4, !dbg !5420, !tbaa !3576
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !5417, metadata !2015), !dbg !5419
  %5 = call zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32 %4, i8** %1) #10, !dbg !5420
  br i1 %5, label %8, label %6, !dbg !5419

; <label>:6:                                      ; preds = %2
  %7 = call i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() #10, !dbg !5419
  br label %8, !dbg !5419

; <label>:8:                                      ; preds = %2, %6
  %9 = phi i32 [ 0, %6 ], [ 1, %2 ]
  ret i32 %9, !dbg !5419
}

declare void @_ZN9benchmark10InitializeEPiPPc(i32*, i8**) local_unnamed_addr #0

declare zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32, i8**) local_unnamed_addr #0

declare i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() local_unnamed_addr #0

declare void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"*) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"*) local_unnamed_addr #0

declare void @_ZN9benchmark8internal9BenchmarkC2EPKc(%"class.benchmark::internal::Benchmark"*, i8*) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"*, %"class.std::linear_congruential_engine"* dereferenceable(8), %"struct.std::uniform_int_distribution<unsigned long>::param_type"* dereferenceable(16)) local_unnamed_addr #1 comdat align 2 !dbg !710 {
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8
  tail call void @llvm.dbg.value(metadata %"class.std::uniform_int_distribution"* %0, i64 0, metadata !792, metadata !2015), !dbg !5422
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %1, i64 0, metadata !794, metadata !2015), !dbg !5423
  tail call void @llvm.dbg.value(metadata %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %2, i64 0, metadata !795, metadata !2015), !dbg !5424
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !796, metadata !2015), !dbg !5425
  tail call void @llvm.dbg.value(metadata i64 2147483646, i64 0, metadata !798, metadata !2015), !dbg !5426
  tail call void @llvm.dbg.value(metadata i64 2147483645, i64 0, metadata !799, metadata !2015), !dbg !5427
  tail call void @llvm.dbg.value(metadata %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %2, i64 0, metadata !5428, metadata !2015), !dbg !5432
  %5 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %2, i64 0, i32 1, !dbg !5434
  %6 = load i64, i64* %5, align 8, !dbg !5434, !tbaa !3863
  tail call void @llvm.dbg.value(metadata %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %2, i64 0, metadata !5435, metadata !2015), !dbg !5438
  %7 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %2, i64 0, i32 0, !dbg !5440
  %8 = load i64, i64* %7, align 8, !dbg !5440, !tbaa !3860
  %9 = sub i64 %6, %8, !dbg !5441
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !800, metadata !2015), !dbg !5442
  %10 = icmp ult i64 %9, 2147483645, !dbg !5443
  br i1 %10, label %11, label %25, !dbg !5444

; <label>:11:                                     ; preds = %3
  %12 = add i64 %9, 1, !dbg !5445
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !802, metadata !2015), !dbg !5446
  %13 = udiv i64 2147483645, %12, !dbg !5447
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !805, metadata !2015), !dbg !5448
  %14 = mul i64 %13, %12, !dbg !5449
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !806, metadata !2015), !dbg !5450
  %15 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %1, i64 0, i32 0
  %16 = load i64, i64* %15, align 8, !dbg !5451, !tbaa !3582
  br label %17, !dbg !5457, !llvm.loop !5458

; <label>:17:                                     ; preds = %17, %11
  %18 = phi i64 [ %20, %17 ], [ %16, %11 ], !dbg !5460
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %1, i64 0, metadata !5454, metadata !2015), !dbg !5460
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !5461, metadata !2015), !dbg !5468
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !5470, metadata !2015), !dbg !5480
  %19 = mul i64 %18, 48271, !dbg !5482
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !5479, metadata !2015), !dbg !5483
  %20 = urem i64 %19, 2147483647, !dbg !5484
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !5479, metadata !2015), !dbg !5483
  %21 = add nsw i64 %20, -1, !dbg !5486
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !801, metadata !2015), !dbg !5487
  %22 = icmp ult i64 %21, %14, !dbg !5488
  br i1 %22, label %23, label %17, !dbg !5489, !llvm.loop !5458

; <label>:23:                                     ; preds = %17
  store i64 %20, i64* %15, align 8, !dbg !5451, !tbaa !3582
  %24 = udiv i64 %21, %13, !dbg !5490
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !801, metadata !2015), !dbg !5487
  br label %52, !dbg !5491

; <label>:25:                                     ; preds = %3
  %26 = icmp eq i64 %9, 2147483645, !dbg !5492
  br i1 %26, label %44, label %27, !dbg !5493, !llvm.loop !5494

; <label>:27:                                     ; preds = %25
  %28 = bitcast %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4 to i8*
  %29 = udiv i64 %9, 2147483646
  %30 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 0
  %31 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned long>::param_type", %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, i32 1
  %32 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %1, i64 0, i32 0
  br label %33, !dbg !5497

; <label>:33:                                     ; preds = %27, %33
  call void @llvm.dbg.value(metadata i64 2147483646, i64 0, metadata !810, metadata !2015), !dbg !5498
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #10, !dbg !5497
  tail call void @llvm.dbg.value(metadata %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %4, i64 0, metadata !3649, metadata !2015), !dbg !5499
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3652, metadata !2015), !dbg !5501
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !3653, metadata !2015), !dbg !5502
  store i64 0, i64* %30, align 8, !dbg !5503, !tbaa !3860
  store i64 %29, i64* %31, align 8, !dbg !5504, !tbaa !3863
  %34 = call i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* %0, %"class.std::linear_congruential_engine"* nonnull dereferenceable(8) %1, %"struct.std::uniform_int_distribution<unsigned long>::param_type"* nonnull dereferenceable(16) %4), !dbg !5505
  %35 = mul i64 %34, 2147483646, !dbg !5506
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !807, metadata !2015), !dbg !5507
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #10, !dbg !5508
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %1, i64 0, metadata !5454, metadata !2015), !dbg !5509
  %36 = load i64, i64* %32, align 8, !dbg !5511, !tbaa !3582
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !5461, metadata !2015), !dbg !5512
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !5470, metadata !2015), !dbg !5514
  %37 = mul i64 %36, 48271, !dbg !5516
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !5479, metadata !2015), !dbg !5517
  %38 = urem i64 %37, 2147483647, !dbg !5518
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !5479, metadata !2015), !dbg !5517
  store i64 %38, i64* %32, align 8, !dbg !5519, !tbaa !3582
  %39 = add i64 %35, -1, !dbg !5520
  %40 = add i64 %39, %38, !dbg !5521
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !801, metadata !2015), !dbg !5487
  %41 = icmp ugt i64 %40, %9, !dbg !5522
  %42 = icmp ult i64 %40, %35, !dbg !5523
  %43 = or i1 %41, %42, !dbg !5524
  br i1 %43, label %33, label %50, !dbg !5524, !llvm.loop !5494

; <label>:44:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata %"class.std::linear_congruential_engine"* %1, i64 0, metadata !5454, metadata !2015), !dbg !5525
  %45 = getelementptr inbounds %"class.std::linear_congruential_engine", %"class.std::linear_congruential_engine"* %1, i64 0, i32 0, !dbg !5527
  %46 = load i64, i64* %45, align 8, !dbg !5527, !tbaa !3582
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !5461, metadata !2015), !dbg !5528
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !5470, metadata !2015), !dbg !5530
  %47 = mul i64 %46, 48271, !dbg !5532
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !5479, metadata !2015), !dbg !5533
  %48 = urem i64 %47, 2147483647, !dbg !5534
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !5479, metadata !2015), !dbg !5533
  store i64 %48, i64* %45, align 8, !dbg !5535, !tbaa !3582
  %49 = add nsw i64 %48, -1, !dbg !5536
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !801, metadata !2015), !dbg !5487
  br label %52

; <label>:50:                                     ; preds = %33
  %51 = load i64, i64* %7, align 8, !tbaa !3860
  br label %52, !dbg !5537

; <label>:52:                                     ; preds = %50, %44, %23
  %53 = phi i64 [ %8, %23 ], [ %8, %44 ], [ %51, %50 ], !dbg !5537
  %54 = phi i64 [ %24, %23 ], [ %49, %44 ], [ %40, %50 ]
  call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !801, metadata !2015), !dbg !5487
  tail call void @llvm.dbg.value(metadata %"struct.std::uniform_int_distribution<unsigned long>::param_type"* %2, i64 0, metadata !5435, metadata !2015), !dbg !5539
  %55 = add i64 %53, %54, !dbg !5540
  ret i64 %55, !dbg !5541
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_T0_(i64*, i64*, i64) local_unnamed_addr #1 comdat !dbg !5542 {
  %4 = ptrtoint i64* %0 to i64
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5550, metadata !2015), !dbg !5553
  %5 = ptrtoint i64* %1 to i64
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5550, metadata !2015), !dbg !5553
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5548, metadata !2015), !dbg !5554
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5549, metadata !2015), !dbg !5555
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015), !dbg !5556
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015), !dbg !5558
  %6 = sub i64 %5, %4, !dbg !5559
  %7 = icmp sgt i64 %6, 128, !dbg !5560
  br i1 %7, label %8, label %129, !dbg !5561

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds i64, i64* %0, i64 1
  br label %10, !dbg !5561

; <label>:10:                                     ; preds = %8, %123
  %11 = phi i64 [ %6, %8 ], [ %125, %123 ]
  %12 = phi i64 [ %5, %8 ], [ %124, %123 ]
  %13 = phi i64 [ %2, %8 ], [ %82, %123 ]
  %14 = phi i64* [ %1, %8 ], [ %110, %123 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5550, metadata !2015), !dbg !5553
  %15 = icmp eq i64 %13, 0, !dbg !5562
  br i1 %15, label %16, label %80, !dbg !5564

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !5565, metadata !2015) #10, !dbg !5572
  tail call void @llvm.dbg.value(metadata i64* undef, i64 0, metadata !5570, metadata !2015) #10, !dbg !5575
  tail call void @llvm.dbg.value(metadata i64* undef, i64 0, metadata !5571, metadata !2015) #10, !dbg !5576
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5565, metadata !2015) #10, !dbg !5572
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5570, metadata !2015) #10, !dbg !5575
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5571, metadata !2015) #10, !dbg !5576
  tail call void @llvm.dbg.value(metadata i64* undef, i64 0, metadata !5577, metadata !2015) #10, !dbg !5584
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5577, metadata !2015) #10, !dbg !5584
  tail call void @_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_(i64* %0, i64* %14) #10, !dbg !5586
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5581, metadata !2015) #10, !dbg !5587
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5588, metadata !2015) #10, !dbg !5592
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5591, metadata !2015) #10, !dbg !5595
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5596, metadata !2015) #10, !dbg !5600
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5599, metadata !2015) #10, !dbg !5602
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015) #10, !dbg !5603
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015) #10, !dbg !5605
  br label %17, !dbg !5606

; <label>:17:                                     ; preds = %16, %76
  %18 = phi i64 [ %21, %76 ], [ %12, %16 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5599, metadata !2015) #10, !dbg !5602
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5609, metadata !2015) #10, !dbg !5612
  %19 = inttoptr i64 %18 to i64*, !dbg !5606
  %20 = getelementptr inbounds i64, i64* %19, i64 -1, !dbg !5606
  %21 = ptrtoint i64* %20 to i64, !dbg !5606
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !826, metadata !2015) #10, !dbg !5613
  %22 = load i64, i64* %20, align 8, !dbg !5615, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !827, metadata !2015) #10, !dbg !5616
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !824, metadata !2015) #10, !dbg !5617
  %23 = load i64, i64* %0, align 8, !dbg !5618, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !826, metadata !2015) #10, !dbg !5613
  store i64 %23, i64* %20, align 8, !dbg !5619, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !824, metadata !2015) #10, !dbg !5617
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !825, metadata !2015) #10, !dbg !5620
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015) #10, !dbg !5621
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015) #10, !dbg !5623
  %24 = sub i64 %21, %4, !dbg !5624
  %25 = ashr exact i64 %24, 3, !dbg !5624
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5625, metadata !2015) #10, !dbg !5637
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !5633, metadata !2015) #10, !dbg !5639
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5634, metadata !2015) #10, !dbg !5640
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5625, metadata !2015) #10, !dbg !5637
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5635, metadata !2015) #10, !dbg !5641
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5625, metadata !2015) #10, !dbg !5637
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5636, metadata !2015) #10, !dbg !5642
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5636, metadata !2015) #10, !dbg !5642
  %26 = add nsw i64 %25, -1, !dbg !5643
  %27 = sdiv i64 %26, 2, !dbg !5644
  %28 = icmp sgt i64 %24, 16, !dbg !5645
  br i1 %28, label %29, label %46, !dbg !5646

; <label>:29:                                     ; preds = %17
  br label %30, !dbg !5647

; <label>:30:                                     ; preds = %29, %30
  %31 = phi i64 [ %40, %30 ], [ 0, %29 ]
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !5636, metadata !2015) #10, !dbg !5642
  %32 = shl i64 %31, 1, !dbg !5647
  %33 = add i64 %32, 2, !dbg !5647
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !5636, metadata !2015) #10, !dbg !5642
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015) #10, !dbg !5649
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5650
  %34 = getelementptr inbounds i64, i64* %0, i64 %33, !dbg !5653
  %35 = load i64, i64* %34, align 8, !dbg !5654, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !5636, metadata !2015) #10, !dbg !5642
  %36 = or i64 %32, 1, !dbg !5655
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015) #10, !dbg !5649
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5656
  %37 = getelementptr inbounds i64, i64* %0, i64 %36, !dbg !5658
  %38 = load i64, i64* %37, align 8, !dbg !5659, !tbaa !2276
  %39 = icmp slt i64 %35, %38, !dbg !5660
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !5636, metadata !2015) #10, !dbg !5642
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !5636, metadata !2015) #10, !dbg !5642
  %40 = select i1 %39, i64 %36, i64 %33, !dbg !5661
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015) #10, !dbg !5649
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5662
  %41 = getelementptr inbounds i64, i64* %0, i64 %40, !dbg !5664
  %42 = load i64, i64* %41, align 8, !dbg !5665, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015) #10, !dbg !5649
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5666
  %43 = getelementptr inbounds i64, i64* %0, i64 %31, !dbg !5668
  store i64 %42, i64* %43, align 8, !dbg !5669, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !5636, metadata !2015) #10, !dbg !5642
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !5625, metadata !2015) #10, !dbg !5637
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !5636, metadata !2015) #10, !dbg !5642
  %44 = icmp slt i64 %40, %27, !dbg !5645
  br i1 %44, label %30, label %45, !dbg !5646, !llvm.loop !5670

; <label>:45:                                     ; preds = %30
  br label %46, !dbg !5673

; <label>:46:                                     ; preds = %45, %17
  %47 = phi i64 [ 0, %17 ], [ %40, %45 ]
  %48 = and i64 %25, 1, !dbg !5673
  %49 = icmp eq i64 %48, 0, !dbg !5675
  br i1 %49, label %50, label %60, !dbg !5676

; <label>:50:                                     ; preds = %46
  %51 = add nsw i64 %25, -2, !dbg !5677
  %52 = sdiv i64 %51, 2, !dbg !5678
  %53 = icmp eq i64 %47, %52, !dbg !5679
  br i1 %53, label %54, label %60, !dbg !5680

; <label>:54:                                     ; preds = %50
  %55 = shl i64 %47, 1, !dbg !5681
  %56 = or i64 %55, 1, !dbg !5683
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015) #10, !dbg !5649
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5684
  %57 = getelementptr inbounds i64, i64* %0, i64 %56, !dbg !5686
  %58 = load i64, i64* %57, align 8, !dbg !5683, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015) #10, !dbg !5649
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5687
  %59 = getelementptr inbounds i64, i64* %0, i64 %47, !dbg !5689
  store i64 %58, i64* %59, align 8, !dbg !5690, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !5625, metadata !2015) #10, !dbg !5637
  br label %60, !dbg !5691

; <label>:60:                                     ; preds = %54, %50, %46
  %61 = phi i64 [ %56, %54 ], [ %47, %50 ], [ %47, %46 ]
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !5625, metadata !2015) #10, !dbg !5637
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !5692, metadata !2015) #10, !dbg !5699
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5696, metadata !2015) #10, !dbg !5701
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5697, metadata !2015) #10, !dbg !5702
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !5692, metadata !2015) #10, !dbg !5699
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !5692, metadata !2015) #10, !dbg !5699
  %62 = icmp sgt i64 %61, 0, !dbg !5703
  br i1 %62, label %63, label %76, !dbg !5704

; <label>:63:                                     ; preds = %60
  br label %64

; <label>:64:                                     ; preds = %63, %71
  %65 = phi i64 [ %67, %71 ], [ %61, %63 ]
  %66 = add nsw i64 %65, -1
  %67 = sdiv i64 %66, 2
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015) #10, !dbg !5705
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5706
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !5692, metadata !2015) #10, !dbg !5699
  %68 = getelementptr inbounds i64, i64* %0, i64 %67, !dbg !5708
  %69 = load i64, i64* %68, align 8, !dbg !5709, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5697, metadata !2015) #10, !dbg !5702
  %70 = icmp slt i64 %69, %22, !dbg !5710
  br i1 %70, label %71, label %74, !dbg !5711

; <label>:71:                                     ; preds = %64
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015) #10, !dbg !5705
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5712
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015) #10, !dbg !5705
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5715
  %72 = getelementptr inbounds i64, i64* %0, i64 %65, !dbg !5717
  store i64 %69, i64* %72, align 8, !dbg !5718, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !5698, metadata !2015) #10, !dbg !5719
  tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !5692, metadata !2015) #10, !dbg !5699
  tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !5692, metadata !2015) #10, !dbg !5699
  %73 = icmp sgt i64 %65, 2, !dbg !5703
  br i1 %73, label %64, label %74, !dbg !5704, !llvm.loop !5720

; <label>:74:                                     ; preds = %64, %71
  %75 = phi i64 [ %65, %64 ], [ %67, %71 ]
  br label %76, !dbg !5723

; <label>:76:                                     ; preds = %74, %60
  %77 = phi i64 [ %61, %60 ], [ %75, %74 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015) #10, !dbg !5705
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5725
  %78 = getelementptr inbounds i64, i64* %0, i64 %77, !dbg !5723
  store i64 %22, i64* %78, align 8, !dbg !5726, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5596, metadata !2015) #10, !dbg !5600
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5599, metadata !2015) #10, !dbg !5602
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015) #10, !dbg !5603
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015) #10, !dbg !5605
  %79 = icmp sgt i64 %24, 8, !dbg !5727
  br i1 %79, label %17, label %127, !dbg !5728, !llvm.loop !5729

; <label>:80:                                     ; preds = %10
  %81 = lshr i64 %11, 4
  %82 = add nsw i64 %13, -1, !dbg !5732
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5550, metadata !2015), !dbg !5553
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5551, metadata !2015), !dbg !5733
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5734, metadata !2015), !dbg !5741
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5739, metadata !2015), !dbg !5743
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5740, metadata !2015), !dbg !5744
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015), !dbg !5745
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015), !dbg !5747
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5739, metadata !2015), !dbg !5743
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !5748
  %83 = getelementptr inbounds i64, i64* %0, i64 %81, !dbg !5750
  tail call void @llvm.dbg.value(metadata i64* %83, i64 0, metadata !5734, metadata !2015), !dbg !5741
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5739, metadata !2015), !dbg !5743
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !5751
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5740, metadata !2015), !dbg !5744
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5753, metadata !2015), !dbg !5757
  %84 = getelementptr inbounds i64, i64* %14, i64 -1, !dbg !5759
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !5760, metadata !2015), !dbg !5769
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5760, metadata !2015), !dbg !5769
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5766, metadata !2015), !dbg !5771
  %85 = load i64, i64* %9, align 8, !dbg !5772, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5767, metadata !2015), !dbg !5774
  %86 = load i64, i64* %83, align 8, !dbg !5775, !tbaa !2276
  %87 = icmp slt i64 %85, %86, !dbg !5776
  %88 = load i64, i64* %84, align 8, !dbg !5777, !tbaa !2276
  %89 = load i64, i64* %0, align 8, !dbg !5780, !tbaa !2276
  br i1 %87, label %90, label %96, !dbg !5783

; <label>:90:                                     ; preds = %80
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5767, metadata !2015), !dbg !5774
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5768, metadata !2015), !dbg !5784
  %91 = icmp slt i64 %86, %88, !dbg !5785
  br i1 %91, label %102, label %92, !dbg !5786

; <label>:92:                                     ; preds = %90
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5766, metadata !2015), !dbg !5771
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5768, metadata !2015), !dbg !5784
  %93 = icmp slt i64 %85, %88, !dbg !5787
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3868, metadata !2015), !dbg !5789
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3876, metadata !2015), !dbg !5791
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !3880, metadata !2015), !dbg !5792
  %94 = select i1 %93, i64 %88, i64 %85, !dbg !5794
  %95 = select i1 %93, i64* %84, i64* %9, !dbg !5794
  br label %102, !dbg !5794

; <label>:96:                                     ; preds = %80
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5766, metadata !2015), !dbg !5771
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5768, metadata !2015), !dbg !5784
  %97 = icmp slt i64 %85, %88, !dbg !5795
  br i1 %97, label %102, label %98, !dbg !5797

; <label>:98:                                     ; preds = %96
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5767, metadata !2015), !dbg !5774
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5768, metadata !2015), !dbg !5784
  %99 = icmp slt i64 %86, %88, !dbg !5798
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3868, metadata !2015), !dbg !5800
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3876, metadata !2015), !dbg !5802
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !3880, metadata !2015), !dbg !5803
  %100 = select i1 %99, i64 %88, i64 %86, !dbg !5805
  %101 = select i1 %99, i64* %84, i64* %83, !dbg !5805
  br label %102, !dbg !5805

; <label>:102:                                    ; preds = %98, %96, %92, %90
  %103 = phi i64 [ %94, %92 ], [ %85, %96 ], [ %100, %98 ], [ %86, %90 ]
  %104 = phi i64* [ %95, %92 ], [ %9, %96 ], [ %101, %98 ], [ %83, %90 ]
  store i64 %103, i64* %0, align 8, !dbg !5806, !tbaa !2276
  store i64 %89, i64* %104, align 8, !dbg !5809, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5739, metadata !2015), !dbg !5743
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !5810
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5739, metadata !2015), !dbg !5743
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !5812, metadata !2015), !dbg !5820
  br label %105, !dbg !5822

; <label>:105:                                    ; preds = %122, %102
  %106 = phi i64* [ %9, %102 ], [ %113, %122 ]
  %107 = phi i64* [ %14, %102 ], [ %117, %122 ]
  %108 = load i64, i64* %0, align 8, !tbaa !2276
  br label %109, !dbg !5823

; <label>:109:                                    ; preds = %109, %105
  %110 = phi i64* [ %106, %105 ], [ %113, %109 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5818, metadata !2015), !dbg !5825
  %111 = load i64, i64* %110, align 8, !dbg !5826, !tbaa !2276
  %112 = icmp slt i64 %111, %108, !dbg !5827
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5818, metadata !2015), !dbg !5825
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5828, metadata !2015), !dbg !5831
  %113 = getelementptr inbounds i64, i64* %110, i64 1, !dbg !5833
  br i1 %112, label %109, label %114, !dbg !5823, !llvm.loop !5834

; <label>:114:                                    ; preds = %109
  br label %115, !dbg !5837

; <label>:115:                                    ; preds = %114, %115
  %116 = phi i64* [ %117, %115 ], [ %107, %114 ]
  %117 = getelementptr inbounds i64, i64* %116, i64 -1, !dbg !5837
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5819, metadata !2015), !dbg !5839
  %118 = load i64, i64* %117, align 8, !dbg !5840, !tbaa !2276
  %119 = icmp slt i64 %108, %118, !dbg !5841
  br i1 %119, label %115, label %120, !dbg !5842, !llvm.loop !5843

; <label>:120:                                    ; preds = %115
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5818, metadata !2015), !dbg !5825
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5819, metadata !2015), !dbg !5839
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5588, metadata !2015), !dbg !5846
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5591, metadata !2015), !dbg !5849
  %121 = icmp ult i64* %110, %117, !dbg !5850
  br i1 %121, label %122, label %123, !dbg !5851

; <label>:122:                                    ; preds = %120
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3868, metadata !2015), !dbg !5852
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3876, metadata !2015), !dbg !5854
  tail call void @llvm.dbg.value(metadata i64* %110, i64 0, metadata !3880, metadata !2015), !dbg !5855
  tail call void @llvm.dbg.value(metadata i64* %117, i64 0, metadata !3886, metadata !2015), !dbg !5857
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !3887, metadata !2015), !dbg !5858
  store i64 %118, i64* %110, align 8, !dbg !5859, !tbaa !2276
  store i64 %111, i64* %117, align 8, !dbg !5860, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5818, metadata !2015), !dbg !5825
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5828, metadata !2015), !dbg !5861
  br label %105, !dbg !5822, !llvm.loop !5863

; <label>:123:                                    ; preds = %120
  tail call void @llvm.dbg.value(metadata i64* %110, i64 0, metadata !5551, metadata !2015), !dbg !5733
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_T0_(i64* %110, i64* %14, i64 %82), !dbg !5866
  %124 = ptrtoint i64* %110 to i64
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5550, metadata !2015), !dbg !5553
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5548, metadata !2015), !dbg !5554
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5549, metadata !2015), !dbg !5555
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015), !dbg !5556
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015), !dbg !5558
  %125 = sub i64 %124, %4, !dbg !5559
  %126 = icmp sgt i64 %125, 128, !dbg !5560
  br i1 %126, label %10, label %128, !dbg !5561, !llvm.loop !5867

; <label>:127:                                    ; preds = %76
  br label %129, !dbg !5869

; <label>:128:                                    ; preds = %123
  br label %129, !dbg !5869

; <label>:129:                                    ; preds = %128, %127, %3
  ret void, !dbg !5869
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_(i64*, i64*) local_unnamed_addr #1 comdat !dbg !5870 {
  %3 = ptrtoint i64* %0 to i64
  %4 = ptrtoint i64* %1 to i64
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5872, metadata !2015), !dbg !5874
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5873, metadata !2015), !dbg !5875
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015), !dbg !5876
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015), !dbg !5879
  %5 = sub i64 %4, %3, !dbg !5880
  %6 = icmp sgt i64 %5, 128, !dbg !5881
  br i1 %6, label %7, label %92, !dbg !5882

; <label>:7:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5872, metadata !2015), !dbg !5874
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !5883
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5886, metadata !2015) #10, !dbg !5897
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5889, metadata !2015) #10, !dbg !5899
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3625, metadata !2015) #10, !dbg !5900
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3631, metadata !2015) #10, !dbg !5903
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5889, metadata !2015) #10, !dbg !5899
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !5904
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !5905
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !5907
  %8 = bitcast i64* %0 to i8*
  br label %9, !dbg !5908

; <label>:9:                                      ; preds = %35, %7
  %10 = phi i64 [ 1, %7 ], [ %37, %35 ]
  %11 = phi i64* [ %0, %7 ], [ %12, %35 ]
  %12 = getelementptr inbounds i64, i64* %0, i64 %10, !dbg !5904
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !5904
  %13 = load i64, i64* %12, align 8, !dbg !5909, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5886, metadata !2015) #10, !dbg !5897
  %14 = load i64, i64* %0, align 8, !dbg !5910, !tbaa !2276
  %15 = icmp slt i64 %13, %14, !dbg !5911
  br i1 %15, label %16, label %23, !dbg !5912

; <label>:16:                                     ; preds = %9
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !5904
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5892, metadata !2015) #10, !dbg !5913
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !5904
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !5914
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !5916, metadata !2015) #10, !dbg !5926
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5924, metadata !2015) #10, !dbg !5928
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5916, metadata !2015) #10, !dbg !5926
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5924, metadata !2015) #10, !dbg !5928
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5925, metadata !2015) #10, !dbg !5929
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !5930, metadata !2015) #10, !dbg !5936
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5934, metadata !2015) #10, !dbg !5938
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5930, metadata !2015) #10, !dbg !5936
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5934, metadata !2015) #10, !dbg !5938
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5935, metadata !2015) #10, !dbg !5939
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !5940, metadata !2015) #10, !dbg !5949
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5946, metadata !2015) #10, !dbg !5951
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5948, metadata !2015) #10, !dbg !5952
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !5953, metadata !2015) #10, !dbg !5961
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5958, metadata !2015) #10, !dbg !5963
  %17 = shl nuw i64 %10, 3, !dbg !5964
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !5960, metadata !2015) #10, !dbg !5965
  %18 = ashr exact i64 %17, 3, !dbg !5964
  %19 = getelementptr inbounds i64, i64* %11, i64 2, !dbg !5966
  %20 = sub nsw i64 0, %18, !dbg !5967
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = bitcast i64* %21 to i8*, !dbg !5968
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %22, i8* nonnull %8, i64 %17, i32 8, i1 false) #10, !dbg !5968
  br label %35, !dbg !5968

; <label>:23:                                     ; preds = %9
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015) #10, !dbg !5977
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5975, metadata !2015) #10, !dbg !5979
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015) #10, !dbg !5980
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5609, metadata !2015) #10, !dbg !5981
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5975, metadata !2015) #10, !dbg !5979
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015) #10, !dbg !5980
  %24 = load i64, i64* %11, align 8, !dbg !5983, !tbaa !2276
  %25 = icmp slt i64 %13, %24, !dbg !5984
  br i1 %25, label %26, label %35, !dbg !5985

; <label>:26:                                     ; preds = %23
  br label %27, !dbg !5986

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i64 [ %32, %27 ], [ %24, %26 ]
  %29 = phi i64* [ %31, %27 ], [ %11, %26 ]
  %30 = phi i64* [ %29, %27 ], [ %12, %26 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015) #10, !dbg !5980
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015) #10, !dbg !5977
  store i64 %28, i64* %30, align 8, !dbg !5986, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015) #10, !dbg !5980
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5609, metadata !2015) #10, !dbg !5988
  %31 = getelementptr inbounds i64, i64* %29, i64 -1, !dbg !5990
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5975, metadata !2015) #10, !dbg !5979
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015) #10, !dbg !5980
  %32 = load i64, i64* %31, align 8, !dbg !5983, !tbaa !2276
  %33 = icmp slt i64 %13, %32, !dbg !5984
  br i1 %33, label %27, label %34, !dbg !5985, !llvm.loop !5991

; <label>:34:                                     ; preds = %27
  br label %35

; <label>:35:                                     ; preds = %34, %23, %16
  %36 = phi i64* [ %12, %23 ], [ %0, %16 ], [ %29, %34 ]
  store i64 %13, i64* %36, align 8, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !5904
  %37 = add nuw nsw i64 %10, 1
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5889, metadata !2015) #10, !dbg !5899
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !5904
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !5905
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !5907
  %38 = icmp eq i64 %37, 16, !dbg !5994
  br i1 %38, label %39, label %9, !dbg !5908, !llvm.loop !5995

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds i64, i64* %0, i64 16, !dbg !5998
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5872, metadata !2015), !dbg !5874
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !5999
  tail call void @llvm.dbg.value(metadata i64* %40, i64 0, metadata !6001, metadata !2015), !dbg !6007
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !6001, metadata !2015), !dbg !6007
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6004, metadata !2015), !dbg !6009
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6005, metadata !2015), !dbg !6010
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015), !dbg !6011
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015), !dbg !6014
  %41 = icmp eq i64* %40, %1, !dbg !6015
  br i1 %41, label %134, label %42, !dbg !6016

; <label>:42:                                     ; preds = %39
  %43 = getelementptr i64, i64* %1, i64 -17, !dbg !6017
  %44 = ptrtoint i64* %43 to i64, !dbg !6017
  %45 = sub i64 %44, %3, !dbg !6017
  %46 = lshr i64 %45, 3, !dbg !6017
  %47 = and i64 %46, 1, !dbg !6017
  %48 = icmp eq i64 %47, 0, !dbg !6017
  br i1 %48, label %49, label %67, !dbg !6017

; <label>:49:                                     ; preds = %42
  br label %50, !dbg !6017

; <label>:50:                                     ; preds = %49
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015), !dbg !6019
  %51 = load i64, i64* %40, align 8, !dbg !6017, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5975, metadata !2015), !dbg !6020
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5609, metadata !2015), !dbg !6022
  %52 = getelementptr inbounds i64, i64* %0, i64 15, !dbg !6024
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5975, metadata !2015), !dbg !6020
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  %53 = load i64, i64* %52, align 8, !dbg !6026, !tbaa !2276
  %54 = icmp slt i64 %51, %53, !dbg !6027
  br i1 %54, label %55, label %64, !dbg !6028

; <label>:55:                                     ; preds = %50
  br label %56, !dbg !6029

; <label>:56:                                     ; preds = %56, %55
  %57 = phi i64 [ %61, %56 ], [ %53, %55 ]
  %58 = phi i64* [ %60, %56 ], [ %52, %55 ]
  %59 = phi i64* [ %58, %56 ], [ %40, %55 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015), !dbg !6019
  store i64 %57, i64* %59, align 8, !dbg !6029, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5609, metadata !2015), !dbg !6030
  %60 = getelementptr inbounds i64, i64* %58, i64 -1, !dbg !6024
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5975, metadata !2015), !dbg !6020
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  %61 = load i64, i64* %60, align 8, !dbg !6026, !tbaa !2276
  %62 = icmp slt i64 %51, %61, !dbg !6027
  br i1 %62, label %56, label %63, !dbg !6028, !llvm.loop !5991

; <label>:63:                                     ; preds = %56
  br label %64, !dbg !6031

; <label>:64:                                     ; preds = %63, %50
  %65 = phi i64* [ %40, %50 ], [ %58, %63 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015), !dbg !6019
  store i64 %51, i64* %65, align 8, !dbg !6031, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6005, metadata !2015), !dbg !6010
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5828, metadata !2015), !dbg !6032
  %66 = getelementptr inbounds i64, i64* %0, i64 17, !dbg !6034
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6004, metadata !2015), !dbg !6009
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6005, metadata !2015), !dbg !6010
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015), !dbg !6011
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015), !dbg !6014
  br label %67, !dbg !6016

; <label>:67:                                     ; preds = %64, %42
  %68 = phi i64* [ %40, %42 ], [ %66, %64 ]
  %69 = icmp eq i64 %46, 0, !dbg !6017
  br i1 %69, label %132, label %70, !dbg !6017

; <label>:70:                                     ; preds = %67
  br label %71, !dbg !6017

; <label>:71:                                     ; preds = %144, %70
  %72 = phi i64* [ %68, %70 ], [ %146, %144 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015), !dbg !6019
  %73 = load i64, i64* %72, align 8, !dbg !6017, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !5975, metadata !2015), !dbg !6020
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5609, metadata !2015), !dbg !6022
  %74 = getelementptr inbounds i64, i64* %72, i64 -1, !dbg !6024
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !5975, metadata !2015), !dbg !6020
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  %75 = load i64, i64* %74, align 8, !dbg !6026, !tbaa !2276
  %76 = icmp slt i64 %73, %75, !dbg !6027
  br i1 %76, label %77, label %86, !dbg !6028

; <label>:77:                                     ; preds = %71
  br label %78, !dbg !6029

; <label>:78:                                     ; preds = %77, %78
  %79 = phi i64 [ %83, %78 ], [ %75, %77 ]
  %80 = phi i64* [ %82, %78 ], [ %74, %77 ]
  %81 = phi i64* [ %80, %78 ], [ %72, %77 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015), !dbg !6019
  store i64 %79, i64* %81, align 8, !dbg !6029, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5609, metadata !2015), !dbg !6030
  %82 = getelementptr inbounds i64, i64* %80, i64 -1, !dbg !6024
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !5975, metadata !2015), !dbg !6020
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  %83 = load i64, i64* %82, align 8, !dbg !6026, !tbaa !2276
  %84 = icmp slt i64 %73, %83, !dbg !6027
  br i1 %84, label %78, label %85, !dbg !6028, !llvm.loop !5991

; <label>:85:                                     ; preds = %78
  br label %86, !dbg !6031

; <label>:86:                                     ; preds = %85, %71
  %87 = phi i64* [ %72, %71 ], [ %80, %85 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015), !dbg !6019
  store i64 %73, i64* %87, align 8, !dbg !6031, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6005, metadata !2015), !dbg !6010
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5828, metadata !2015), !dbg !6032
  %88 = getelementptr inbounds i64, i64* %72, i64 1, !dbg !6034
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6004, metadata !2015), !dbg !6009
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6005, metadata !2015), !dbg !6010
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015), !dbg !6011
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015), !dbg !6014
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015), !dbg !6019
  %89 = load i64, i64* %88, align 8, !dbg !6017, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !5975, metadata !2015), !dbg !6020
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5609, metadata !2015), !dbg !6022
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !5975, metadata !2015), !dbg !6020
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  %90 = load i64, i64* %72, align 8, !dbg !6026, !tbaa !2276
  %91 = icmp slt i64 %89, %90, !dbg !6027
  br i1 %91, label %135, label %144, !dbg !6028

; <label>:92:                                     ; preds = %2
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5886, metadata !2015) #10, !dbg !6035
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5889, metadata !2015) #10, !dbg !6037
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3625, metadata !2015) #10, !dbg !6038
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3631, metadata !2015) #10, !dbg !6040
  %93 = icmp eq i64* %0, %1, !dbg !6041
  br i1 %93, label %134, label %94, !dbg !6042

; <label>:94:                                     ; preds = %92
  %95 = getelementptr inbounds i64, i64* %0, i64 1
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5889, metadata !2015) #10, !dbg !6037
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !6043
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !6044
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !6046
  %96 = icmp eq i64* %95, %1, !dbg !6047
  br i1 %96, label %134, label %97, !dbg !6048

; <label>:97:                                     ; preds = %94
  %98 = bitcast i64* %0 to i8*
  br label %99, !dbg !6048

; <label>:99:                                     ; preds = %127, %97
  %100 = phi i64* [ %95, %97 ], [ %129, %127 ]
  %101 = phi i64* [ %0, %97 ], [ %100, %127 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !6043
  %102 = load i64, i64* %100, align 8, !dbg !6049, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5886, metadata !2015) #10, !dbg !6035
  %103 = load i64, i64* %0, align 8, !dbg !6050, !tbaa !2276
  %104 = icmp slt i64 %102, %103, !dbg !6051
  br i1 %104, label %105, label %115, !dbg !6052

; <label>:105:                                    ; preds = %99
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !6043
  tail call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !5892, metadata !2015) #10, !dbg !6053
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !6043
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015) #10, !dbg !6054
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !5916, metadata !2015) #10, !dbg !6056
  tail call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !5924, metadata !2015) #10, !dbg !6058
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5916, metadata !2015) #10, !dbg !6056
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5924, metadata !2015) #10, !dbg !6058
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5925, metadata !2015) #10, !dbg !6059
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !5930, metadata !2015) #10, !dbg !6060
  tail call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !5934, metadata !2015) #10, !dbg !6062
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5930, metadata !2015) #10, !dbg !6060
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5934, metadata !2015) #10, !dbg !6062
  tail call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* undef, metadata !5935, metadata !2015) #10, !dbg !6063
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !5940, metadata !2015) #10, !dbg !6064
  tail call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !5946, metadata !2015) #10, !dbg !6066
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5948, metadata !2015) #10, !dbg !6067
  tail call void @llvm.dbg.value(metadata i64* %0, i64 0, metadata !5953, metadata !2015) #10, !dbg !6068
  tail call void @llvm.dbg.value(metadata i64* %100, i64 0, metadata !5958, metadata !2015) #10, !dbg !6070
  %106 = ptrtoint i64* %100 to i64, !dbg !6071
  %107 = sub i64 %106, %3, !dbg !6071
  %108 = ashr exact i64 %107, 3, !dbg !6071
  tail call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !5960, metadata !2015) #10, !dbg !6072
  %109 = icmp eq i64 %108, 0, !dbg !6073
  br i1 %109, label %127, label %110, !dbg !6074

; <label>:110:                                    ; preds = %105
  %111 = getelementptr inbounds i64, i64* %101, i64 2, !dbg !6075
  %112 = sub nsw i64 0, %108, !dbg !6076
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = bitcast i64* %113 to i8*, !dbg !6077
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %114, i8* nonnull %98, i64 %107, i32 8, i1 false) #10, !dbg !6077
  br label %127, !dbg !6077

; <label>:115:                                    ; preds = %99
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015) #10, !dbg !6078
  tail call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !5975, metadata !2015) #10, !dbg !6080
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015) #10, !dbg !6081
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5609, metadata !2015) #10, !dbg !6082
  tail call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !5975, metadata !2015) #10, !dbg !6080
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015) #10, !dbg !6081
  %116 = load i64, i64* %101, align 8, !dbg !6084, !tbaa !2276
  %117 = icmp slt i64 %102, %116, !dbg !6085
  br i1 %117, label %118, label %127, !dbg !6086

; <label>:118:                                    ; preds = %115
  br label %119, !dbg !6087

; <label>:119:                                    ; preds = %118, %119
  %120 = phi i64 [ %124, %119 ], [ %116, %118 ]
  %121 = phi i64* [ %123, %119 ], [ %101, %118 ]
  %122 = phi i64* [ %121, %119 ], [ %100, %118 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015) #10, !dbg !6081
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015) #10, !dbg !6078
  store i64 %120, i64* %122, align 8, !dbg !6087, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015) #10, !dbg !6081
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5609, metadata !2015) #10, !dbg !6088
  %123 = getelementptr inbounds i64, i64* %121, i64 -1, !dbg !6090
  tail call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !5975, metadata !2015) #10, !dbg !6080
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015) #10, !dbg !6081
  %124 = load i64, i64* %123, align 8, !dbg !6084, !tbaa !2276
  %125 = icmp slt i64 %102, %124, !dbg !6085
  br i1 %125, label %119, label %126, !dbg !6086, !llvm.loop !5991

; <label>:126:                                    ; preds = %119
  br label %127

; <label>:127:                                    ; preds = %126, %115, %110, %105
  %128 = phi i64* [ %100, %115 ], [ %0, %105 ], [ %0, %110 ], [ %121, %126 ]
  store i64 %102, i64* %128, align 8, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !6043
  %129 = getelementptr inbounds i64, i64* %100, i64 1
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5889, metadata !2015) #10, !dbg !6037
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5890, metadata !2015) #10, !dbg !6043
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015) #10, !dbg !6044
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015) #10, !dbg !6046
  %130 = icmp eq i64* %129, %1, !dbg !6047
  br i1 %130, label %133, label %99, !dbg !6048, !llvm.loop !5995

; <label>:131:                                    ; preds = %144
  br label %132, !dbg !6091

; <label>:132:                                    ; preds = %67, %131
  br label %134, !dbg !6091

; <label>:133:                                    ; preds = %127
  br label %134, !dbg !6091

; <label>:134:                                    ; preds = %133, %132, %94, %92, %39
  ret void, !dbg !6091

; <label>:135:                                    ; preds = %86
  br label %136, !dbg !6029

; <label>:136:                                    ; preds = %136, %135
  %137 = phi i64 [ %141, %136 ], [ %90, %135 ]
  %138 = phi i64* [ %140, %136 ], [ %72, %135 ]
  %139 = phi i64* [ %138, %136 ], [ %88, %135 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015), !dbg !6019
  store i64 %137, i64* %139, align 8, !dbg !6029, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5609, metadata !2015), !dbg !6030
  %140 = getelementptr inbounds i64, i64* %138, i64 -1, !dbg !6024
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !5975, metadata !2015), !dbg !6020
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5976, metadata !2015), !dbg !6021
  %141 = load i64, i64* %140, align 8, !dbg !6026, !tbaa !2276
  %142 = icmp slt i64 %89, %141, !dbg !6027
  br i1 %142, label %136, label %143, !dbg !6028, !llvm.loop !5991

; <label>:143:                                    ; preds = %136
  br label %144, !dbg !6031

; <label>:144:                                    ; preds = %143, %86
  %145 = phi i64* [ %88, %86 ], [ %138, %143 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5970, metadata !2015), !dbg !6019
  store i64 %89, i64* %145, align 8, !dbg !6031, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6005, metadata !2015), !dbg !6010
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5828, metadata !2015), !dbg !6032
  %146 = getelementptr inbounds i64, i64* %72, i64 2, !dbg !6034
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6004, metadata !2015), !dbg !6009
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6005, metadata !2015), !dbg !6010
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3668, metadata !2015), !dbg !6011
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3671, metadata !2015), !dbg !6014
  %147 = icmp eq i64* %146, %1, !dbg !6015
  br i1 %147, label %131, label %71, !dbg !6016, !llvm.loop !6092
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_(i64*, i64*) local_unnamed_addr #1 comdat !dbg !6095 {
  %3 = ptrtoint i64* %0 to i64
  %4 = ptrtoint i64* %1 to i64
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6097, metadata !2015), !dbg !6106
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6098, metadata !2015), !dbg !6107
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015), !dbg !6108
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015), !dbg !6111
  %5 = sub i64 %4, %3, !dbg !6112
  %6 = ashr exact i64 %5, 3, !dbg !6112
  %7 = icmp slt i64 %5, 16, !dbg !6113
  br i1 %7, label %112, label %8, !dbg !6114

; <label>:8:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6097, metadata !2015), !dbg !6106
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6098, metadata !2015), !dbg !6107
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3845, metadata !2015), !dbg !6115
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3850, metadata !2015), !dbg !6117
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !6099, metadata !2015), !dbg !6118
  %9 = add nsw i64 %6, -2, !dbg !6119
  %10 = sdiv i64 %9, 2, !dbg !6120
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !6102, metadata !2015), !dbg !6121
  %11 = add nsw i64 %6, -1
  %12 = sdiv i64 %11, 2
  %13 = and i64 %6, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15, !dbg !6122

; <label>:15:                                     ; preds = %8
  br label %69, !dbg !6123

; <label>:16:                                     ; preds = %8
  %17 = shl nsw i64 %10, 1
  %18 = or i64 %17, 1
  %19 = getelementptr inbounds i64, i64* %0, i64 %18
  %20 = getelementptr inbounds i64, i64* %0, i64 %10
  br label %21, !dbg !6123

; <label>:21:                                     ; preds = %16, %64
  %22 = phi i64 [ %68, %64 ], [ %10, %16 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6097, metadata !2015), !dbg !6106
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6125
  %23 = getelementptr inbounds i64, i64* %0, i64 %22, !dbg !6123
  %24 = load i64, i64* %23, align 8, !dbg !6126, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !6103, metadata !2015), !dbg !6127
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !6102, metadata !2015), !dbg !6121
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5625, metadata !2015), !dbg !6128
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !5633, metadata !2015), !dbg !6130
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5634, metadata !2015), !dbg !6131
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5625, metadata !2015), !dbg !6128
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5635, metadata !2015), !dbg !6132
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5625, metadata !2015), !dbg !6128
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5636, metadata !2015), !dbg !6133
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5636, metadata !2015), !dbg !6133
  %25 = icmp sgt i64 %12, %22, !dbg !6134
  br i1 %25, label %26, label %43, !dbg !6135

; <label>:26:                                     ; preds = %21
  br label %27, !dbg !6136

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i64 [ %37, %27 ], [ %22, %26 ]
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5636, metadata !2015), !dbg !6133
  %29 = shl i64 %28, 1, !dbg !6136
  %30 = add i64 %29, 2, !dbg !6136
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !5636, metadata !2015), !dbg !6133
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015), !dbg !6137
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6138
  %31 = getelementptr inbounds i64, i64* %0, i64 %30, !dbg !6140
  %32 = load i64, i64* %31, align 8, !dbg !6141, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !5636, metadata !2015), !dbg !6133
  %33 = or i64 %29, 1, !dbg !6142
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015), !dbg !6137
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6143
  %34 = getelementptr inbounds i64, i64* %0, i64 %33, !dbg !6145
  %35 = load i64, i64* %34, align 8, !dbg !6146, !tbaa !2276
  %36 = icmp slt i64 %32, %35, !dbg !6147
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !5636, metadata !2015), !dbg !6133
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !5636, metadata !2015), !dbg !6133
  %37 = select i1 %36, i64 %33, i64 %30, !dbg !6148
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015), !dbg !6137
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6149
  %38 = getelementptr inbounds i64, i64* %0, i64 %37, !dbg !6151
  %39 = load i64, i64* %38, align 8, !dbg !6152, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015), !dbg !6137
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6153
  %40 = getelementptr inbounds i64, i64* %0, i64 %28, !dbg !6155
  store i64 %39, i64* %40, align 8, !dbg !6156, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !5636, metadata !2015), !dbg !6133
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !5625, metadata !2015), !dbg !6128
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !5636, metadata !2015), !dbg !6133
  %41 = icmp slt i64 %37, %12, !dbg !6134
  br i1 %41, label %27, label %42, !dbg !6135, !llvm.loop !5670

; <label>:42:                                     ; preds = %27
  br label %43, !dbg !6157

; <label>:43:                                     ; preds = %42, %21
  %44 = phi i64 [ %22, %21 ], [ %37, %42 ]
  %45 = icmp eq i64 %44, %10, !dbg !6157
  br i1 %45, label %46, label %48, !dbg !6158

; <label>:46:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015), !dbg !6137
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6159
  %47 = load i64, i64* %19, align 8, !dbg !6161, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015), !dbg !6137
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6162
  store i64 %47, i64* %20, align 8, !dbg !6164, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !5625, metadata !2015), !dbg !6128
  br label %48, !dbg !6165

; <label>:48:                                     ; preds = %46, %43
  %49 = phi i64 [ %18, %46 ], [ %44, %43 ]
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !5625, metadata !2015), !dbg !6128
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !5692, metadata !2015), !dbg !6166
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5696, metadata !2015), !dbg !6168
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5697, metadata !2015), !dbg !6169
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !5692, metadata !2015), !dbg !6166
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !5692, metadata !2015), !dbg !6166
  %50 = icmp sgt i64 %49, %22, !dbg !6170
  br i1 %50, label %51, label %64, !dbg !6171

; <label>:51:                                     ; preds = %48
  br label %52

; <label>:52:                                     ; preds = %51, %59
  %53 = phi i64 [ %55, %59 ], [ %49, %51 ]
  %54 = add nsw i64 %53, -1
  %55 = sdiv i64 %54, 2
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015), !dbg !6172
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6173
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !5692, metadata !2015), !dbg !6166
  %56 = getelementptr inbounds i64, i64* %0, i64 %55, !dbg !6175
  %57 = load i64, i64* %56, align 8, !dbg !6176, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5697, metadata !2015), !dbg !6169
  %58 = icmp slt i64 %57, %24, !dbg !6177
  br i1 %58, label %59, label %62, !dbg !6178

; <label>:59:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015), !dbg !6172
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6179
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015), !dbg !6172
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6181
  %60 = getelementptr inbounds i64, i64* %0, i64 %53, !dbg !6183
  store i64 %57, i64* %60, align 8, !dbg !6184, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !5698, metadata !2015), !dbg !6185
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !5692, metadata !2015), !dbg !6166
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !5692, metadata !2015), !dbg !6166
  %61 = icmp sgt i64 %55, %22, !dbg !6170
  br i1 %61, label %52, label %62, !dbg !6171, !llvm.loop !5720

; <label>:62:                                     ; preds = %59, %52
  %63 = phi i64 [ %55, %59 ], [ %53, %52 ]
  br label %64, !dbg !6186

; <label>:64:                                     ; preds = %62, %48
  %65 = phi i64 [ %49, %48 ], [ %63, %62 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015), !dbg !6172
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6188
  %66 = getelementptr inbounds i64, i64* %0, i64 %65, !dbg !6186
  store i64 %24, i64* %66, align 8, !dbg !6189, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !6102, metadata !2015), !dbg !6121
  %67 = icmp eq i64 %22, 0, !dbg !6190
  %68 = add nsw i64 %22, -1, !dbg !6192
  tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !6102, metadata !2015), !dbg !6121
  br i1 %67, label %110, label %21, !dbg !6193

; <label>:69:                                     ; preds = %15, %105
  %70 = phi i64 [ %109, %105 ], [ %10, %15 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !6097, metadata !2015), !dbg !6106
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6125
  %71 = getelementptr inbounds i64, i64* %0, i64 %70, !dbg !6123
  %72 = load i64, i64* %71, align 8, !dbg !6126, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !6103, metadata !2015), !dbg !6127
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !6102, metadata !2015), !dbg !6121
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5625, metadata !2015), !dbg !6128
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !5633, metadata !2015), !dbg !6130
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !5634, metadata !2015), !dbg !6131
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5625, metadata !2015), !dbg !6128
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5635, metadata !2015), !dbg !6132
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5625, metadata !2015), !dbg !6128
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5636, metadata !2015), !dbg !6133
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5636, metadata !2015), !dbg !6133
  %73 = icmp sgt i64 %12, %70, !dbg !6134
  br i1 %73, label %74, label %105, !dbg !6135

; <label>:74:                                     ; preds = %69
  br label %75, !dbg !6136

; <label>:75:                                     ; preds = %74, %75
  %76 = phi i64 [ %85, %75 ], [ %70, %74 ]
  tail call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !5636, metadata !2015), !dbg !6133
  %77 = shl i64 %76, 1, !dbg !6136
  %78 = add i64 %77, 2, !dbg !6136
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !5636, metadata !2015), !dbg !6133
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015), !dbg !6137
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6138
  %79 = getelementptr inbounds i64, i64* %0, i64 %78, !dbg !6140
  %80 = load i64, i64* %79, align 8, !dbg !6141, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !5636, metadata !2015), !dbg !6133
  %81 = or i64 %77, 1, !dbg !6142
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015), !dbg !6137
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6143
  %82 = getelementptr inbounds i64, i64* %0, i64 %81, !dbg !6145
  %83 = load i64, i64* %82, align 8, !dbg !6146, !tbaa !2276
  %84 = icmp slt i64 %80, %83, !dbg !6147
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !5636, metadata !2015), !dbg !6133
  tail call void @llvm.dbg.value(metadata i64 %81, i64 0, metadata !5636, metadata !2015), !dbg !6133
  %85 = select i1 %84, i64 %81, i64 %78, !dbg !6148
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015), !dbg !6137
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6149
  %86 = getelementptr inbounds i64, i64* %0, i64 %85, !dbg !6151
  %87 = load i64, i64* %86, align 8, !dbg !6152, !tbaa !2276
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5632, metadata !2015), !dbg !6137
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6153
  %88 = getelementptr inbounds i64, i64* %0, i64 %76, !dbg !6155
  store i64 %87, i64* %88, align 8, !dbg !6156, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !5636, metadata !2015), !dbg !6133
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !5625, metadata !2015), !dbg !6128
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !5636, metadata !2015), !dbg !6133
  %89 = icmp slt i64 %85, %12, !dbg !6134
  br i1 %89, label %75, label %90, !dbg !6135, !llvm.loop !5670

; <label>:90:                                     ; preds = %75
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !5625, metadata !2015), !dbg !6128
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !5692, metadata !2015), !dbg !6166
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5696, metadata !2015), !dbg !6168
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !5697, metadata !2015), !dbg !6169
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !5692, metadata !2015), !dbg !6166
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !5692, metadata !2015), !dbg !6166
  %91 = icmp sgt i64 %85, %70, !dbg !6170
  br i1 %91, label %92, label %105, !dbg !6171

; <label>:92:                                     ; preds = %90
  br label %93

; <label>:93:                                     ; preds = %92, %100
  %94 = phi i64 [ %96, %100 ], [ %85, %92 ]
  %95 = add nsw i64 %94, -1
  %96 = sdiv i64 %95, 2
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015), !dbg !6172
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6173
  tail call void @llvm.dbg.value(metadata i64 %94, i64 0, metadata !5692, metadata !2015), !dbg !6166
  %97 = getelementptr inbounds i64, i64* %0, i64 %96, !dbg !6175
  %98 = load i64, i64* %97, align 8, !dbg !6176, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !5697, metadata !2015), !dbg !6169
  %99 = icmp slt i64 %98, %72, !dbg !6177
  br i1 %99, label %100, label %103, !dbg !6178

; <label>:100:                                    ; preds = %93
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015), !dbg !6172
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6179
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015), !dbg !6172
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6181
  %101 = getelementptr inbounds i64, i64* %0, i64 %94, !dbg !6183
  store i64 %98, i64* %101, align 8, !dbg !6184, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5698, metadata !2015), !dbg !6185
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5692, metadata !2015), !dbg !6166
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5692, metadata !2015), !dbg !6166
  %102 = icmp sgt i64 %96, %70, !dbg !6170
  br i1 %102, label %93, label %103, !dbg !6171, !llvm.loop !5720

; <label>:103:                                    ; preds = %100, %93
  %104 = phi i64 [ %96, %100 ], [ %94, %93 ]
  br label %105, !dbg !6186

; <label>:105:                                    ; preds = %103, %69, %90
  %106 = phi i64 [ %85, %90 ], [ %70, %69 ], [ %104, %103 ]
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !5695, metadata !2015), !dbg !6172
  tail call void @llvm.dbg.value(metadata %"class.__gnu_cxx::__normal_iterator"* undef, i64 0, metadata !3660, metadata !2015), !dbg !6188
  %107 = getelementptr inbounds i64, i64* %0, i64 %106, !dbg !6186
  store i64 %72, i64* %107, align 8, !dbg !6189, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !6102, metadata !2015), !dbg !6121
  %108 = icmp eq i64 %70, 0, !dbg !6190
  %109 = add nsw i64 %70, -1, !dbg !6192
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !6102, metadata !2015), !dbg !6121
  br i1 %108, label %111, label %69, !dbg !6193

; <label>:110:                                    ; preds = %64
  br label %112, !dbg !6194

; <label>:111:                                    ; preds = %105
  br label %112, !dbg !6194

; <label>:112:                                    ; preds = %111, %110, %2
  ret void, !dbg !6194
}

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #2

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_wordsort.cc() #1 section ".text.startup" !dbg !6195 {
  %1 = tail call i32 @_ZN9benchmark8internal17InitializeStreamsEv() #10, !dbg !6197
  %2 = tail call i8* @_Znwm(i64 152) #11, !dbg !6200
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6203, metadata !2015) #10, !dbg !6216
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 0, metadata !6213, metadata !2015) #10, !dbg !6218
  tail call void @llvm.dbg.value(metadata void (%"class.benchmark::State"*)* @_Z9BM_bubbleRN9benchmark5StateE, i64 0, metadata !6214, metadata !2015) #10, !dbg !6219
  %3 = bitcast i8* %2 to %"class.benchmark::internal::Benchmark"*, !dbg !6220
  tail call void @_ZN9benchmark8internal9BenchmarkC2EPKc(%"class.benchmark::internal::Benchmark"* nonnull %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #10, !dbg !6221
  %4 = bitcast i8* %2 to i32 (...)***, !dbg !6220
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !dbg !6220, !tbaa !6222
  %5 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !6224
  %6 = bitcast i8* %5 to void (%"class.benchmark::State"*)**, !dbg !6224
  store void (%"class.benchmark::State"*)* @_Z9BM_bubbleRN9benchmark5StateE, void (%"class.benchmark::State"*)** %6, align 8, !dbg !6224, !tbaa !6225
  %7 = tail call %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(%"class.benchmark::internal::Benchmark"* nonnull %3) #10, !dbg !6200
  %8 = tail call %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal9Benchmark15RangeMultiplierEi(%"class.benchmark::internal::Benchmark"* %7, i32 2) #10, !dbg !6227
  %9 = tail call %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal9Benchmark5RangeEii(%"class.benchmark::internal::Benchmark"* %8, i32 2, i32 64) #10, !dbg !6228
  store %"class.benchmark::internal::Benchmark"* %9, %"class.benchmark::internal::Benchmark"** @_ZL21_benchmark_2BM_bubble, align 8, !dbg !6228, !tbaa !2418
  ret void
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #9

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2003, !2004}
!llvm.ident = !{!2005}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "_benchmark_2BM_bubble", linkageName: "_ZL21_benchmark_2BM_bubble", scope: !2, file: !3, line: 189, type: !2001, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 5.0.0 (https://github.com/llvm-mirror/clang.git 007c596e637ba3a933a07b5ee277201612c7fb61) (http://llvm.org/git/llvm.git e77d07916ef01861b911ff0399d2c4e9120e6499)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !66, globals: !835, imports: !839)
!3 = !DIFile(filename: "wordsort.cc", directory: "/u/v/a/van-sandt/wordsort/8")
!4 = !{!5, !12, !40, !49, !55, !62}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Rb_tree_color", scope: !7, file: !6, line: 89, size: 32, elements: !9, identifier: "_ZTSSt14_Rb_tree_color")
!6 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stl_tree.h", directory: "/u/v/a/van-sandt/wordsort/8")
!7 = !DINamespace(name: "std", scope: null, file: !8, line: 184)
!8 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/x86_64-linux-gnu/c++/4.8/bits/c++config.h", directory: "/u/v/a/van-sandt/wordsort/8")
!9 = !{!10, !11}
!10 = !DIEnumerator(name: "_S_red", value: 0)
!11 = !DIEnumerator(name: "_S_black", value: 1)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Flags", scope: !14, file: !13, line: 265, size: 32, elements: !35, identifier: "_ZTSN9benchmark7Counter5FlagsE")
!13 = !DIFile(filename: "/u/v/a/van-sandt/include/benchmark/benchmark_api.h", directory: "/u/v/a/van-sandt/wordsort/8")
!14 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Counter", scope: !15, file: !13, line: 262, size: 128, elements: !16, identifier: "_ZTSN9benchmark7CounterE")
!15 = !DINamespace(name: "benchmark", scope: null, file: !13, line: 172)
!16 = !{!17, !19, !20, !24, !31}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !14, file: !13, line: 277, baseType: !18, size: 64, flags: DIFlagPublic)
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !13, line: 278, baseType: !12, size: 32, offset: 64, flags: DIFlagPublic)
!20 = !DISubprogram(name: "Counter", scope: !14, file: !13, line: 281, type: !21, isLocal: false, isDefinition: false, scopeLine: 281, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !18, !12}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!24 = !DISubprogram(name: "operator const double &", linkageName: "_ZNK9benchmark7CountercvRKdEv", scope: !14, file: !13, line: 283, type: !25, isLocal: false, isDefinition: false, scopeLine: 283, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !29}
!27 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!31 = !DISubprogram(name: "operator double &", linkageName: "_ZN9benchmark7CountercvRdEv", scope: !14, file: !13, line: 284, type: !32, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !23}
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !18, size: 64)
!35 = !{!36, !37, !38, !39}
!36 = !DIEnumerator(name: "kDefaults", value: 0)
!37 = !DIEnumerator(name: "kIsRate", value: 1)
!38 = !DIEnumerator(name: "kAvgThreads", value: 2)
!39 = !DIEnumerator(name: "kAvgThreadsRate", value: 3)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !42, file: !41, line: 113, size: 32, elements: !47, identifier: "_ZTSNSt10__are_sameIllEUt_E")
!41 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/cpp_type_traits.h", directory: "/u/v/a/van-sandt/wordsort/8")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__are_same<long, long>", scope: !7, file: !41, line: 111, size: 8, elements: !43, templateParams: !44, identifier: "_ZTSSt10__are_sameIllE")
!43 = !{}
!44 = !{!45, !45}
!45 = !DITemplateTypeParameter(type: !46)
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !{!48}
!48 = !DIEnumerator(name: "__value", value: 1)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_denorm_style", scope: !7, file: !50, line: 171, size: 32, elements: !51, identifier: "_ZTSSt18float_denorm_style")
!50 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/limits", directory: "/u/v/a/van-sandt/wordsort/8")
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "denorm_indeterminate", value: -1)
!53 = !DIEnumerator(name: "denorm_absent", value: 0)
!54 = !DIEnumerator(name: "denorm_present", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_round_style", scope: !7, file: !50, line: 156, size: 32, elements: !56, identifier: "_ZTSSt17float_round_style")
!56 = !{!57, !58, !59, !60, !61}
!57 = !DIEnumerator(name: "round_indeterminate", value: -1)
!58 = !DIEnumerator(name: "round_toward_zero", value: 0)
!59 = !DIEnumerator(name: "round_to_nearest", value: 1)
!60 = !DIEnumerator(name: "round_toward_infinity", value: 2)
!61 = !DIEnumerator(name: "round_toward_neg_infinity", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !63, line: 2201, size: 32, elements: !64)
!63 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stl_algo.h", directory: "/u/v/a/van-sandt/wordsort/8")
!64 = !{!65}
!65 = !DIEnumerator(name: "_S_threshold", value: 16)
!66 = !{!67, !70, !135, !344, !345, !119, !346, !178, !401, !657, !708, !467, !385, !816}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !69, line: 197, baseType: !46)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/u/v/a/van-sandt/wordsort/8")
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !73, file: !72, line: 75, baseType: !333)
!72 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stl_vector.h", directory: "/u/v/a/van-sandt/wordsort/8")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<long, std::allocator<long> >", scope: !7, file: !72, line: 72, size: 192, elements: !74, templateParams: !332, identifier: "_ZTSSt12_Vector_baseIlSaIlEE")
!74 = !{!75, !286, !291, !296, !300, !303, !308, !311, !314, !317, !321, !324, !325, !328, !331}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !73, file: !72, line: 164, baseType: !76, size: 192)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !73, file: !72, line: 79, size: 192, elements: !77, identifier: "_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE")
!77 = !{!78, !79, !267, !268, !269, !273, !278, !282}
!78 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !76, baseType: !71)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !76, file: !72, line: 82, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !73, file: !72, line: 77, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !83, file: !82, line: 130, baseType: !232)
!82 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/ext/alloc_traits.h", directory: "/u/v/a/van-sandt/wordsort/8")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<long> >", scope: !84, file: !82, line: 121, size: 8, elements: !85, templateParams: !253, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIlEEE")
!84 = !DINamespace(name: "__gnu_cxx", scope: null, file: !41, line: 68)
!85 = !{!86, !255, !256, !259, !262, !263, !264, !265, !266}
!86 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !83, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<long> >", scope: !7, file: !88, line: 85, size: 8, elements: !89, templateParams: !253, identifier: "_ZTSSt16allocator_traitsISaIlEE")
!88 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/alloc_traits.h", directory: "/u/v/a/van-sandt/wordsort/8")
!89 = !{!90, !157, !174, !179, !183, !188, !210, !227, !228, !229, !239, !244, !247, !250}
!90 = !DISubprogram(name: "_S_pointer_helper", linkageName: "_ZNSt16allocator_traitsISaIlEE17_S_pointer_helperEz", scope: !87, file: !88, line: 100, type: !91, isLocal: false, isDefinition: false, scopeLine: 100, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!91 = !DISubroutineType(types: !92)
!92 = !{!93, null}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !87, file: !88, line: 90, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !97, file: !96, line: 101, baseType: !46)
!96 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/allocator.h", directory: "/u/v/a/van-sandt/wordsort/8")
!97 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<long>", scope: !7, file: !96, line: 92, size: 8, elements: !98, templateParams: !145, identifier: "_ZTSSaIlE")
!98 = !{!99, !147, !151, !156}
!99 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !97, baseType: !100, flags: DIFlagPublic)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<long>", scope: !7, file: !101, line: 48, baseType: !102)
!101 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/x86_64-linux-gnu/c++/4.8/bits/c++allocator.h", directory: "/u/v/a/van-sandt/wordsort/8")
!102 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<long>", scope: !84, file: !103, line: 58, size: 8, elements: !104, templateParams: !145, identifier: "_ZTSN9__gnu_cxx13new_allocatorIlEE")
!103 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/ext/new_allocator.h", directory: "/u/v/a/van-sandt/wordsort/8")
!104 = !{!105, !109, !114, !115, !123, !131, !139, !142}
!105 = !DISubprogram(name: "new_allocator", scope: !102, file: !103, line: 79, type: !106, isLocal: false, isDefinition: false, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!109 = !DISubprogram(name: "new_allocator", scope: !102, file: !103, line: 81, type: !110, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !108, !112}
!112 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!114 = !DISubprogram(name: "~new_allocator", scope: !102, file: !103, line: 86, type: !106, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!115 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE7addressERl", scope: !102, file: !103, line: 89, type: !116, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !120, !121}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !102, file: !103, line: 63, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !102, file: !103, line: 65, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !46, size: 64)
!123 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE7addressERKl", scope: !102, file: !103, line: 93, type: !124, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !120, !129}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !102, file: !103, line: 64, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !102, file: !103, line: 66, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !128, size: 64)
!131 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv", scope: !102, file: !103, line: 99, type: !132, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!132 = !DISubroutineType(types: !133)
!133 = !{!118, !108, !134, !137}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !103, line: 61, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !7, file: !8, line: 186, baseType: !136)
!136 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!139 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm", scope: !102, file: !103, line: 109, type: !140, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !108, !118, !134}
!142 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv", scope: !102, file: !103, line: 113, type: !143, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!143 = !DISubroutineType(types: !144)
!144 = !{!134, !120}
!145 = !{!146}
!146 = !DITemplateTypeParameter(name: "_Tp", type: !46)
!147 = !DISubprogram(name: "allocator", scope: !97, file: !96, line: 113, type: !148, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!151 = !DISubprogram(name: "allocator", scope: !97, file: !96, line: 115, type: !152, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !150, !154}
!154 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!156 = !DISubprogram(name: "~allocator", scope: !97, file: !96, line: 121, type: !148, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!157 = !DISubprogram(name: "_S_const_pointer_helper", linkageName: "_ZNSt16allocator_traitsISaIlEE23_S_const_pointer_helperEz", scope: !87, file: !88, line: 109, type: !158, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!158 = !DISubroutineType(types: !159)
!159 = !{!160, null}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<const std::allocator_traits<std::allocator<long> >::value_type>", scope: !162, file: !161, line: 165, baseType: !127)
!161 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/ptr_traits.h", directory: "/u/v/a/van-sandt/wordsort/8")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<long *>", scope: !7, file: !161, line: 155, size: 8, elements: !163, templateParams: !172, identifier: "_ZTSSt14pointer_traitsIPlE")
!163 = !{!164}
!164 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt14pointer_traitsIPlE10pointer_toERl", scope: !162, file: !161, line: 173, type: !165, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !162, file: !161, line: 158, baseType: !119)
!168 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !170, file: !161, line: 112, baseType: !46)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__ptrtr_not_void<long, long>", scope: !7, file: !161, line: 110, size: 8, elements: !43, templateParams: !171, identifier: "_ZTSSt16__ptrtr_not_voidIllE")
!171 = !{!146, !45}
!172 = !{!173}
!173 = !DITemplateTypeParameter(name: "_Ptr", type: !119)
!174 = !DISubprogram(name: "_S_void_pointer_helper", linkageName: "_ZNSt16allocator_traitsISaIlEE22_S_void_pointer_helperEz", scope: !87, file: !88, line: 120, type: !175, isLocal: false, isDefinition: false, scopeLine: 120, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!175 = !DISubroutineType(types: !176)
!176 = !{!177, null}
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<void>", scope: !162, file: !161, line: 165, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!179 = !DISubprogram(name: "_S_const_void_pointer_helper", linkageName: "_ZNSt16allocator_traitsISaIlEE28_S_const_void_pointer_helperEz", scope: !87, file: !88, line: 131, type: !180, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!180 = !DISubroutineType(types: !181)
!181 = !{!182, null}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<const void>", scope: !162, file: !161, line: 165, baseType: !137)
!183 = !DISubprogram(name: "_S_difference_type_helper", linkageName: "_ZNSt16allocator_traitsISaIlEE25_S_difference_type_helperEz", scope: !87, file: !88, line: 142, type: !184, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!184 = !DISubroutineType(types: !185)
!185 = !{!186, null}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !162, file: !161, line: 162, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !7, file: !8, line: 187, baseType: !46)
!188 = !DISubprogram(name: "_S_size_type_helper", linkageName: "_ZNSt16allocator_traitsISaIlEE19_S_size_type_helperEz", scope: !87, file: !88, line: 153, type: !189, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!189 = !DISubroutineType(types: !190)
!190 = !{!191, null}
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !193, file: !192, line: 1531, baseType: !194)
!192 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/type_traits", directory: "/u/v/a/van-sandt/wordsort/8")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "make_unsigned<long>", scope: !7, file: !192, line: 1530, size: 8, elements: !43, templateParams: !145, identifier: "_ZTSSt13make_unsignedIlE")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !195, file: !192, line: 1505, baseType: !200)
!195 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__make_unsigned_selector<long, true, false>", scope: !7, file: !192, line: 1498, size: 8, elements: !43, templateParams: !196, identifier: "_ZTSSt24__make_unsigned_selectorIlLb1ELb0EE")
!196 = !{!146, !197, !199}
!197 = !DITemplateValueParameter(name: "_IsInt", type: !198, value: i8 1)
!198 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!199 = !DITemplateValueParameter(name: "_IsEnum", type: !198, value: i8 0)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !201, file: !192, line: 1453, baseType: !207)
!201 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__match_cv_qualifiers<long, unsigned long, false, false>", scope: !7, file: !192, line: 1448, size: 8, elements: !43, templateParams: !202, identifier: "_ZTSSt21__match_cv_qualifiersIlmLb0ELb0EE")
!202 = !{!203, !204, !205, !206}
!203 = !DITemplateTypeParameter(name: "_Qualified", type: !46)
!204 = !DITemplateTypeParameter(name: "_Unqualified", type: !136)
!205 = !DITemplateValueParameter(name: "_IsConst", type: !198, value: i8 0)
!206 = !DITemplateValueParameter(name: "_IsVol", type: !198, value: i8 0)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !208, file: !192, line: 1431, baseType: !136)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__cv_selector<unsigned long, false, false>", scope: !7, file: !192, line: 1430, size: 8, elements: !43, templateParams: !209, identifier: "_ZTSSt13__cv_selectorImLb0ELb0EE")
!209 = !{!204, !205, !206}
!210 = !DISubprogram(name: "_S_propagate_on_container_copy_assignment_helper", linkageName: "_ZNSt16allocator_traitsISaIlEE48_S_propagate_on_container_copy_assignment_helperEz", scope: !87, file: !88, line: 164, type: !211, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, null}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !7, file: !192, line: 72, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !7, file: !192, line: 57, size: 8, elements: !215, templateParams: !224, identifier: "_ZTSSt17integral_constantIbLb0EE")
!215 = !{!216, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !214, file: !192, line: 59, baseType: !217, flags: DIFlagStaticMember, extraData: i1 false)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!218 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb0EEcvbEv", scope: !214, file: !192, line: 62, type: !219, isLocal: false, isDefinition: false, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !214, file: !192, line: 60, baseType: !198)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!224 = !{!225, !226}
!225 = !DITemplateTypeParameter(name: "_Tp", type: !198)
!226 = !DITemplateValueParameter(name: "__v", type: !198, value: i8 0)
!227 = !DISubprogram(name: "_S_propagate_on_container_move_assignment_helper", linkageName: "_ZNSt16allocator_traitsISaIlEE48_S_propagate_on_container_move_assignment_helperEz", scope: !87, file: !88, line: 176, type: !211, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!228 = !DISubprogram(name: "_S_propagate_on_container_swap_helper", linkageName: "_ZNSt16allocator_traitsISaIlEE37_S_propagate_on_container_swap_helperEz", scope: !87, file: !88, line: 188, type: !211, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!229 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIlEE8allocateERS0_m", scope: !87, file: !88, line: 350, type: !230, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !235, !236}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !87, file: !88, line: 107, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pointer", scope: !87, file: !88, line: 100, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !97, file: !96, line: 97, baseType: !119)
!235 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !97, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !87, file: !88, line: 162, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_type", scope: !87, file: !88, line: 153, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !97, file: !96, line: 95, baseType: !135)
!239 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIlEE8allocateERS0_mPKv", scope: !87, file: !88, line: 365, type: !240, isLocal: false, isDefinition: false, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true)
!240 = !DISubroutineType(types: !241)
!241 = !{!232, !235, !236, !242}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", scope: !87, file: !88, line: 140, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__const_void_pointer", scope: !87, file: !88, line: 131, baseType: !182)
!244 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm", scope: !87, file: !88, line: 376, type: !245, isLocal: false, isDefinition: false, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: true)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !235, !232, !236}
!247 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_", scope: !87, file: !88, line: 415, type: !248, isLocal: false, isDefinition: false, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true)
!248 = !DISubroutineType(types: !249)
!249 = !{!236, !154}
!250 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_", scope: !87, file: !88, line: 427, type: !251, isLocal: false, isDefinition: false, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true)
!251 = !DISubroutineType(types: !252)
!252 = !{!97, !154}
!253 = !{!254}
!254 = !DITemplateTypeParameter(name: "_Alloc", type: !97)
!255 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlEE17_S_select_on_copyERKS1_", scope: !83, file: !82, line: 166, type: !251, isLocal: false, isDefinition: false, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true)
!256 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlEE10_S_on_swapERS1_S3_", scope: !83, file: !82, line: 169, type: !257, isLocal: false, isDefinition: false, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !235, !235}
!259 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlEE27_S_propagate_on_copy_assignEv", scope: !83, file: !82, line: 172, type: !260, isLocal: false, isDefinition: false, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true)
!260 = !DISubroutineType(types: !261)
!261 = !{!198}
!262 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlEE27_S_propagate_on_move_assignEv", scope: !83, file: !82, line: 175, type: !260, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true)
!263 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlEE20_S_propagate_on_swapEv", scope: !83, file: !82, line: 178, type: !260, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true)
!264 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlEE15_S_always_equalEv", scope: !83, file: !82, line: 181, type: !260, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true)
!265 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlEE15_S_nothrow_moveEv", scope: !83, file: !82, line: 184, type: !260, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true)
!266 = !DISubprogram(name: "_S_nothrow_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlEE15_S_nothrow_swapEv", scope: !83, file: !82, line: 187, type: !260, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !76, file: !72, line: 83, baseType: !80, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !76, file: !72, line: 84, baseType: !80, size: 64, offset: 128)
!269 = !DISubprogram(name: "_Vector_impl", scope: !76, file: !72, line: 86, type: !270, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!273 = !DISubprogram(name: "_Vector_impl", scope: !76, file: !72, line: 90, type: !274, isLocal: false, isDefinition: false, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !272, !276}
!276 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!278 = !DISubprogram(name: "_Vector_impl", scope: !76, file: !72, line: 95, type: !279, isLocal: false, isDefinition: false, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !272, !281}
!281 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !71, size: 64)
!282 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseIlSaIlEE12_Vector_impl12_M_swap_dataERS2_", scope: !76, file: !72, line: 101, type: !283, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !272, !285}
!285 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !76, size: 64)
!286 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv", scope: !73, file: !72, line: 113, type: !287, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true)
!287 = !DISubroutineType(types: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !71, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!291 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv", scope: !73, file: !72, line: 117, type: !292, isLocal: false, isDefinition: false, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true)
!292 = !DISubroutineType(types: !293)
!293 = !{!276, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!296 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseIlSaIlEE13get_allocatorEv", scope: !73, file: !72, line: 121, type: !297, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !294}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !73, file: !72, line: 110, baseType: !97)
!300 = !DISubprogram(name: "_Vector_base", scope: !73, file: !72, line: 124, type: !301, isLocal: false, isDefinition: false, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !290}
!303 = !DISubprogram(name: "_Vector_base", scope: !73, file: !72, line: 127, type: !304, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !290, !306}
!306 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!308 = !DISubprogram(name: "_Vector_base", scope: !73, file: !72, line: 130, type: !309, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !290, !135}
!311 = !DISubprogram(name: "_Vector_base", scope: !73, file: !72, line: 134, type: !312, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !290, !135, !306}
!314 = !DISubprogram(name: "_Vector_base", scope: !73, file: !72, line: 139, type: !315, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !290, !281}
!317 = !DISubprogram(name: "_Vector_base", scope: !73, file: !72, line: 142, type: !318, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !290, !320}
!320 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !73, size: 64)
!321 = !DISubprogram(name: "_Vector_base", scope: !73, file: !72, line: 146, type: !322, isLocal: false, isDefinition: false, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !290, !320, !306}
!324 = !DISubprogram(name: "~_Vector_base", scope: !73, file: !72, line: 159, type: !301, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true)
!325 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm", scope: !73, file: !72, line: 167, type: !326, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true)
!326 = !DISubroutineType(types: !327)
!327 = !{!80, !290, !135}
!328 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm", scope: !73, file: !72, line: 171, type: !329, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !290, !80, !135}
!331 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm", scope: !73, file: !72, line: 179, type: !309, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!332 = !{!146, !254}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !334, file: !82, line: 196, baseType: !335)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<long>", scope: !83, file: !82, line: 195, size: 8, elements: !43, templateParams: !145, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIlEE6rebindIlEE")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<long>", scope: !87, file: !88, line: 202, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !337, file: !88, line: 70, baseType: !340)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloctr_rebind<std::allocator<long>, long, true>", scope: !7, file: !88, line: 68, size: 8, elements: !43, templateParams: !338, identifier: "_ZTSSt16__alloctr_rebindISaIlElLb1EE")
!338 = !{!254, !146, !339}
!339 = !DITemplateValueParameter(type: !198, value: i8 1)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !341, file: !96, line: 105, baseType: !97)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<long>", scope: !97, file: !96, line: 104, size: 8, elements: !43, templateParams: !342, identifier: "_ZTSNSaIlE6rebindIlEE")
!342 = !{!343}
!343 = !DITemplateTypeParameter(name: "_Tp1", type: !46)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !72, line: 232, baseType: !135)
!346 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "move_iterator<long *>", scope: !7, file: !347, line: 930, size: 64, elements: !348, templateParams: !372, identifier: "_ZTSSt13move_iteratorIPlE")
!347 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stl_iterator.h", directory: "/u/v/a/van-sandt/wordsort/8")
!348 = !{!349, !350, !354, !358, !363, !374, !378, !382, !386, !387, !388, !393, !396, !397, !398}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !346, file: !347, line: 933, baseType: !119, size: 64, flags: DIFlagProtected)
!350 = !DISubprogram(name: "move_iterator", scope: !346, file: !347, line: 946, type: !351, isLocal: false, isDefinition: false, scopeLine: 946, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!354 = !DISubprogram(name: "move_iterator", scope: !346, file: !347, line: 950, type: !355, isLocal: false, isDefinition: false, scopeLine: 950, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !353, !357}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !346, file: !347, line: 938, baseType: !119)
!358 = !DISubprogram(name: "base", linkageName: "_ZNKSt13move_iteratorIPlE4baseEv", scope: !346, file: !347, line: 958, type: !359, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!359 = !DISubroutineType(types: !360)
!360 = !{!357, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!363 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt13move_iteratorIPlEdeEv", scope: !346, file: !347, line: 962, type: !364, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !361}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !346, file: !347, line: 944, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !346, file: !347, line: 940, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !371, file: !370, line: 178, baseType: !46)
!370 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stl_iterator_base_types.h", directory: "/u/v/a/van-sandt/wordsort/8")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<long *>", scope: !7, file: !370, line: 175, size: 8, elements: !43, templateParams: !372, identifier: "_ZTSSt15iterator_traitsIPlE")
!372 = !{!373}
!373 = !DITemplateTypeParameter(name: "_Iterator", type: !119)
!374 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt13move_iteratorIPlEptEv", scope: !346, file: !347, line: 966, type: !375, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!375 = !DISubroutineType(types: !376)
!376 = !{!377, !361}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !346, file: !347, line: 943, baseType: !119)
!378 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13move_iteratorIPlEppEv", scope: !346, file: !347, line: 970, type: !379, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !353}
!381 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !346, size: 64)
!382 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13move_iteratorIPlEppEi", scope: !346, file: !347, line: 977, type: !383, isLocal: false, isDefinition: false, scopeLine: 977, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!383 = !DISubroutineType(types: !384)
!384 = !{!346, !353, !385}
!385 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!386 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13move_iteratorIPlEmmEv", scope: !346, file: !347, line: 985, type: !379, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!387 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13move_iteratorIPlEmmEi", scope: !346, file: !347, line: 992, type: !383, isLocal: false, isDefinition: false, scopeLine: 992, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!388 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt13move_iteratorIPlEplEl", scope: !346, file: !347, line: 1000, type: !389, isLocal: false, isDefinition: false, scopeLine: 1000, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!389 = !DISubroutineType(types: !390)
!390 = !{!346, !361, !391}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !346, file: !347, line: 941, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !371, file: !370, line: 179, baseType: !187)
!393 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt13move_iteratorIPlEpLEl", scope: !346, file: !347, line: 1004, type: !394, isLocal: false, isDefinition: false, scopeLine: 1004, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!394 = !DISubroutineType(types: !395)
!395 = !{!381, !353, !391}
!396 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt13move_iteratorIPlEmiEl", scope: !346, file: !347, line: 1011, type: !389, isLocal: false, isDefinition: false, scopeLine: 1011, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!397 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt13move_iteratorIPlEmIEl", scope: !346, file: !347, line: 1015, type: !394, isLocal: false, isDefinition: false, scopeLine: 1015, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!398 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt13move_iteratorIPlEixEl", scope: !346, file: !347, line: 1022, type: !399, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!399 = !DISubroutineType(types: !400)
!400 = !{!366, !361, !391}
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !402, file: !72, line: 227, baseType: !657)
!402 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<long, std::allocator<long> >", scope: !7, file: !72, line: 210, size: 192, elements: !403, templateParams: !332, identifier: "_ZTSSt6vectorIlSaIlEE")
!403 = !{!404, !405, !409, !415, !418, !424, !429, !433, !436, !439, !444, !445, !449, !452, !455, !458, !461, !464, !525, !526, !527, !532, !537, !538, !539, !540, !541, !542, !543, !546, !547, !550, !551, !552, !553, !556, !557, !564, !571, !574, !575, !576, !579, !582, !583, !584, !587, !590, !593, !597, !598, !601, !604, !607, !610, !613, !616, !619, !620, !621, !622, !623, !624, !625, !628, !635, !639, !654}
!404 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !402, baseType: !73, flags: DIFlagProtected)
!405 = !DISubprogram(name: "vector", scope: !402, file: !72, line: 248, type: !406, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !408}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!409 = !DISubprogram(name: "vector", scope: !402, file: !72, line: 256, type: !410, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !408, !412}
!412 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !402, file: !72, line: 234, baseType: !97)
!415 = !DISubprogram(name: "vector", scope: !402, file: !72, line: 269, type: !416, isLocal: false, isDefinition: false, scopeLine: 269, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !408, !345, !412}
!418 = !DISubprogram(name: "vector", scope: !402, file: !72, line: 281, type: !419, isLocal: false, isDefinition: false, scopeLine: 281, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !408, !345, !421, !412}
!421 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !402, file: !72, line: 222, baseType: !46)
!424 = !DISubprogram(name: "vector", scope: !402, file: !72, line: 310, type: !425, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !408, !427}
!427 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!429 = !DISubprogram(name: "vector", scope: !402, file: !72, line: 327, type: !430, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !408, !432}
!432 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !402, size: 64)
!433 = !DISubprogram(name: "vector", scope: !402, file: !72, line: 331, type: !434, isLocal: false, isDefinition: false, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !408, !427, !412}
!436 = !DISubprogram(name: "vector", scope: !402, file: !72, line: 340, type: !437, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !408, !432, !412}
!439 = !DISubprogram(name: "vector", scope: !402, file: !72, line: 364, type: !440, isLocal: false, isDefinition: false, scopeLine: 364, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !408, !442, !412}
!442 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<long>", scope: !7, file: !443, line: 47, flags: DIFlagFwdDecl, identifier: "_ZTSSt16initializer_listIlE")
!443 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/initializer_list", directory: "/u/v/a/van-sandt/wordsort/8")
!444 = !DISubprogram(name: "~vector", scope: !402, file: !72, line: 414, type: !406, isLocal: false, isDefinition: false, scopeLine: 414, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!445 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIlSaIlEEaSERKS1_", scope: !402, file: !72, line: 427, type: !446, isLocal: false, isDefinition: false, scopeLine: 427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!446 = !DISubroutineType(types: !447)
!447 = !{!448, !408, !427}
!448 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !402, size: 64)
!449 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIlSaIlEEaSEOS1_", scope: !402, file: !72, line: 439, type: !450, isLocal: false, isDefinition: false, scopeLine: 439, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!450 = !DISubroutineType(types: !451)
!451 = !{!448, !408, !432}
!452 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE", scope: !402, file: !72, line: 461, type: !453, isLocal: false, isDefinition: false, scopeLine: 461, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!453 = !DISubroutineType(types: !454)
!454 = !{!448, !408, !442}
!455 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIlSaIlEE6assignEmRKl", scope: !402, file: !72, line: 479, type: !456, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !408, !345, !421}
!458 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIlSaIlEE6assignESt16initializer_listIlE", scope: !402, file: !72, line: 524, type: !459, isLocal: false, isDefinition: false, scopeLine: 524, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !408, !442}
!461 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIlSaIlEE5beginEv", scope: !402, file: !72, line: 538, type: !462, isLocal: false, isDefinition: false, scopeLine: 538, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!462 = !DISubroutineType(types: !463)
!463 = !{!401, !408}
!464 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorIlSaIlEE5beginEv", scope: !402, file: !72, line: 547, type: !465, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!465 = !DISubroutineType(types: !466)
!466 = !{!467, !524}
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !402, file: !72, line: 229, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const long *, std::vector<long, std::allocator<long> > >", scope: !84, file: !347, line: 708, size: 64, elements: !469, templateParams: !522, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEE")
!469 = !{!470, !471, !475, !480, !490, !495, !499, !502, !503, !504, !511, !514, !517, !518, !519}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !468, file: !347, line: 711, baseType: !127, size: 64, flags: DIFlagProtected)
!471 = !DISubprogram(name: "__normal_iterator", scope: !468, file: !347, line: 723, type: !472, isLocal: false, isDefinition: false, scopeLine: 723, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!475 = !DISubprogram(name: "__normal_iterator", scope: !468, file: !347, line: 726, type: !476, isLocal: false, isDefinition: false, scopeLine: 726, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !474, !478}
!478 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!480 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv", scope: !468, file: !347, line: 738, type: !481, isLocal: false, isDefinition: false, scopeLine: 738, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !488}
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !468, file: !347, line: 720, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !485, file: !370, line: 192, baseType: !130)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const long *>", scope: !7, file: !370, line: 186, size: 8, elements: !43, templateParams: !486, identifier: "_ZTSSt15iterator_traitsIPKlE")
!486 = !{!487}
!487 = !DITemplateTypeParameter(name: "_Iterator", type: !127)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!490 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEptEv", scope: !468, file: !347, line: 742, type: !491, isLocal: false, isDefinition: false, scopeLine: 742, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!491 = !DISubroutineType(types: !492)
!492 = !{!493, !488}
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !468, file: !347, line: 721, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !485, file: !370, line: 191, baseType: !127)
!495 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv", scope: !468, file: !347, line: 746, type: !496, isLocal: false, isDefinition: false, scopeLine: 746, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!496 = !DISubroutineType(types: !497)
!497 = !{!498, !474}
!498 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !468, size: 64)
!499 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEi", scope: !468, file: !347, line: 753, type: !500, isLocal: false, isDefinition: false, scopeLine: 753, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!500 = !DISubroutineType(types: !501)
!501 = !{!468, !474, !385}
!502 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEmmEv", scope: !468, file: !347, line: 758, type: !496, isLocal: false, isDefinition: false, scopeLine: 758, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!503 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEmmEi", scope: !468, file: !347, line: 765, type: !500, isLocal: false, isDefinition: false, scopeLine: 765, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!504 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEixERS1_", scope: !468, file: !347, line: 770, type: !505, isLocal: false, isDefinition: false, scopeLine: 770, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!505 = !DISubroutineType(types: !506)
!506 = !{!483, !488, !507}
!507 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !468, file: !347, line: 719, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !485, file: !370, line: 190, baseType: !187)
!511 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEpLERS1_", scope: !468, file: !347, line: 774, type: !512, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!512 = !DISubroutineType(types: !513)
!513 = !{!498, !474, !507}
!514 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEplERS1_", scope: !468, file: !347, line: 778, type: !515, isLocal: false, isDefinition: false, scopeLine: 778, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!515 = !DISubroutineType(types: !516)
!516 = !{!468, !488, !507}
!517 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEmIERS1_", scope: !468, file: !347, line: 782, type: !512, isLocal: false, isDefinition: false, scopeLine: 782, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!518 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEmiERS1_", scope: !468, file: !347, line: 786, type: !515, isLocal: false, isDefinition: false, scopeLine: 786, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!519 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv", scope: !468, file: !347, line: 790, type: !520, isLocal: false, isDefinition: false, scopeLine: 790, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!520 = !DISubroutineType(types: !521)
!521 = !{!478, !488}
!522 = !{!487, !523}
!523 = !DITemplateTypeParameter(name: "_Container", type: !402)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!525 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIlSaIlEE3endEv", scope: !402, file: !72, line: 556, type: !462, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!526 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorIlSaIlEE3endEv", scope: !402, file: !72, line: 565, type: !465, isLocal: false, isDefinition: false, scopeLine: 565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!527 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt6vectorIlSaIlEE6rbeginEv", scope: !402, file: !72, line: 574, type: !528, isLocal: false, isDefinition: false, scopeLine: 574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!528 = !DISubroutineType(types: !529)
!529 = !{!530, !408}
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !402, file: !72, line: 231, baseType: !531)
!531 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", scope: !7, file: !347, line: 96, flags: DIFlagFwdDecl, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEE")
!532 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt6vectorIlSaIlEE6rbeginEv", scope: !402, file: !72, line: 583, type: !533, isLocal: false, isDefinition: false, scopeLine: 583, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!533 = !DISubroutineType(types: !534)
!534 = !{!535, !524}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !402, file: !72, line: 230, baseType: !536)
!536 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > > >", scope: !7, file: !347, line: 96, flags: DIFlagFwdDecl, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEE")
!537 = !DISubprogram(name: "rend", linkageName: "_ZNSt6vectorIlSaIlEE4rendEv", scope: !402, file: !72, line: 592, type: !528, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!538 = !DISubprogram(name: "rend", linkageName: "_ZNKSt6vectorIlSaIlEE4rendEv", scope: !402, file: !72, line: 601, type: !533, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!539 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt6vectorIlSaIlEE6cbeginEv", scope: !402, file: !72, line: 611, type: !465, isLocal: false, isDefinition: false, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!540 = !DISubprogram(name: "cend", linkageName: "_ZNKSt6vectorIlSaIlEE4cendEv", scope: !402, file: !72, line: 620, type: !465, isLocal: false, isDefinition: false, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!541 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt6vectorIlSaIlEE7crbeginEv", scope: !402, file: !72, line: 629, type: !533, isLocal: false, isDefinition: false, scopeLine: 629, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!542 = !DISubprogram(name: "crend", linkageName: "_ZNKSt6vectorIlSaIlEE5crendEv", scope: !402, file: !72, line: 638, type: !533, isLocal: false, isDefinition: false, scopeLine: 638, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!543 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIlSaIlEE4sizeEv", scope: !402, file: !72, line: 645, type: !544, isLocal: false, isDefinition: false, scopeLine: 645, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!544 = !DISubroutineType(types: !545)
!545 = !{!345, !524}
!546 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIlSaIlEE8max_sizeEv", scope: !402, file: !72, line: 650, type: !544, isLocal: false, isDefinition: false, scopeLine: 650, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!547 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIlSaIlEE6resizeEm", scope: !402, file: !72, line: 664, type: !548, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !408, !345}
!550 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIlSaIlEE6resizeEmRKl", scope: !402, file: !72, line: 684, type: !456, isLocal: false, isDefinition: false, scopeLine: 684, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!551 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt6vectorIlSaIlEE13shrink_to_fitEv", scope: !402, file: !72, line: 716, type: !406, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!552 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorIlSaIlEE8capacityEv", scope: !402, file: !72, line: 725, type: !544, isLocal: false, isDefinition: false, scopeLine: 725, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!553 = !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorIlSaIlEE5emptyEv", scope: !402, file: !72, line: 734, type: !554, isLocal: false, isDefinition: false, scopeLine: 734, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!554 = !DISubroutineType(types: !555)
!555 = !{!198, !524}
!556 = !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorIlSaIlEE7reserveEm", scope: !402, file: !72, line: 755, type: !548, isLocal: false, isDefinition: false, scopeLine: 755, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!557 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIlSaIlEEixEm", scope: !402, file: !72, line: 770, type: !558, isLocal: false, isDefinition: false, scopeLine: 770, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !408, !345}
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !402, file: !72, line: 225, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !83, file: !82, line: 135, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !83, file: !82, line: 129, baseType: !94)
!564 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorIlSaIlEEixEm", scope: !402, file: !72, line: 785, type: !565, isLocal: false, isDefinition: false, scopeLine: 785, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!565 = !DISubroutineType(types: !566)
!566 = !{!567, !524, !345}
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !402, file: !72, line: 226, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !83, file: !82, line: 136, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!571 = !DISubprogram(name: "_M_range_check", linkageName: "_ZNKSt6vectorIlSaIlEE14_M_range_checkEm", scope: !402, file: !72, line: 791, type: !572, isLocal: false, isDefinition: false, scopeLine: 791, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !524, !345}
!574 = !DISubprogram(name: "at", linkageName: "_ZNSt6vectorIlSaIlEE2atEm", scope: !402, file: !72, line: 810, type: !558, isLocal: false, isDefinition: false, scopeLine: 810, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!575 = !DISubprogram(name: "at", linkageName: "_ZNKSt6vectorIlSaIlEE2atEm", scope: !402, file: !72, line: 828, type: !565, isLocal: false, isDefinition: false, scopeLine: 828, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!576 = !DISubprogram(name: "front", linkageName: "_ZNSt6vectorIlSaIlEE5frontEv", scope: !402, file: !72, line: 839, type: !577, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!577 = !DISubroutineType(types: !578)
!578 = !{!560, !408}
!579 = !DISubprogram(name: "front", linkageName: "_ZNKSt6vectorIlSaIlEE5frontEv", scope: !402, file: !72, line: 847, type: !580, isLocal: false, isDefinition: false, scopeLine: 847, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!580 = !DISubroutineType(types: !581)
!581 = !{!567, !524}
!582 = !DISubprogram(name: "back", linkageName: "_ZNSt6vectorIlSaIlEE4backEv", scope: !402, file: !72, line: 855, type: !577, isLocal: false, isDefinition: false, scopeLine: 855, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!583 = !DISubprogram(name: "back", linkageName: "_ZNKSt6vectorIlSaIlEE4backEv", scope: !402, file: !72, line: 863, type: !580, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!584 = !DISubprogram(name: "data", linkageName: "_ZNSt6vectorIlSaIlEE4dataEv", scope: !402, file: !72, line: 878, type: !585, isLocal: false, isDefinition: false, scopeLine: 878, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!585 = !DISubroutineType(types: !586)
!586 = !{!119, !408}
!587 = !DISubprogram(name: "data", linkageName: "_ZNKSt6vectorIlSaIlEE4dataEv", scope: !402, file: !72, line: 886, type: !588, isLocal: false, isDefinition: false, scopeLine: 886, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!588 = !DISubroutineType(types: !589)
!589 = !{!127, !524}
!590 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIlSaIlEE9push_backERKl", scope: !402, file: !72, line: 901, type: !591, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !408, !421}
!593 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIlSaIlEE9push_backEOl", scope: !402, file: !72, line: 919, type: !594, isLocal: false, isDefinition: false, scopeLine: 919, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !408, !596}
!596 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !423, size: 64)
!597 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt6vectorIlSaIlEE8pop_backEv", scope: !402, file: !72, line: 937, type: !406, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!598 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIlSaIlEE6insertEN9__gnu_cxx17__normal_iteratorIPlS1_EERKl", scope: !402, file: !72, line: 973, type: !599, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!599 = !DISubroutineType(types: !600)
!600 = !{!401, !408, !401, !421}
!601 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIlSaIlEE6insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEOl", scope: !402, file: !72, line: 988, type: !602, isLocal: false, isDefinition: false, scopeLine: 988, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!602 = !DISubroutineType(types: !603)
!603 = !{!401, !408, !401, !596}
!604 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIlSaIlEE6insertEN9__gnu_cxx17__normal_iteratorIPlS1_EESt16initializer_listIlE", scope: !402, file: !72, line: 1005, type: !605, isLocal: false, isDefinition: false, scopeLine: 1005, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !408, !401, !442}
!607 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIlSaIlEE6insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl", scope: !402, file: !72, line: 1023, type: !608, isLocal: false, isDefinition: false, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !408, !401, !345, !421}
!610 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPlS1_EE", scope: !402, file: !72, line: 1075, type: !611, isLocal: false, isDefinition: false, scopeLine: 1075, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!611 = !DISubroutineType(types: !612)
!612 = !{!401, !408, !401}
!613 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPlS1_EES5_", scope: !402, file: !72, line: 1096, type: !614, isLocal: false, isDefinition: false, scopeLine: 1096, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!614 = !DISubroutineType(types: !615)
!615 = !{!401, !408, !401, !401}
!616 = !DISubprogram(name: "swap", linkageName: "_ZNSt6vectorIlSaIlEE4swapERS1_", scope: !402, file: !72, line: 1108, type: !617, isLocal: false, isDefinition: false, scopeLine: 1108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !408, !448}
!619 = !DISubprogram(name: "clear", linkageName: "_ZNSt6vectorIlSaIlEE5clearEv", scope: !402, file: !72, line: 1125, type: !406, isLocal: false, isDefinition: false, scopeLine: 1125, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!620 = !DISubprogram(name: "_M_fill_initialize", linkageName: "_ZNSt6vectorIlSaIlEE18_M_fill_initializeEmRKl", scope: !402, file: !72, line: 1212, type: !456, isLocal: false, isDefinition: false, scopeLine: 1212, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!621 = !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorIlSaIlEE21_M_default_initializeEm", scope: !402, file: !72, line: 1222, type: !548, isLocal: false, isDefinition: false, scopeLine: 1222, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!622 = !DISubprogram(name: "_M_fill_assign", linkageName: "_ZNSt6vectorIlSaIlEE14_M_fill_assignEmRKl", scope: !402, file: !72, line: 1268, type: !456, isLocal: false, isDefinition: false, scopeLine: 1268, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!623 = !DISubprogram(name: "_M_fill_insert", linkageName: "_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl", scope: !402, file: !72, line: 1309, type: !608, isLocal: false, isDefinition: false, scopeLine: 1309, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!624 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorIlSaIlEE17_M_default_appendEm", scope: !402, file: !72, line: 1314, type: !548, isLocal: false, isDefinition: false, scopeLine: 1314, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!625 = !DISubprogram(name: "_M_shrink_to_fit", linkageName: "_ZNSt6vectorIlSaIlEE16_M_shrink_to_fitEv", scope: !402, file: !72, line: 1317, type: !626, isLocal: false, isDefinition: false, scopeLine: 1317, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!626 = !DISubroutineType(types: !627)
!627 = !{!198, !408}
!628 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc", scope: !402, file: !72, line: 1336, type: !629, isLocal: false, isDefinition: false, scopeLine: 1336, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!629 = !DISubroutineType(types: !630)
!630 = !{!631, !524, !345, !632}
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !402, file: !72, line: 232, baseType: !135)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!634 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!635 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl", scope: !402, file: !72, line: 1350, type: !636, isLocal: false, isDefinition: false, scopeLine: 1350, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !408, !638}
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !402, file: !72, line: 223, baseType: !80)
!639 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIlSaIlEE14_M_move_assignEOS1_St17integral_constantIbLb1EE", scope: !402, file: !72, line: 1362, type: !640, isLocal: false, isDefinition: false, scopeLine: 1362, flags: DIFlagPrototyped, isOptimized: true)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !408, !432, !642}
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !7, file: !192, line: 69, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !7, file: !192, line: 57, size: 8, elements: !644, templateParams: !652, identifier: "_ZTSSt17integral_constantIbLb1EE")
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !643, file: !192, line: 59, baseType: !217, flags: DIFlagStaticMember, extraData: i1 true)
!646 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !643, file: !192, line: 62, type: !647, isLocal: false, isDefinition: false, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true)
!647 = !DISubroutineType(types: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !643, file: !192, line: 60, baseType: !198)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!652 = !{!225, !653}
!653 = !DITemplateValueParameter(name: "__v", type: !198, value: i8 1)
!654 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIlSaIlEE14_M_move_assignEOS1_St17integral_constantIbLb0EE", scope: !402, file: !72, line: 1375, type: !655, isLocal: false, isDefinition: false, scopeLine: 1375, flags: DIFlagPrototyped, isOptimized: true)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !408, !432, !213}
!657 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<long *, std::vector<long, std::allocator<long> > >", scope: !84, file: !347, line: 708, size: 64, elements: !658, templateParams: !707, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEE")
!658 = !{!659, !660, !664, !669, !676, !681, !685, !688, !689, !690, !696, !699, !702, !703, !704}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !657, file: !347, line: 711, baseType: !119, size: 64, flags: DIFlagProtected)
!660 = !DISubprogram(name: "__normal_iterator", scope: !657, file: !347, line: 723, type: !661, isLocal: false, isDefinition: false, scopeLine: 723, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!664 = !DISubprogram(name: "__normal_iterator", scope: !657, file: !347, line: 726, type: !665, isLocal: false, isDefinition: false, scopeLine: 726, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !663, !667}
!667 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!669 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEdeEv", scope: !657, file: !347, line: 738, type: !670, isLocal: false, isDefinition: false, scopeLine: 738, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!670 = !DISubroutineType(types: !671)
!671 = !{!672, !674}
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !657, file: !347, line: 720, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !371, file: !370, line: 181, baseType: !122)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!676 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEptEv", scope: !657, file: !347, line: 742, type: !677, isLocal: false, isDefinition: false, scopeLine: 742, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!677 = !DISubroutineType(types: !678)
!678 = !{!679, !674}
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !657, file: !347, line: 721, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !371, file: !370, line: 180, baseType: !119)
!681 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEv", scope: !657, file: !347, line: 746, type: !682, isLocal: false, isDefinition: false, scopeLine: 746, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!682 = !DISubroutineType(types: !683)
!683 = !{!684, !663}
!684 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !657, size: 64)
!685 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEi", scope: !657, file: !347, line: 753, type: !686, isLocal: false, isDefinition: false, scopeLine: 753, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!686 = !DISubroutineType(types: !687)
!687 = !{!657, !663, !385}
!688 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmmEv", scope: !657, file: !347, line: 758, type: !682, isLocal: false, isDefinition: false, scopeLine: 758, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!689 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmmEi", scope: !657, file: !347, line: 765, type: !686, isLocal: false, isDefinition: false, scopeLine: 765, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!690 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEixERKl", scope: !657, file: !347, line: 770, type: !691, isLocal: false, isDefinition: false, scopeLine: 770, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!691 = !DISubroutineType(types: !692)
!692 = !{!672, !674, !693}
!693 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !657, file: !347, line: 719, baseType: !392)
!696 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEpLERKl", scope: !657, file: !347, line: 774, type: !697, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!697 = !DISubroutineType(types: !698)
!698 = !{!684, !663, !693}
!699 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEplERKl", scope: !657, file: !347, line: 778, type: !700, isLocal: false, isDefinition: false, scopeLine: 778, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!700 = !DISubroutineType(types: !701)
!701 = !{!657, !674, !693}
!702 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmIERKl", scope: !657, file: !347, line: 782, type: !697, isLocal: false, isDefinition: false, scopeLine: 782, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!703 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmiERKl", scope: !657, file: !347, line: 786, type: !700, isLocal: false, isDefinition: false, scopeLine: 786, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!704 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv", scope: !657, file: !347, line: 790, type: !705, isLocal: false, isDefinition: false, scopeLine: 790, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!705 = !DISubroutineType(types: !706)
!706 = !{!667, !674}
!707 = !{!373, !523}
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uctype", scope: !710, file: !709, line: 886, baseType: !812)
!709 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/random.tcc", directory: "/u/v/a/van-sandt/wordsort/8")
!710 = distinct !DISubprogram(name: "operator()<std::linear_congruential_engine<unsigned long, 48271, 0, 2147483647> >", linkageName: "_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE", scope: !711, file: !709, line: 879, type: !755, isLocal: false, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !788, declaration: !790, variables: !791)
!711 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "uniform_int_distribution<unsigned long>", scope: !7, file: !712, line: 1666, size: 128, elements: !713, templateParams: !753, identifier: "_ZTSSt24uniform_int_distributionImE")
!712 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/random.h", directory: "/u/v/a/van-sandt/wordsort/8")
!713 = !{!714, !730, !734, !738, !741, !746, !747, !750, !751, !752}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_M_param", scope: !711, file: !712, line: 1816, baseType: !715, size: 128)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "param_type", scope: !711, file: !712, line: 1675, size: 128, elements: !716, identifier: "_ZTSNSt24uniform_int_distributionImE10param_typeE")
!716 = !{!717, !718, !719, !723, !729}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_M_a", scope: !715, file: !712, line: 1700, baseType: !136, size: 64, flags: DIFlagPrivate)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_M_b", scope: !715, file: !712, line: 1701, baseType: !136, size: 64, offset: 64, flags: DIFlagPrivate)
!719 = !DISubprogram(name: "param_type", scope: !715, file: !712, line: 1680, type: !720, isLocal: false, isDefinition: false, scopeLine: 1680, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !722, !136, !136}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!723 = !DISubprogram(name: "a", linkageName: "_ZNKSt24uniform_int_distributionImE10param_type1aEv", scope: !715, file: !712, line: 1688, type: !724, isLocal: false, isDefinition: false, scopeLine: 1688, flags: DIFlagPrototyped, isOptimized: true)
!724 = !DISubroutineType(types: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "result_type", scope: !711, file: !712, line: 1673, baseType: !136)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!729 = !DISubprogram(name: "b", linkageName: "_ZNKSt24uniform_int_distributionImE10param_type1bEv", scope: !715, file: !712, line: 1692, type: !724, isLocal: false, isDefinition: false, scopeLine: 1692, flags: DIFlagPrototyped, isOptimized: true)
!730 = !DISubprogram(name: "uniform_int_distribution", scope: !711, file: !712, line: 1709, type: !731, isLocal: false, isDefinition: false, scopeLine: 1709, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !733, !136, !136}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!734 = !DISubprogram(name: "uniform_int_distribution", scope: !711, file: !712, line: 1715, type: !735, isLocal: false, isDefinition: false, scopeLine: 1715, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !733, !737}
!737 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !728, size: 64)
!738 = !DISubprogram(name: "reset", linkageName: "_ZNSt24uniform_int_distributionImE5resetEv", scope: !711, file: !712, line: 1725, type: !739, isLocal: false, isDefinition: false, scopeLine: 1725, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !733}
!741 = !DISubprogram(name: "a", linkageName: "_ZNKSt24uniform_int_distributionImE1aEv", scope: !711, file: !712, line: 1728, type: !742, isLocal: false, isDefinition: false, scopeLine: 1728, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!742 = !DISubroutineType(types: !743)
!743 = !{!726, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!746 = !DISubprogram(name: "b", linkageName: "_ZNKSt24uniform_int_distributionImE1bEv", scope: !711, file: !712, line: 1732, type: !742, isLocal: false, isDefinition: false, scopeLine: 1732, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!747 = !DISubprogram(name: "param", linkageName: "_ZNKSt24uniform_int_distributionImE5paramEv", scope: !711, file: !712, line: 1739, type: !748, isLocal: false, isDefinition: false, scopeLine: 1739, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!748 = !DISubroutineType(types: !749)
!749 = !{!715, !744}
!750 = !DISubprogram(name: "param", linkageName: "_ZNSt24uniform_int_distributionImE5paramERKNS0_10param_typeE", scope: !711, file: !712, line: 1747, type: !735, isLocal: false, isDefinition: false, scopeLine: 1747, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!751 = !DISubprogram(name: "min", linkageName: "_ZNKSt24uniform_int_distributionImE3minEv", scope: !711, file: !712, line: 1754, type: !742, isLocal: false, isDefinition: false, scopeLine: 1754, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!752 = !DISubprogram(name: "max", linkageName: "_ZNKSt24uniform_int_distributionImE3maxEv", scope: !711, file: !712, line: 1761, type: !742, isLocal: false, isDefinition: false, scopeLine: 1761, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!753 = !{!754}
!754 = !DITemplateTypeParameter(name: "_IntType", type: !136)
!755 = !DISubroutineType(types: !756)
!756 = !{!726, !733, !757, !737}
!757 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "linear_congruential_engine<unsigned long, 48271, 0, 2147483647>", scope: !7, file: !712, line: 241, size: 64, elements: !759, templateParams: !783, identifier: "_ZTSSt26linear_congruential_engineImLm48271ELm0ELm2147483647EE")
!759 = !{!760, !763, !764, !765, !766, !767, !771, !772, !775, !776, !780}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "multiplier", scope: !758, file: !712, line: 253, baseType: !761, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 48271)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "result_type", scope: !758, file: !712, line: 250, baseType: !136)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "increment", scope: !758, file: !712, line: 255, baseType: !761, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "modulus", scope: !758, file: !712, line: 257, baseType: !761, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 2147483647)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "default_seed", scope: !758, file: !712, line: 258, baseType: !761, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_M_x", scope: !758, file: !712, line: 393, baseType: !136, size: 64)
!767 = !DISubprogram(name: "linear_congruential_engine", scope: !758, file: !712, line: 268, type: !768, isLocal: false, isDefinition: false, scopeLine: 268, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !770, !762}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!771 = !DISubprogram(name: "seed", linkageName: "_ZNSt26linear_congruential_engineImLm48271ELm0ELm2147483647EE4seedEm", scope: !758, file: !712, line: 291, type: !768, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!772 = !DISubprogram(name: "min", linkageName: "_ZNSt26linear_congruential_engineImLm48271ELm0ELm2147483647EE3minEv", scope: !758, file: !712, line: 311, type: !773, isLocal: false, isDefinition: false, scopeLine: 311, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!773 = !DISubroutineType(types: !774)
!774 = !{!762}
!775 = !DISubprogram(name: "max", linkageName: "_ZNSt26linear_congruential_engineImLm48271ELm0ELm2147483647EE3maxEv", scope: !758, file: !712, line: 318, type: !773, isLocal: false, isDefinition: false, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!776 = !DISubprogram(name: "discard", linkageName: "_ZNSt26linear_congruential_engineImLm48271ELm0ELm2147483647EE7discardEy", scope: !758, file: !712, line: 325, type: !777, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !770, !779}
!779 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!780 = !DISubprogram(name: "operator()", linkageName: "_ZNSt26linear_congruential_engineImLm48271ELm0ELm2147483647EEclEv", scope: !758, file: !712, line: 335, type: !781, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!781 = !DISubroutineType(types: !782)
!782 = !{!762, !770}
!783 = !{!784, !785, !786, !787}
!784 = !DITemplateTypeParameter(name: "_UIntType", type: !136)
!785 = !DITemplateValueParameter(name: "__a", type: !136, value: i64 48271)
!786 = !DITemplateValueParameter(name: "__c", type: !136, value: i64 0)
!787 = !DITemplateValueParameter(name: "__m", type: !136, value: i64 2147483647)
!788 = !{!789}
!789 = !DITemplateTypeParameter(name: "_UniformRandomNumberGenerator", type: !758)
!790 = !DISubprogram(name: "operator()<std::linear_congruential_engine<unsigned long, 48271, 0, 2147483647> >", linkageName: "_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE", scope: !711, file: !712, line: 1774, type: !755, isLocal: false, isDefinition: false, scopeLine: 1774, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !788)
!791 = !{!792, !794, !795, !796, !798, !799, !800, !801, !802, !805, !806, !807, !810}
!792 = !DILocalVariable(name: "this", arg: 1, scope: !710, type: !793, flags: DIFlagArtificial | DIFlagObjectPointer)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!794 = !DILocalVariable(name: "__urng", arg: 2, scope: !710, file: !712, line: 1774, type: !757)
!795 = !DILocalVariable(name: "__param", arg: 3, scope: !710, file: !712, line: 1775, type: !737)
!796 = !DILocalVariable(name: "__urngmin", scope: !710, file: !709, line: 888, type: !797)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!798 = !DILocalVariable(name: "__urngmax", scope: !710, file: !709, line: 889, type: !797)
!799 = !DILocalVariable(name: "__urngrange", scope: !710, file: !709, line: 890, type: !797)
!800 = !DILocalVariable(name: "__urange", scope: !710, file: !709, line: 891, type: !797)
!801 = !DILocalVariable(name: "__ret", scope: !710, file: !709, line: 894, type: !708)
!802 = !DILocalVariable(name: "__uerange", scope: !803, file: !709, line: 899, type: !797)
!803 = distinct !DILexicalBlock(scope: !804, file: !709, line: 897, column: 4)
!804 = distinct !DILexicalBlock(scope: !710, file: !709, line: 896, column: 6)
!805 = !DILocalVariable(name: "__scaling", scope: !803, file: !709, line: 900, type: !797)
!806 = !DILocalVariable(name: "__past", scope: !803, file: !709, line: 901, type: !797)
!807 = !DILocalVariable(name: "__tmp", scope: !808, file: !709, line: 924, type: !708)
!808 = distinct !DILexicalBlock(scope: !809, file: !709, line: 908, column: 4)
!809 = distinct !DILexicalBlock(scope: !804, file: !709, line: 907, column: 11)
!810 = !DILocalVariable(name: "__uerngrange", scope: !811, file: !709, line: 927, type: !797)
!811 = distinct !DILexicalBlock(scope: !808, file: !709, line: 926, column: 8)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !813, file: !192, line: 143, baseType: !136)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__success_type<unsigned long>", scope: !7, file: !192, line: 142, size: 8, elements: !43, templateParams: !814, identifier: "_ZTSSt14__success_typeImE")
!814 = !{!815}
!815 = !DITemplateTypeParameter(name: "_Tp", type: !136)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "_DistanceType", scope: !818, file: !817, line: 259, baseType: !834)
!817 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stl_heap.h", directory: "/u/v/a/van-sandt/wordsort/8")
!818 = distinct !DISubprogram(name: "__pop_heap<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_S7_", scope: !7, file: !817, line: 253, type: !819, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !821, variables: !823)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !657, !657, !657}
!821 = !{!822}
!822 = !DITemplateTypeParameter(name: "_RandomAccessIterator", type: !657)
!823 = !{!824, !825, !826, !827}
!824 = !DILocalVariable(name: "__first", arg: 1, scope: !818, file: !817, line: 253, type: !657)
!825 = !DILocalVariable(name: "__last", arg: 2, scope: !818, file: !817, line: 253, type: !657)
!826 = !DILocalVariable(name: "__result", arg: 3, scope: !818, file: !817, line: 254, type: !657)
!827 = !DILocalVariable(name: "__value", scope: !818, file: !817, line: 261, type: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ValueType", scope: !818, file: !817, line: 257, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !830, file: !370, line: 152, baseType: !833)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__iterator_traits<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > >, true>", scope: !7, file: !370, line: 149, size: 8, elements: !43, templateParams: !831, identifier: "_ZTSSt17__iterator_traitsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEELb1EE")
!831 = !{!832, !339}
!832 = !DITemplateTypeParameter(name: "_Iterator", type: !657)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !657, file: !347, line: 718, baseType: !369)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !830, file: !370, line: 153, baseType: !695)
!835 = !{!836, !0}
!836 = !DIGlobalVariableExpression(var: !837)
!837 = distinct !DIGlobalVariable(name: "stream_init_anchor", linkageName: "_ZN9benchmark8internalL18stream_init_anchorE", scope: !838, file: !13, line: 218, type: !385, isLocal: true, isDefinition: true)
!838 = !DINamespace(name: "internal", scope: !15, file: !13, line: 205)
!839 = !{!840, !844, !848, !854, !858, !862, !867, !869, !874, !878, !882, !893, !897, !901, !905, !909, !914, !918, !922, !926, !930, !938, !942, !946, !948, !952, !956, !961, !967, !971, !975, !977, !985, !989, !996, !998, !1002, !1006, !1010, !1014, !1018, !1023, !1028, !1029, !1030, !1031, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1093, !1098, !1100, !1102, !1106, !1108, !1110, !1112, !1114, !1116, !1118, !1120, !1125, !1129, !1131, !1133, !1138, !1140, !1142, !1144, !1146, !1148, !1150, !1153, !1155, !1157, !1161, !1165, !1167, !1169, !1171, !1173, !1175, !1177, !1179, !1181, !1183, !1185, !1189, !1193, !1195, !1197, !1199, !1201, !1203, !1205, !1207, !1209, !1211, !1213, !1215, !1217, !1219, !1221, !1223, !1227, !1231, !1235, !1237, !1239, !1241, !1243, !1245, !1247, !1249, !1251, !1253, !1257, !1261, !1265, !1267, !1269, !1271, !1275, !1279, !1283, !1285, !1287, !1289, !1291, !1293, !1295, !1297, !1299, !1301, !1303, !1305, !1307, !1311, !1315, !1319, !1321, !1323, !1325, !1327, !1331, !1335, !1337, !1339, !1341, !1343, !1345, !1347, !1351, !1355, !1357, !1359, !1361, !1363, !1367, !1371, !1375, !1377, !1379, !1381, !1383, !1385, !1387, !1391, !1395, !1399, !1401, !1405, !1409, !1411, !1413, !1415, !1417, !1419, !1421, !1472, !1477, !1482, !1486, !1488, !1490, !1492, !1494, !1501, !1505, !1509, !1513, !1517, !1521, !1526, !1530, !1532, !1536, !1542, !1546, !1551, !1553, !1556, !1560, !1564, !1568, !1570, !1572, !1574, !1576, !1580, !1582, !1584, !1588, !1592, !1596, !1600, !1604, !1606, !1608, !1619, !1623, !1627, !1631, !1633, !1635, !1639, !1643, !1644, !1645, !1646, !1647, !1648, !1663, !1665, !1669, !1675, !1680, !1684, !1688, !1692, !1696, !1698, !1700, !1704, !1710, !1714, !1720, !1726, !1728, !1732, !1736, !1740, !1744, !1748, !1750, !1754, !1758, !1762, !1764, !1768, !1772, !1776, !1778, !1780, !1784, !1792, !1796, !1800, !1804, !1806, !1812, !1814, !1820, !1824, !1828, !1832, !1836, !1840, !1844, !1846, !1848, !1852, !1856, !1860, !1862, !1866, !1870, !1872, !1874, !1878, !1882, !1886, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1902, !1905, !1907, !1908, !1911, !1913, !1915, !1917, !1919, !1921, !1923, !1925, !1927, !1929, !1932, !1934, !1936, !1938, !1940, !1942, !1944, !1946, !1948, !1950, !1952, !1954, !1956, !1958, !1959, !1960, !1963, !1967, !1972, !1975, !1977, !1979, !1981, !1983, !1985, !1987, !1989, !1991, !1993, !1995, !1997, !1999}
!840 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !841, entity: !843, line: 56)
!841 = !DINamespace(name: "__gnu_debug", scope: null, file: !842, line: 54)
!842 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/debug/debug.h", directory: "/u/v/a/van-sandt/wordsort/8")
!843 = !DINamespace(name: "__debug", scope: !7, file: !842, line: 48)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !845, line: 118)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !846, line: 101, baseType: !847)
!846 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/u/v/a/van-sandt/wordsort/8")
!847 = !DICompositeType(tag: DW_TAG_structure_type, file: !846, line: 97, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !849, line: 119)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !846, line: 109, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !846, line: 105, size: 128, elements: !851, identifier: "_ZTS6ldiv_t")
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !850, file: !846, line: 107, baseType: !46, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !850, file: !846, line: 108, baseType: !46, size: 64, offset: 64)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !855, line: 121)
!855 = !DISubprogram(name: "abort", scope: !846, file: !846, line: 515, type: !856, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!856 = !DISubroutineType(types: !857)
!857 = !{null}
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !859, line: 122)
!859 = !DISubprogram(name: "abs", scope: !846, file: !846, line: 775, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!860 = !DISubroutineType(types: !861)
!861 = !{!385, !385}
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !863, line: 123)
!863 = !DISubprogram(name: "atexit", scope: !846, file: !846, line: 519, type: !864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!864 = !DISubroutineType(types: !865)
!865 = !{!385, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !868, line: 126)
!868 = !DISubprogram(name: "at_quick_exit", scope: !846, file: !846, line: 524, type: !864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !870, line: 129)
!870 = !DISubprogram(name: "atof", scope: !871, file: !871, line: 26, type: !872, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!871 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "/u/v/a/van-sandt/wordsort/8")
!872 = !DISubroutineType(types: !873)
!873 = !{!18, !632}
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !875, line: 130)
!875 = !DISubprogram(name: "atoi", scope: !846, file: !846, line: 278, type: !876, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!876 = !DISubroutineType(types: !877)
!877 = !{!385, !632}
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !879, line: 131)
!879 = !DISubprogram(name: "atol", scope: !846, file: !846, line: 283, type: !880, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!880 = !DISubroutineType(types: !881)
!881 = !{!46, !632}
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !883, line: 132)
!883 = !DISubprogram(name: "bsearch", scope: !884, file: !884, line: 20, type: !885, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!884 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "/u/v/a/van-sandt/wordsort/8")
!885 = !DISubroutineType(types: !886)
!886 = !{!178, !137, !137, !887, !887, !889}
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !888, line: 62, baseType: !136)
!888 = !DIFile(filename: "/afs/cs.wisc.edu/u/v/a/van-sandt/llvm/lib/clang/5.0.0/include/stddef.h", directory: "/u/v/a/van-sandt/wordsort/8")
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !846, line: 742, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!385, !137, !137}
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !894, line: 133)
!894 = !DISubprogram(name: "calloc", scope: !846, file: !846, line: 468, type: !895, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!895 = !DISubroutineType(types: !896)
!896 = !{!178, !887, !887}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !898, line: 134)
!898 = !DISubprogram(name: "div", scope: !846, file: !846, line: 789, type: !899, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!899 = !DISubroutineType(types: !900)
!900 = !{!845, !385, !385}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !902, line: 135)
!902 = !DISubprogram(name: "exit", scope: !846, file: !846, line: 543, type: !903, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !385}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !906, line: 136)
!906 = !DISubprogram(name: "free", scope: !846, file: !846, line: 483, type: !907, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !178}
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !910, line: 137)
!910 = !DISubprogram(name: "getenv", scope: !846, file: !846, line: 564, type: !911, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!911 = !DISubroutineType(types: !912)
!912 = !{!913, !632}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !915, line: 138)
!915 = !DISubprogram(name: "labs", scope: !846, file: !846, line: 776, type: !916, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!916 = !DISubroutineType(types: !917)
!917 = !{!46, !46}
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !919, line: 139)
!919 = !DISubprogram(name: "ldiv", scope: !846, file: !846, line: 791, type: !920, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!920 = !DISubroutineType(types: !921)
!921 = !{!849, !46, !46}
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !923, line: 140)
!923 = !DISubprogram(name: "malloc", scope: !846, file: !846, line: 466, type: !924, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!924 = !DISubroutineType(types: !925)
!925 = !{!178, !887}
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !927, line: 142)
!927 = !DISubprogram(name: "mblen", scope: !846, file: !846, line: 863, type: !928, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!928 = !DISubroutineType(types: !929)
!929 = !{!385, !632, !887}
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !931, line: 143)
!931 = !DISubprogram(name: "mbstowcs", scope: !846, file: !846, line: 874, type: !932, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!932 = !DISubroutineType(types: !933)
!933 = !{!887, !934, !937, !887}
!934 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !935)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!937 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !632)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !939, line: 144)
!939 = !DISubprogram(name: "mbtowc", scope: !846, file: !846, line: 866, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!940 = !DISubroutineType(types: !941)
!941 = !{!385, !934, !937, !887}
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !943, line: 146)
!943 = !DISubprogram(name: "qsort", scope: !846, file: !846, line: 765, type: !944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !178, !887, !887, !889}
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !947, line: 149)
!947 = !DISubprogram(name: "quick_exit", scope: !846, file: !846, line: 549, type: !903, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !949, line: 152)
!949 = !DISubprogram(name: "rand", scope: !846, file: !846, line: 374, type: !950, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!950 = !DISubroutineType(types: !951)
!951 = !{!385}
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !953, line: 153)
!953 = !DISubprogram(name: "realloc", scope: !846, file: !846, line: 480, type: !954, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!954 = !DISubroutineType(types: !955)
!955 = !{!178, !178, !887}
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !957, line: 154)
!957 = !DISubprogram(name: "srand", scope: !846, file: !846, line: 376, type: !958, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !960}
!960 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !962, line: 155)
!962 = !DISubprogram(name: "strtod", scope: !846, file: !846, line: 164, type: !963, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!963 = !DISubroutineType(types: !964)
!964 = !{!18, !937, !965}
!965 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !968, line: 156)
!968 = !DISubprogram(name: "strtol", scope: !846, file: !846, line: 183, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!969 = !DISubroutineType(types: !970)
!970 = !{!46, !937, !965, !385}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !972, line: 157)
!972 = !DISubprogram(name: "strtoul", scope: !846, file: !846, line: 187, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!973 = !DISubroutineType(types: !974)
!974 = !{!136, !937, !965, !385}
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !976, line: 158)
!976 = !DISubprogram(name: "system", scope: !846, file: !846, line: 717, type: !876, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !978, line: 160)
!978 = !DISubprogram(name: "wcstombs", scope: !846, file: !846, line: 877, type: !979, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!979 = !DISubroutineType(types: !980)
!980 = !{!887, !981, !982, !887}
!981 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !913)
!982 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !936)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !986, line: 161)
!986 = !DISubprogram(name: "wctomb", scope: !846, file: !846, line: 870, type: !987, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!987 = !DISubroutineType(types: !988)
!988 = !{!385, !913, !936}
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !990, line: 201)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !846, line: 121, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !846, line: 117, size: 128, elements: !992, identifier: "_ZTS7lldiv_t")
!992 = !{!993, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !991, file: !846, line: 119, baseType: !994, size: 64)
!994 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !991, file: !846, line: 120, baseType: !994, size: 64, offset: 64)
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !997, line: 207)
!997 = !DISubprogram(name: "_Exit", scope: !846, file: !846, line: 557, type: !903, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !999, line: 211)
!999 = !DISubprogram(name: "llabs", scope: !846, file: !846, line: 780, type: !1000, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!994, !994}
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1003, line: 217)
!1003 = !DISubprogram(name: "lldiv", scope: !846, file: !846, line: 797, type: !1004, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!990, !994, !994}
!1006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1007, line: 228)
!1007 = !DISubprogram(name: "atoll", scope: !846, file: !846, line: 292, type: !1008, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!994, !632}
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1011, line: 229)
!1011 = !DISubprogram(name: "strtoll", scope: !846, file: !846, line: 209, type: !1012, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!994, !937, !965, !385}
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1015, line: 230)
!1015 = !DISubprogram(name: "strtoull", scope: !846, file: !846, line: 214, type: !1016, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!779, !937, !965, !385}
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1019, line: 232)
!1019 = !DISubprogram(name: "strtof", scope: !846, file: !846, line: 172, type: !1020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!1022, !937, !965}
!1022 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1024, line: 233)
!1024 = !DISubprogram(name: "strtold", scope: !846, file: !846, line: 175, type: !1025, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!1027, !937, !965}
!1027 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !990, line: 241)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !997, line: 243)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !999, line: 245)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1032, line: 246)
!1032 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !84, file: !1033, line: 214, type: !1004, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1033 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/cstdlib", directory: "/u/v/a/van-sandt/wordsort/8")
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1003, line: 247)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1007, line: 249)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1019, line: 250)
!1037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1011, line: 251)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1015, line: 252)
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1024, line: 253)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1041, line: 58)
!1041 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1043, file: !1042, line: 75, size: 64, elements: !1044, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1042 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/exception_ptr.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1043 = !DINamespace(name: "__exception_ptr", scope: !7, file: !1042, line: 53)
!1044 = !{!1045, !1046, !1050, !1053, !1054, !1059, !1060, !1064, !1069, !1073, !1077, !1080, !1081, !1084, !1087}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !1041, file: !1042, line: 77, baseType: !178, size: 64)
!1046 = !DISubprogram(name: "exception_ptr", scope: !1041, file: !1042, line: 79, type: !1047, isLocal: false, isDefinition: false, scopeLine: 79, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !1049, !178}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1050 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !1041, file: !1042, line: 81, type: !1051, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !1049}
!1053 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !1041, file: !1042, line: 82, type: !1051, isLocal: false, isDefinition: false, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true)
!1054 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !1041, file: !1042, line: 84, type: !1055, isLocal: false, isDefinition: false, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!178, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1059 = !DISubprogram(name: "exception_ptr", scope: !1041, file: !1042, line: 90, type: !1051, isLocal: false, isDefinition: false, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1060 = !DISubprogram(name: "exception_ptr", scope: !1041, file: !1042, line: 92, type: !1061, isLocal: false, isDefinition: false, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !1049, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1058, size: 64)
!1064 = !DISubprogram(name: "exception_ptr", scope: !1041, file: !1042, line: 95, type: !1065, isLocal: false, isDefinition: false, scopeLine: 95, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !1049, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !7, file: !8, line: 190, baseType: !1068)
!1068 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!1069 = !DISubprogram(name: "exception_ptr", scope: !1041, file: !1042, line: 99, type: !1070, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !1049, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1041, size: 64)
!1073 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !1041, file: !1042, line: 112, type: !1074, isLocal: false, isDefinition: false, scopeLine: 112, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!1076, !1049, !1063}
!1076 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1041, size: 64)
!1077 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !1041, file: !1042, line: 116, type: !1078, isLocal: false, isDefinition: false, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!1076, !1049, !1072}
!1080 = !DISubprogram(name: "~exception_ptr", scope: !1041, file: !1042, line: 123, type: !1051, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1081 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !1041, file: !1042, line: 126, type: !1082, isLocal: false, isDefinition: false, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !1049, !1076}
!1084 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !1041, file: !1042, line: 138, type: !1085, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!198, !1057}
!1087 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !1041, file: !1042, line: 147, type: !1088, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!1090, !1057}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !7, file: !1042, line: 47, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1094, line: 102)
!1094 = !DISubprogram(name: "acos", scope: !1095, file: !1095, line: 54, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1095 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!18, !18}
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1099, line: 121)
!1099 = !DISubprogram(name: "asin", scope: !1095, file: !1095, line: 56, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1101, line: 140)
!1101 = !DISubprogram(name: "atan", scope: !1095, file: !1095, line: 58, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1103, line: 159)
!1103 = !DISubprogram(name: "atan2", scope: !1095, file: !1095, line: 60, type: !1104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!18, !18, !18}
!1106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1107, line: 180)
!1107 = !DISubprogram(name: "ceil", scope: !1095, file: !1095, line: 178, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1109, line: 199)
!1109 = !DISubprogram(name: "cos", scope: !1095, file: !1095, line: 63, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1111, line: 218)
!1111 = !DISubprogram(name: "cosh", scope: !1095, file: !1095, line: 72, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1113, line: 237)
!1113 = !DISubprogram(name: "exp", scope: !1095, file: !1095, line: 100, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1115, line: 256)
!1115 = !DISubprogram(name: "fabs", scope: !1095, file: !1095, line: 181, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1117, line: 275)
!1117 = !DISubprogram(name: "floor", scope: !1095, file: !1095, line: 184, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1119, line: 294)
!1119 = !DISubprogram(name: "fmod", scope: !1095, file: !1095, line: 187, type: !1104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1121, line: 315)
!1121 = !DISubprogram(name: "frexp", scope: !1095, file: !1095, line: 103, type: !1122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!18, !18, !1124}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1126, line: 334)
!1126 = !DISubprogram(name: "ldexp", scope: !1095, file: !1095, line: 106, type: !1127, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!18, !18, !385}
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1130, line: 353)
!1130 = !DISubprogram(name: "log", scope: !1095, file: !1095, line: 109, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1132, line: 372)
!1132 = !DISubprogram(name: "log10", scope: !1095, file: !1095, line: 112, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1134, line: 391)
!1134 = !DISubprogram(name: "modf", scope: !1095, file: !1095, line: 115, type: !1135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!18, !18, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1139, line: 403)
!1139 = !DISubprogram(name: "pow", scope: !1095, file: !1095, line: 153, type: !1104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1141, line: 440)
!1141 = !DISubprogram(name: "sin", scope: !1095, file: !1095, line: 65, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1143, line: 459)
!1143 = !DISubprogram(name: "sinh", scope: !1095, file: !1095, line: 74, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1145, line: 478)
!1145 = !DISubprogram(name: "sqrt", scope: !1095, file: !1095, line: 156, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1147, line: 497)
!1147 = !DISubprogram(name: "tan", scope: !1095, file: !1095, line: 67, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1149, line: 516)
!1149 = !DISubprogram(name: "tanh", scope: !1095, file: !1095, line: 76, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1151, line: 1037)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !1152, line: 29, baseType: !18)
!1152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathdef.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1154, line: 1038)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !1152, line: 28, baseType: !1022)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1156, line: 1041)
!1156 = !DISubprogram(name: "acosh", scope: !1095, file: !1095, line: 88, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1158, line: 1042)
!1158 = !DISubprogram(name: "acoshf", scope: !1095, file: !1095, line: 88, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!1022, !1022}
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1162, line: 1043)
!1162 = !DISubprogram(name: "acoshl", scope: !1095, file: !1095, line: 88, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!1027, !1027}
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1166, line: 1045)
!1166 = !DISubprogram(name: "asinh", scope: !1095, file: !1095, line: 90, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1168, line: 1046)
!1168 = !DISubprogram(name: "asinhf", scope: !1095, file: !1095, line: 90, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1170, line: 1047)
!1170 = !DISubprogram(name: "asinhl", scope: !1095, file: !1095, line: 90, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1172, line: 1049)
!1172 = !DISubprogram(name: "atanh", scope: !1095, file: !1095, line: 92, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1174, line: 1050)
!1174 = !DISubprogram(name: "atanhf", scope: !1095, file: !1095, line: 92, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1176, line: 1051)
!1176 = !DISubprogram(name: "atanhl", scope: !1095, file: !1095, line: 92, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1178, line: 1053)
!1178 = !DISubprogram(name: "cbrt", scope: !1095, file: !1095, line: 169, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1180, line: 1054)
!1180 = !DISubprogram(name: "cbrtf", scope: !1095, file: !1095, line: 169, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1182, line: 1055)
!1182 = !DISubprogram(name: "cbrtl", scope: !1095, file: !1095, line: 169, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1184, line: 1057)
!1184 = !DISubprogram(name: "copysign", scope: !1095, file: !1095, line: 217, type: !1104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1186, line: 1058)
!1186 = !DISubprogram(name: "copysignf", scope: !1095, file: !1095, line: 217, type: !1187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!1022, !1022, !1022}
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1190, line: 1059)
!1190 = !DISubprogram(name: "copysignl", scope: !1095, file: !1095, line: 217, type: !1191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1027, !1027, !1027}
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1194, line: 1061)
!1194 = !DISubprogram(name: "erf", scope: !1095, file: !1095, line: 249, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1196, line: 1062)
!1196 = !DISubprogram(name: "erff", scope: !1095, file: !1095, line: 249, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1198, line: 1063)
!1198 = !DISubprogram(name: "erfl", scope: !1095, file: !1095, line: 249, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1200, line: 1065)
!1200 = !DISubprogram(name: "erfc", scope: !1095, file: !1095, line: 250, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1202, line: 1066)
!1202 = !DISubprogram(name: "erfcf", scope: !1095, file: !1095, line: 250, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1204, line: 1067)
!1204 = !DISubprogram(name: "erfcl", scope: !1095, file: !1095, line: 250, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1206, line: 1069)
!1206 = !DISubprogram(name: "exp2", scope: !1095, file: !1095, line: 141, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1208, line: 1070)
!1208 = !DISubprogram(name: "exp2f", scope: !1095, file: !1095, line: 141, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1210, line: 1071)
!1210 = !DISubprogram(name: "exp2l", scope: !1095, file: !1095, line: 141, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1212, line: 1073)
!1212 = !DISubprogram(name: "expm1", scope: !1095, file: !1095, line: 128, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1214, line: 1074)
!1214 = !DISubprogram(name: "expm1f", scope: !1095, file: !1095, line: 128, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1216, line: 1075)
!1216 = !DISubprogram(name: "expm1l", scope: !1095, file: !1095, line: 128, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1218, line: 1077)
!1218 = !DISubprogram(name: "fdim", scope: !1095, file: !1095, line: 337, type: !1104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1220, line: 1078)
!1220 = !DISubprogram(name: "fdimf", scope: !1095, file: !1095, line: 337, type: !1187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1222, line: 1079)
!1222 = !DISubprogram(name: "fdiml", scope: !1095, file: !1095, line: 337, type: !1191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1224, line: 1081)
!1224 = !DISubprogram(name: "fma", scope: !1095, file: !1095, line: 356, type: !1225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!18, !18, !18, !18}
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1228, line: 1082)
!1228 = !DISubprogram(name: "fmaf", scope: !1095, file: !1095, line: 356, type: !1229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1022, !1022, !1022, !1022}
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1232, line: 1083)
!1232 = !DISubprogram(name: "fmal", scope: !1095, file: !1095, line: 356, type: !1233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!1027, !1027, !1027, !1027}
!1235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1236, line: 1085)
!1236 = !DISubprogram(name: "fmax", scope: !1095, file: !1095, line: 340, type: !1104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1238, line: 1086)
!1238 = !DISubprogram(name: "fmaxf", scope: !1095, file: !1095, line: 340, type: !1187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1240, line: 1087)
!1240 = !DISubprogram(name: "fmaxl", scope: !1095, file: !1095, line: 340, type: !1191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1242, line: 1089)
!1242 = !DISubprogram(name: "fmin", scope: !1095, file: !1095, line: 343, type: !1104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1244, line: 1090)
!1244 = !DISubprogram(name: "fminf", scope: !1095, file: !1095, line: 343, type: !1187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1246, line: 1091)
!1246 = !DISubprogram(name: "fminl", scope: !1095, file: !1095, line: 343, type: !1191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1248, line: 1093)
!1248 = !DISubprogram(name: "hypot", scope: !1095, file: !1095, line: 162, type: !1104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1250, line: 1094)
!1250 = !DISubprogram(name: "hypotf", scope: !1095, file: !1095, line: 162, type: !1187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1252, line: 1095)
!1252 = !DISubprogram(name: "hypotl", scope: !1095, file: !1095, line: 162, type: !1191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1254, line: 1097)
!1254 = !DISubprogram(name: "ilogb", scope: !1095, file: !1095, line: 296, type: !1255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!385, !18}
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1258, line: 1098)
!1258 = !DISubprogram(name: "ilogbf", scope: !1095, file: !1095, line: 296, type: !1259, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!385, !1022}
!1261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1262, line: 1099)
!1262 = !DISubprogram(name: "ilogbl", scope: !1095, file: !1095, line: 296, type: !1263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!385, !1027}
!1265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1266, line: 1101)
!1266 = !DISubprogram(name: "lgamma", scope: !1095, file: !1095, line: 251, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1268, line: 1102)
!1268 = !DISubprogram(name: "lgammaf", scope: !1095, file: !1095, line: 251, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1270, line: 1103)
!1270 = !DISubprogram(name: "lgammal", scope: !1095, file: !1095, line: 251, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1272, line: 1105)
!1272 = !DISubprogram(name: "llrint", scope: !1095, file: !1095, line: 327, type: !1273, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!994, !18}
!1275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1276, line: 1106)
!1276 = !DISubprogram(name: "llrintf", scope: !1095, file: !1095, line: 327, type: !1277, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!994, !1022}
!1279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1280, line: 1107)
!1280 = !DISubprogram(name: "llrintl", scope: !1095, file: !1095, line: 327, type: !1281, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!994, !1027}
!1283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1284, line: 1109)
!1284 = !DISubprogram(name: "llround", scope: !1095, file: !1095, line: 333, type: !1273, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1286, line: 1110)
!1286 = !DISubprogram(name: "llroundf", scope: !1095, file: !1095, line: 333, type: !1277, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1288, line: 1111)
!1288 = !DISubprogram(name: "llroundl", scope: !1095, file: !1095, line: 333, type: !1281, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1290, line: 1113)
!1290 = !DISubprogram(name: "log1p", scope: !1095, file: !1095, line: 131, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1292, line: 1114)
!1292 = !DISubprogram(name: "log1pf", scope: !1095, file: !1095, line: 131, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1294, line: 1115)
!1294 = !DISubprogram(name: "log1pl", scope: !1095, file: !1095, line: 131, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1296, line: 1117)
!1296 = !DISubprogram(name: "log2", scope: !1095, file: !1095, line: 144, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1298, line: 1118)
!1298 = !DISubprogram(name: "log2f", scope: !1095, file: !1095, line: 144, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1300, line: 1119)
!1300 = !DISubprogram(name: "log2l", scope: !1095, file: !1095, line: 144, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1302, line: 1121)
!1302 = !DISubprogram(name: "logb", scope: !1095, file: !1095, line: 134, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1304, line: 1122)
!1304 = !DISubprogram(name: "logbf", scope: !1095, file: !1095, line: 134, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1306, line: 1123)
!1306 = !DISubprogram(name: "logbl", scope: !1095, file: !1095, line: 134, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1308, line: 1125)
!1308 = !DISubprogram(name: "lrint", scope: !1095, file: !1095, line: 325, type: !1309, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!46, !18}
!1311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1312, line: 1126)
!1312 = !DISubprogram(name: "lrintf", scope: !1095, file: !1095, line: 325, type: !1313, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!46, !1022}
!1315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1316, line: 1127)
!1316 = !DISubprogram(name: "lrintl", scope: !1095, file: !1095, line: 325, type: !1317, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!46, !1027}
!1319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1320, line: 1129)
!1320 = !DISubprogram(name: "lround", scope: !1095, file: !1095, line: 331, type: !1309, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1322, line: 1130)
!1322 = !DISubprogram(name: "lroundf", scope: !1095, file: !1095, line: 331, type: !1313, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1324, line: 1131)
!1324 = !DISubprogram(name: "lroundl", scope: !1095, file: !1095, line: 331, type: !1317, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1326, line: 1133)
!1326 = !DISubprogram(name: "nan", scope: !1095, file: !1095, line: 224, type: !872, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1328, line: 1134)
!1328 = !DISubprogram(name: "nanf", scope: !1095, file: !1095, line: 224, type: !1329, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!1022, !632}
!1331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1332, line: 1135)
!1332 = !DISubprogram(name: "nanl", scope: !1095, file: !1095, line: 224, type: !1333, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!1027, !632}
!1335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1336, line: 1137)
!1336 = !DISubprogram(name: "nearbyint", scope: !1095, file: !1095, line: 305, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1338, line: 1138)
!1338 = !DISubprogram(name: "nearbyintf", scope: !1095, file: !1095, line: 305, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1340, line: 1139)
!1340 = !DISubprogram(name: "nearbyintl", scope: !1095, file: !1095, line: 305, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1342, line: 1141)
!1342 = !DISubprogram(name: "nextafter", scope: !1095, file: !1095, line: 282, type: !1104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1344, line: 1142)
!1344 = !DISubprogram(name: "nextafterf", scope: !1095, file: !1095, line: 282, type: !1187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1346, line: 1143)
!1346 = !DISubprogram(name: "nextafterl", scope: !1095, file: !1095, line: 282, type: !1191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1348, line: 1145)
!1348 = !DISubprogram(name: "nexttoward", scope: !1095, file: !1095, line: 284, type: !1349, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!18, !18, !1027}
!1351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1352, line: 1146)
!1352 = !DISubprogram(name: "nexttowardf", scope: !1095, file: !1095, line: 284, type: !1353, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!1022, !1022, !1027}
!1355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1356, line: 1147)
!1356 = !DISubprogram(name: "nexttowardl", scope: !1095, file: !1095, line: 284, type: !1191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1358, line: 1149)
!1358 = !DISubprogram(name: "remainder", scope: !1095, file: !1095, line: 288, type: !1104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1360, line: 1150)
!1360 = !DISubprogram(name: "remainderf", scope: !1095, file: !1095, line: 288, type: !1187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1362, line: 1151)
!1362 = !DISubprogram(name: "remainderl", scope: !1095, file: !1095, line: 288, type: !1191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1364, line: 1153)
!1364 = !DISubprogram(name: "remquo", scope: !1095, file: !1095, line: 318, type: !1365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!18, !18, !18, !1124}
!1367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1368, line: 1154)
!1368 = !DISubprogram(name: "remquof", scope: !1095, file: !1095, line: 318, type: !1369, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1022, !1022, !1022, !1124}
!1371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1372, line: 1155)
!1372 = !DISubprogram(name: "remquol", scope: !1095, file: !1095, line: 318, type: !1373, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!1027, !1027, !1027, !1124}
!1375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1376, line: 1157)
!1376 = !DISubprogram(name: "rint", scope: !1095, file: !1095, line: 279, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1378, line: 1158)
!1378 = !DISubprogram(name: "rintf", scope: !1095, file: !1095, line: 279, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1380, line: 1159)
!1380 = !DISubprogram(name: "rintl", scope: !1095, file: !1095, line: 279, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1382, line: 1161)
!1382 = !DISubprogram(name: "round", scope: !1095, file: !1095, line: 309, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1384, line: 1162)
!1384 = !DISubprogram(name: "roundf", scope: !1095, file: !1095, line: 309, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1386, line: 1163)
!1386 = !DISubprogram(name: "roundl", scope: !1095, file: !1095, line: 309, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1388, line: 1165)
!1388 = !DISubprogram(name: "scalbln", scope: !1095, file: !1095, line: 301, type: !1389, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!18, !18, !46}
!1391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1392, line: 1166)
!1392 = !DISubprogram(name: "scalblnf", scope: !1095, file: !1095, line: 301, type: !1393, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1022, !1022, !46}
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1396, line: 1167)
!1396 = !DISubprogram(name: "scalblnl", scope: !1095, file: !1095, line: 301, type: !1397, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!1027, !1027, !46}
!1399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1400, line: 1169)
!1400 = !DISubprogram(name: "scalbn", scope: !1095, file: !1095, line: 292, type: !1127, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1402, line: 1170)
!1402 = !DISubprogram(name: "scalbnf", scope: !1095, file: !1095, line: 292, type: !1403, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1022, !1022, !385}
!1405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1406, line: 1171)
!1406 = !DISubprogram(name: "scalbnl", scope: !1095, file: !1095, line: 292, type: !1407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!1027, !1027, !385}
!1409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1410, line: 1173)
!1410 = !DISubprogram(name: "tgamma", scope: !1095, file: !1095, line: 258, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1412, line: 1174)
!1412 = !DISubprogram(name: "tgammaf", scope: !1095, file: !1095, line: 258, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1414, line: 1175)
!1414 = !DISubprogram(name: "tgammal", scope: !1095, file: !1095, line: 258, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1416, line: 1177)
!1416 = !DISubprogram(name: "trunc", scope: !1095, file: !1095, line: 313, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1418, line: 1178)
!1418 = !DISubprogram(name: "truncf", scope: !1095, file: !1095, line: 313, type: !1159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1420, line: 1179)
!1420 = !DISubprogram(name: "truncl", scope: !1095, file: !1095, line: 313, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1422, line: 96)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1423, line: 48, baseType: !1424)
!1423 = !DIFile(filename: "/usr/include/stdio.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1425, line: 245, size: 1728, elements: !1426, identifier: "_ZTS8_IO_FILE")
!1425 = !DIFile(filename: "/usr/include/libio.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1442, !1444, !1445, !1446, !1449, !1451, !1453, !1457, !1460, !1462, !1463, !1464, !1465, !1466, !1467, !1468}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1424, file: !1425, line: 246, baseType: !385, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1424, file: !1425, line: 251, baseType: !913, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1424, file: !1425, line: 252, baseType: !913, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1424, file: !1425, line: 253, baseType: !913, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1424, file: !1425, line: 254, baseType: !913, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1424, file: !1425, line: 255, baseType: !913, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1424, file: !1425, line: 256, baseType: !913, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1424, file: !1425, line: 257, baseType: !913, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1424, file: !1425, line: 258, baseType: !913, size: 64, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1424, file: !1425, line: 260, baseType: !913, size: 64, offset: 576)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1424, file: !1425, line: 261, baseType: !913, size: 64, offset: 640)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1424, file: !1425, line: 262, baseType: !913, size: 64, offset: 704)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1424, file: !1425, line: 264, baseType: !1440, size: 64, offset: 768)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1425, line: 160, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1424, file: !1425, line: 266, baseType: !1443, size: 64, offset: 832)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1424, file: !1425, line: 268, baseType: !385, size: 32, offset: 896)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1424, file: !1425, line: 272, baseType: !385, size: 32, offset: 928)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1424, file: !1425, line: 274, baseType: !1447, size: 64, offset: 960)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1448, line: 131, baseType: !46)
!1448 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1424, file: !1425, line: 278, baseType: !1450, size: 16, offset: 1024)
!1450 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1424, file: !1425, line: 279, baseType: !1452, size: 8, offset: 1040)
!1452 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1424, file: !1425, line: 280, baseType: !1454, size: 8, offset: 1048)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 8, elements: !1455)
!1455 = !{!1456}
!1456 = !DISubrange(count: 1)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1424, file: !1425, line: 284, baseType: !1458, size: 64, offset: 1088)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1425, line: 154, baseType: null)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1424, file: !1425, line: 293, baseType: !1461, size: 64, offset: 1152)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1448, line: 132, baseType: !46)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1424, file: !1425, line: 302, baseType: !178, size: 64, offset: 1216)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1424, file: !1425, line: 303, baseType: !178, size: 64, offset: 1280)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1424, file: !1425, line: 304, baseType: !178, size: 64, offset: 1344)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1424, file: !1425, line: 305, baseType: !178, size: 64, offset: 1408)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1424, file: !1425, line: 306, baseType: !887, size: 64, offset: 1472)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1424, file: !1425, line: 308, baseType: !385, size: 32, offset: 1536)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1424, file: !1425, line: 310, baseType: !1469, size: 160, offset: 1568)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 160, elements: !1470)
!1470 = !{!1471}
!1471 = !DISubrange(count: 20)
!1472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1473, line: 97)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1423, line: 110, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !1475, line: 25, baseType: !1476)
!1475 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1476 = !DICompositeType(tag: DW_TAG_structure_type, file: !1475, line: 21, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1478, line: 99)
!1478 = !DISubprogram(name: "clearerr", scope: !1423, file: !1423, line: 826, type: !1479, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1483, line: 100)
!1483 = !DISubprogram(name: "fclose", scope: !1423, file: !1423, line: 237, type: !1484, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!385, !1481}
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1487, line: 101)
!1487 = !DISubprogram(name: "feof", scope: !1423, file: !1423, line: 828, type: !1484, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1489, line: 102)
!1489 = !DISubprogram(name: "ferror", scope: !1423, file: !1423, line: 830, type: !1484, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1491, line: 103)
!1491 = !DISubprogram(name: "fflush", scope: !1423, file: !1423, line: 242, type: !1484, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1493, line: 104)
!1493 = !DISubprogram(name: "fgetc", scope: !1423, file: !1423, line: 531, type: !1484, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1495, line: 105)
!1495 = !DISubprogram(name: "fgetpos", scope: !1423, file: !1423, line: 798, type: !1496, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!385, !1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1481)
!1499 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1500)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1502, line: 106)
!1502 = !DISubprogram(name: "fgets", scope: !1423, file: !1423, line: 622, type: !1503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!913, !981, !385, !1498}
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1506, line: 107)
!1506 = !DISubprogram(name: "fopen", scope: !1423, file: !1423, line: 272, type: !1507, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!1481, !937, !937}
!1509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1510, line: 108)
!1510 = !DISubprogram(name: "fprintf", scope: !1423, file: !1423, line: 356, type: !1511, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!385, !1498, !937, null}
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1514, line: 109)
!1514 = !DISubprogram(name: "fputc", scope: !1423, file: !1423, line: 573, type: !1515, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!385, !385, !1481}
!1517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1518, line: 110)
!1518 = !DISubprogram(name: "fputs", scope: !1423, file: !1423, line: 689, type: !1519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!385, !937, !1498}
!1521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1522, line: 111)
!1522 = !DISubprogram(name: "fread", scope: !1423, file: !1423, line: 709, type: !1523, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!887, !1525, !887, !887, !1498}
!1525 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1527, line: 112)
!1527 = !DISubprogram(name: "freopen", scope: !1423, file: !1423, line: 278, type: !1528, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!1481, !937, !937, !1498}
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1531, line: 113)
!1531 = !DISubprogram(name: "fscanf", scope: !1423, file: !1423, line: 425, type: !1511, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1533, line: 114)
!1533 = !DISubprogram(name: "fseek", scope: !1423, file: !1423, line: 749, type: !1534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!385, !1481, !46, !385}
!1536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1537, line: 115)
!1537 = !DISubprogram(name: "fsetpos", scope: !1423, file: !1423, line: 803, type: !1538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!385, !1481, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1473)
!1542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1543, line: 116)
!1543 = !DISubprogram(name: "ftell", scope: !1423, file: !1423, line: 754, type: !1544, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!46, !1481}
!1546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1547, line: 117)
!1547 = !DISubprogram(name: "fwrite", scope: !1423, file: !1423, line: 715, type: !1548, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!887, !1550, !887, !887, !1498}
!1550 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!1551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1552, line: 118)
!1552 = !DISubprogram(name: "getc", scope: !1423, file: !1423, line: 532, type: !1484, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1554, line: 119)
!1554 = !DISubprogram(name: "getchar", scope: !1555, file: !1555, line: 44, type: !950, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1555 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1557, line: 120)
!1557 = !DISubprogram(name: "gets", scope: !1423, file: !1423, line: 638, type: !1558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!913, !913}
!1560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1561, line: 121)
!1561 = !DISubprogram(name: "perror", scope: !1423, file: !1423, line: 846, type: !1562, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !632}
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1565, line: 122)
!1565 = !DISubprogram(name: "printf", scope: !1423, file: !1423, line: 362, type: !1566, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!385, !937, null}
!1568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1569, line: 123)
!1569 = !DISubprogram(name: "putc", scope: !1423, file: !1423, line: 574, type: !1515, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1571, line: 124)
!1571 = !DISubprogram(name: "putchar", scope: !1555, file: !1555, line: 79, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1573, line: 125)
!1573 = !DISubprogram(name: "puts", scope: !1423, file: !1423, line: 695, type: !876, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1575, line: 126)
!1575 = !DISubprogram(name: "remove", scope: !1423, file: !1423, line: 178, type: !876, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1577, line: 127)
!1577 = !DISubprogram(name: "rename", scope: !1423, file: !1423, line: 180, type: !1578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!385, !632, !632}
!1580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1581, line: 128)
!1581 = !DISubprogram(name: "rewind", scope: !1423, file: !1423, line: 759, type: !1479, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1583, line: 129)
!1583 = !DISubprogram(name: "scanf", scope: !1423, file: !1423, line: 431, type: !1566, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1585, line: 130)
!1585 = !DISubprogram(name: "setbuf", scope: !1423, file: !1423, line: 332, type: !1586, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1498, !981}
!1588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1589, line: 131)
!1589 = !DISubprogram(name: "setvbuf", scope: !1423, file: !1423, line: 336, type: !1590, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!385, !1498, !981, !385, !887}
!1592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1593, line: 132)
!1593 = !DISubprogram(name: "sprintf", scope: !1423, file: !1423, line: 364, type: !1594, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!385, !981, !937, null}
!1596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1597, line: 133)
!1597 = !DISubprogram(name: "sscanf", scope: !1423, file: !1423, line: 433, type: !1598, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!385, !937, !937, null}
!1600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1601, line: 134)
!1601 = !DISubprogram(name: "tmpfile", scope: !1423, file: !1423, line: 195, type: !1602, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1481}
!1604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1605, line: 135)
!1605 = !DISubprogram(name: "tmpnam", scope: !1423, file: !1423, line: 209, type: !1558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1607, line: 136)
!1607 = !DISubprogram(name: "ungetc", scope: !1423, file: !1423, line: 702, type: !1515, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1609, line: 137)
!1609 = !DISubprogram(name: "vfprintf", scope: !1423, file: !1423, line: 371, type: !1610, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!385, !1498, !937, !1612}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1614, identifier: "_ZTS13__va_list_tag")
!1614 = !{!1615, !1616, !1617, !1618}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1613, file: !3, baseType: !960, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1613, file: !3, baseType: !960, size: 32, offset: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1613, file: !3, baseType: !178, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1613, file: !3, baseType: !178, size: 64, offset: 128)
!1619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1620, line: 138)
!1620 = !DISubprogram(name: "vprintf", scope: !1555, file: !1555, line: 36, type: !1621, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!385, !937, !1612}
!1623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1624, line: 139)
!1624 = !DISubprogram(name: "vsprintf", scope: !1423, file: !1423, line: 379, type: !1625, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!385, !981, !937, !1612}
!1627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1628, line: 168)
!1628 = !DISubprogram(name: "snprintf", scope: !1423, file: !1423, line: 386, type: !1629, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!385, !981, !887, !937, null}
!1631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1632, line: 169)
!1632 = !DISubprogram(name: "vfscanf", scope: !1423, file: !1423, line: 471, type: !1610, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1634, line: 170)
!1634 = !DISubprogram(name: "vscanf", scope: !1423, file: !1423, line: 479, type: !1621, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1636, line: 171)
!1636 = !DISubprogram(name: "vsnprintf", scope: !1423, file: !1423, line: 390, type: !1637, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!385, !981, !887, !937, !1612}
!1639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1640, line: 172)
!1640 = !DISubprogram(name: "vsscanf", scope: !1423, file: !1423, line: 483, type: !1641, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!385, !937, !937, !1612}
!1643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1628, line: 178)
!1644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1632, line: 179)
!1645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1634, line: 180)
!1646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1636, line: 181)
!1647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1640, line: 182)
!1648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1649, line: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1650, line: 106, baseType: !1651)
!1650 = !DIFile(filename: "/usr/include/wchar.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1650, line: 94, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1650, line: 82, size: 64, elements: !1653, identifier: "_ZTS11__mbstate_t")
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1652, file: !1650, line: 84, baseType: !385, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1652, file: !1650, line: 93, baseType: !1656, size: 32, offset: 32)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1652, file: !1650, line: 85, size: 32, elements: !1657, identifier: "_ZTSN11__mbstate_tUt_E")
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1656, file: !1650, line: 88, baseType: !960, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1656, file: !1650, line: 92, baseType: !1660, size: 32)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 32, elements: !1661)
!1661 = !{!1662}
!1662 = !DISubrange(count: 4)
!1663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1664, line: 139)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !888, line: 132, baseType: !960)
!1665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1666, line: 141)
!1666 = !DISubprogram(name: "btowc", scope: !1650, file: !1650, line: 388, type: !1667, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!1664, !385}
!1669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1670, line: 142)
!1670 = !DISubprogram(name: "fgetwc", scope: !1650, file: !1650, line: 745, type: !1671, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!1664, !1673}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1423, line: 64, baseType: !1424)
!1675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1676, line: 143)
!1676 = !DISubprogram(name: "fgetws", scope: !1650, file: !1650, line: 774, type: !1677, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!935, !934, !385, !1679}
!1679 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1673)
!1680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1681, line: 144)
!1681 = !DISubprogram(name: "fputwc", scope: !1650, file: !1650, line: 759, type: !1682, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!1664, !936, !1673}
!1684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1685, line: 145)
!1685 = !DISubprogram(name: "fputws", scope: !1650, file: !1650, line: 781, type: !1686, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!385, !982, !1679}
!1688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1689, line: 146)
!1689 = !DISubprogram(name: "fwide", scope: !1650, file: !1650, line: 587, type: !1690, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!385, !1673, !385}
!1692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1693, line: 147)
!1693 = !DISubprogram(name: "fwprintf", scope: !1650, file: !1650, line: 594, type: !1694, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!385, !1679, !982, null}
!1696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1697, line: 148)
!1697 = !DISubprogram(name: "fwscanf", scope: !1650, file: !1650, line: 635, type: !1694, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1699, line: 149)
!1699 = !DISubprogram(name: "getwc", scope: !1650, file: !1650, line: 746, type: !1671, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1701, line: 150)
!1701 = !DISubprogram(name: "getwchar", scope: !1650, file: !1650, line: 752, type: !1702, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1664}
!1704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1705, line: 151)
!1705 = !DISubprogram(name: "mbrlen", scope: !1650, file: !1650, line: 399, type: !1706, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!887, !937, !887, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1709)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1711, line: 152)
!1711 = !DISubprogram(name: "mbrtowc", scope: !1650, file: !1650, line: 365, type: !1712, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!887, !934, !937, !887, !1708}
!1714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1715, line: 153)
!1715 = !DISubprogram(name: "mbsinit", scope: !1650, file: !1650, line: 361, type: !1716, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!385, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1721, line: 154)
!1721 = !DISubprogram(name: "mbsrtowcs", scope: !1650, file: !1650, line: 408, type: !1722, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!887, !934, !1724, !887, !1708}
!1724 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1725)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!1726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1727, line: 155)
!1727 = !DISubprogram(name: "putwc", scope: !1650, file: !1650, line: 760, type: !1682, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1729, line: 156)
!1729 = !DISubprogram(name: "putwchar", scope: !1650, file: !1650, line: 766, type: !1730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!1664, !936}
!1732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1733, line: 158)
!1733 = !DISubprogram(name: "swprintf", scope: !1650, file: !1650, line: 604, type: !1734, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!385, !934, !887, !982, null}
!1736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1737, line: 160)
!1737 = !DISubprogram(name: "swscanf", scope: !1650, file: !1650, line: 645, type: !1738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!385, !982, !982, null}
!1740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1741, line: 161)
!1741 = !DISubprogram(name: "ungetwc", scope: !1650, file: !1650, line: 789, type: !1742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!1664, !1664, !1673}
!1744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1745, line: 162)
!1745 = !DISubprogram(name: "vfwprintf", scope: !1650, file: !1650, line: 612, type: !1746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!385, !1679, !982, !1612}
!1748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1749, line: 164)
!1749 = !DISubprogram(name: "vfwscanf", scope: !1650, file: !1650, line: 689, type: !1746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1751, line: 167)
!1751 = !DISubprogram(name: "vswprintf", scope: !1650, file: !1650, line: 625, type: !1752, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!385, !934, !887, !982, !1612}
!1754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1755, line: 170)
!1755 = !DISubprogram(name: "vswscanf", scope: !1650, file: !1650, line: 701, type: !1756, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!385, !982, !982, !1612}
!1758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1759, line: 172)
!1759 = !DISubprogram(name: "vwprintf", scope: !1650, file: !1650, line: 620, type: !1760, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!385, !982, !1612}
!1762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1763, line: 174)
!1763 = !DISubprogram(name: "vwscanf", scope: !1650, file: !1650, line: 697, type: !1760, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1765, line: 176)
!1765 = !DISubprogram(name: "wcrtomb", scope: !1650, file: !1650, line: 370, type: !1766, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!887, !981, !936, !1708}
!1768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1769, line: 177)
!1769 = !DISubprogram(name: "wcscat", scope: !1650, file: !1650, line: 155, type: !1770, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!935, !934, !982}
!1772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1773, line: 178)
!1773 = !DISubprogram(name: "wcscmp", scope: !1650, file: !1650, line: 163, type: !1774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!385, !983, !983}
!1776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1777, line: 179)
!1777 = !DISubprogram(name: "wcscoll", scope: !1650, file: !1650, line: 192, type: !1774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1779, line: 180)
!1779 = !DISubprogram(name: "wcscpy", scope: !1650, file: !1650, line: 147, type: !1770, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1781, line: 181)
!1781 = !DISubprogram(name: "wcscspn", scope: !1650, file: !1650, line: 252, type: !1782, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!887, !983, !983}
!1784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1785, line: 182)
!1785 = !DISubprogram(name: "wcsftime", scope: !1650, file: !1650, line: 855, type: !1786, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!887, !934, !887, !982, !1788}
!1788 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1789)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1650, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!1792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1793, line: 183)
!1793 = !DISubprogram(name: "wcslen", scope: !1650, file: !1650, line: 287, type: !1794, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!887, !983}
!1796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1797, line: 184)
!1797 = !DISubprogram(name: "wcsncat", scope: !1650, file: !1650, line: 158, type: !1798, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!935, !934, !982, !887}
!1800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1801, line: 185)
!1801 = !DISubprogram(name: "wcsncmp", scope: !1650, file: !1650, line: 166, type: !1802, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!385, !983, !983, !887}
!1804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1805, line: 186)
!1805 = !DISubprogram(name: "wcsncpy", scope: !1650, file: !1650, line: 150, type: !1798, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1807, line: 187)
!1807 = !DISubprogram(name: "wcsrtombs", scope: !1650, file: !1650, line: 414, type: !1808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!887, !981, !1810, !887, !1708}
!1810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1811)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!1812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1813, line: 188)
!1813 = !DISubprogram(name: "wcsspn", scope: !1650, file: !1650, line: 256, type: !1782, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1815, line: 189)
!1815 = !DISubprogram(name: "wcstod", scope: !1650, file: !1650, line: 450, type: !1816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!18, !982, !1818}
!1818 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1819)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!1820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1821, line: 191)
!1821 = !DISubprogram(name: "wcstof", scope: !1650, file: !1650, line: 457, type: !1822, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!1022, !982, !1818}
!1824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1825, line: 193)
!1825 = !DISubprogram(name: "wcstok", scope: !1650, file: !1650, line: 282, type: !1826, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!935, !934, !982, !1818}
!1828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1829, line: 194)
!1829 = !DISubprogram(name: "wcstol", scope: !1650, file: !1650, line: 468, type: !1830, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!46, !982, !1818, !385}
!1832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1833, line: 195)
!1833 = !DISubprogram(name: "wcstoul", scope: !1650, file: !1650, line: 473, type: !1834, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!136, !982, !1818, !385}
!1836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1837, line: 196)
!1837 = !DISubprogram(name: "wcsxfrm", scope: !1650, file: !1650, line: 196, type: !1838, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!887, !934, !982, !887}
!1840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1841, line: 197)
!1841 = !DISubprogram(name: "wctob", scope: !1650, file: !1650, line: 394, type: !1842, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!385, !1664}
!1844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1845, line: 198)
!1845 = !DISubprogram(name: "wmemcmp", scope: !1650, file: !1650, line: 325, type: !1802, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1847, line: 199)
!1847 = !DISubprogram(name: "wmemcpy", scope: !1650, file: !1650, line: 329, type: !1798, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1849, line: 200)
!1849 = !DISubprogram(name: "wmemmove", scope: !1650, file: !1650, line: 334, type: !1850, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!935, !935, !983, !887}
!1852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1853, line: 201)
!1853 = !DISubprogram(name: "wmemset", scope: !1650, file: !1650, line: 338, type: !1854, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!935, !935, !936, !887}
!1856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1857, line: 202)
!1857 = !DISubprogram(name: "wprintf", scope: !1650, file: !1650, line: 601, type: !1858, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!385, !982, null}
!1860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1861, line: 203)
!1861 = !DISubprogram(name: "wscanf", scope: !1650, file: !1650, line: 642, type: !1858, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1863, line: 204)
!1863 = !DISubprogram(name: "wcschr", scope: !1650, file: !1650, line: 227, type: !1864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!935, !983, !936}
!1866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1867, line: 205)
!1867 = !DISubprogram(name: "wcspbrk", scope: !1650, file: !1650, line: 266, type: !1868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!935, !983, !983}
!1870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1871, line: 206)
!1871 = !DISubprogram(name: "wcsrchr", scope: !1650, file: !1650, line: 237, type: !1864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1873, line: 207)
!1873 = !DISubprogram(name: "wcsstr", scope: !1650, file: !1650, line: 277, type: !1868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1875, line: 208)
!1875 = !DISubprogram(name: "wmemchr", scope: !1650, file: !1650, line: 320, type: !1876, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!935, !983, !936, !887}
!1878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1879, line: 248)
!1879 = !DISubprogram(name: "wcstold", scope: !1650, file: !1650, line: 459, type: !1880, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1027, !982, !1818}
!1882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1883, line: 257)
!1883 = !DISubprogram(name: "wcstoll", scope: !1650, file: !1650, line: 483, type: !1884, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!994, !982, !1818, !385}
!1886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !1887, line: 258)
!1887 = !DISubprogram(name: "wcstoull", scope: !1650, file: !1650, line: 490, type: !1888, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!779, !982, !1818, !385}
!1890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1879, line: 264)
!1891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1883, line: 265)
!1892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1887, line: 266)
!1893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1821, line: 280)
!1894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1749, line: 283)
!1895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1755, line: 286)
!1896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1763, line: 289)
!1897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1879, line: 293)
!1898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1883, line: 294)
!1899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1887, line: 295)
!1900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1901, line: 48)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !69, line: 194, baseType: !1452)
!1902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1903, line: 49)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !69, line: 195, baseType: !1904)
!1904 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1906, line: 50)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !69, line: 196, baseType: !385)
!1907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !68, line: 51)
!1908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1909, line: 53)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1910, line: 90, baseType: !1452)
!1910 = !DIFile(filename: "/usr/include/stdint.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1912, line: 54)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1910, line: 92, baseType: !46)
!1913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1914, line: 55)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1910, line: 93, baseType: !46)
!1915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1916, line: 56)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1910, line: 94, baseType: !46)
!1917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1918, line: 58)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1910, line: 65, baseType: !1452)
!1919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1920, line: 59)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1910, line: 66, baseType: !1904)
!1921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1922, line: 60)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1910, line: 67, baseType: !385)
!1923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1924, line: 61)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1910, line: 69, baseType: !46)
!1925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1926, line: 63)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1910, line: 134, baseType: !46)
!1927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1928, line: 64)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1910, line: 119, baseType: !46)
!1929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1930, line: 66)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1910, line: 48, baseType: !1931)
!1931 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1933, line: 67)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1910, line: 49, baseType: !1450)
!1934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1935, line: 68)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1910, line: 51, baseType: !960)
!1936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1937, line: 69)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1910, line: 55, baseType: !136)
!1938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1939, line: 71)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1910, line: 103, baseType: !1931)
!1940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1941, line: 72)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1910, line: 105, baseType: !136)
!1942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1943, line: 73)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1910, line: 106, baseType: !136)
!1944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1945, line: 74)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1910, line: 107, baseType: !136)
!1946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1947, line: 76)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1910, line: 76, baseType: !1931)
!1948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1949, line: 77)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1910, line: 77, baseType: !1450)
!1950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1951, line: 78)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1910, line: 78, baseType: !960)
!1952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1953, line: 79)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1910, line: 80, baseType: !136)
!1954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1955, line: 81)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1910, line: 135, baseType: !136)
!1956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1957, line: 82)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1910, line: 122, baseType: !136)
!1958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !135, line: 44)
!1959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !84, entity: !187, line: 45)
!1960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1961, line: 53)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1962, line: 53, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1962 = !DIFile(filename: "/usr/include/locale.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1964, line: 54)
!1964 = !DISubprogram(name: "setlocale", scope: !1962, file: !1962, line: 124, type: !1965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!913, !385, !632}
!1967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1968, line: 55)
!1968 = !DISubprogram(name: "localeconv", scope: !1962, file: !1962, line: 127, type: !1969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!1971}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1973, line: 64)
!1973 = !DISubprogram(name: "isalnum", scope: !1974, file: !1974, line: 110, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1974 = !DIFile(filename: "/usr/include/ctype.h", directory: "/u/v/a/van-sandt/wordsort/8")
!1975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1976, line: 65)
!1976 = !DISubprogram(name: "isalpha", scope: !1974, file: !1974, line: 111, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1978, line: 66)
!1978 = !DISubprogram(name: "iscntrl", scope: !1974, file: !1974, line: 112, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1980, line: 67)
!1980 = !DISubprogram(name: "isdigit", scope: !1974, file: !1974, line: 113, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1982, line: 68)
!1982 = !DISubprogram(name: "isgraph", scope: !1974, file: !1974, line: 115, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1984, line: 69)
!1984 = !DISubprogram(name: "islower", scope: !1974, file: !1974, line: 114, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1986, line: 70)
!1986 = !DISubprogram(name: "isprint", scope: !1974, file: !1974, line: 116, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1988, line: 71)
!1988 = !DISubprogram(name: "ispunct", scope: !1974, file: !1974, line: 117, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1990, line: 72)
!1990 = !DISubprogram(name: "isspace", scope: !1974, file: !1974, line: 118, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1992, line: 73)
!1992 = !DISubprogram(name: "isupper", scope: !1974, file: !1974, line: 119, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1994, line: 74)
!1994 = !DISubprogram(name: "isxdigit", scope: !1974, file: !1974, line: 120, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1996, line: 75)
!1996 = !DISubprogram(name: "tolower", scope: !1974, file: !1974, line: 124, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1998, line: 76)
!1998 = !DISubprogram(name: "toupper", scope: !1974, file: !1974, line: 127, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2000, line: 87)
!2000 = !DISubprogram(name: "isblank", scope: !1974, file: !1974, line: 136, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_class_type, name: "Benchmark", scope: !838, file: !13, line: 507, flags: DIFlagFwdDecl, identifier: "_ZTSN9benchmark8internal9BenchmarkE")
!2003 = !{i32 2, !"Dwarf Version", i32 4}
!2004 = !{i32 2, !"Debug Info Version", i32 3}
!2005 = !{!"clang version 5.0.0 (https://github.com/llvm-mirror/clang.git 007c596e637ba3a933a07b5ee277201612c7fb61) (http://llvm.org/git/llvm.git e77d07916ef01861b911ff0399d2c4e9120e6499)"}
!2006 = distinct !DISubprogram(name: "range", linkageName: "_Z5rangei", scope: !3, file: !3, line: 10, type: !2007, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2010)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!2009, !385}
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "vi", file: !3, line: 8, baseType: !402)
!2010 = !{!2011, !2012, !2013}
!2011 = !DILocalVariable(name: "nNums", arg: 1, scope: !2006, file: !3, line: 10, type: !385)
!2012 = !DILocalVariable(name: "r", scope: !2006, file: !3, line: 11, type: !2009)
!2013 = !DILocalVariable(name: "i", scope: !2014, file: !3, line: 13, type: !385)
!2014 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 13, column: 3)
!2015 = !DIExpression()
!2016 = !DILocation(line: 10, column: 14, scope: !2006)
!2017 = !DILocation(line: 11, column: 6, scope: !2006)
!2018 = !DILocalVariable(name: "this", arg: 1, scope: !2019, type: !2028, flags: DIFlagArtificial | DIFlagObjectPointer)
!2019 = distinct !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorIlSaIlEE7reserveEm", scope: !402, file: !2020, line: 66, type: !548, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !556, variables: !2021)
!2020 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/vector.tcc", directory: "/u/v/a/van-sandt/wordsort/8")
!2021 = !{!2018, !2022, !2023, !2027}
!2022 = !DILocalVariable(name: "__n", arg: 2, scope: !2019, file: !72, line: 755, type: !345)
!2023 = !DILocalVariable(name: "__old_size", scope: !2024, file: !2020, line: 72, type: !2026)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !2020, line: 71, column: 2)
!2025 = distinct !DILexicalBlock(scope: !2019, file: !2020, line: 70, column: 11)
!2026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!2027 = !DILocalVariable(name: "__tmp", scope: !2024, file: !2020, line: 73, type: !638)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!2029 = !DILocation(line: 0, scope: !2019, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 12, column: 5, scope: !2006)
!2031 = !DILocation(line: 755, column: 25, scope: !2019, inlinedAt: !2030)
!2032 = !DILocalVariable(name: "this", arg: 1, scope: !2033, type: !2035, flags: DIFlagArtificial | DIFlagObjectPointer)
!2033 = distinct !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorIlSaIlEE8capacityEv", scope: !402, file: !72, line: 725, type: !544, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !552, variables: !2034)
!2034 = !{!2032}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!2036 = !DILocation(line: 0, scope: !2033, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 70, column: 17, scope: !2025, inlinedAt: !2030)
!2038 = !DILocation(line: 726, column: 40, scope: !2033, inlinedAt: !2037)
!2039 = !DILocalVariable(name: "this", arg: 1, scope: !2040, type: !2035, flags: DIFlagArtificial | DIFlagObjectPointer)
!2040 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIlSaIlEE4sizeEv", scope: !402, file: !72, line: 645, type: !544, isLocal: false, isDefinition: true, scopeLine: 646, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !543, variables: !2041)
!2041 = !{!2039}
!2042 = !DILocation(line: 0, scope: !2040, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 72, column: 33, scope: !2024, inlinedAt: !2030)
!2044 = !DILocation(line: 646, column: 40, scope: !2040, inlinedAt: !2043)
!2045 = !DILocation(line: 72, column: 20, scope: !2024, inlinedAt: !2030)
!2046 = !DILocalVariable(name: "__last", arg: 4, scope: !2047, file: !72, line: 1136, type: !346)
!2047 = distinct !DISubprogram(name: "_M_allocate_and_copy<std::move_iterator<long *> >", linkageName: "_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyISt13move_iteratorIPlEEES4_mT_S6_", scope: !402, file: !72, line: 1135, type: !2048, isLocal: false, isDefinition: true, scopeLine: 1137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2050, declaration: !2052, variables: !2053)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!638, !408, !345, !346, !346}
!2050 = !{!2051}
!2051 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !346)
!2052 = !DISubprogram(name: "_M_allocate_and_copy<std::move_iterator<long *> >", linkageName: "_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyISt13move_iteratorIPlEEES4_mT_S6_", scope: !402, file: !72, line: 1135, type: !2048, isLocal: false, isDefinition: false, scopeLine: 1135, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true, templateParams: !2050)
!2053 = !{!2054, !2055, !2056, !2046, !2057}
!2054 = !DILocalVariable(name: "this", arg: 1, scope: !2047, type: !2028, flags: DIFlagArtificial | DIFlagObjectPointer)
!2055 = !DILocalVariable(name: "__n", arg: 2, scope: !2047, file: !72, line: 1135, type: !345)
!2056 = !DILocalVariable(name: "__first", arg: 3, scope: !2047, file: !72, line: 1136, type: !346)
!2057 = !DILocalVariable(name: "__result", scope: !2047, file: !72, line: 1138, type: !638)
!2058 = !DIExpression(DW_OP_deref)
!2059 = !DILocation(line: 1136, column: 52, scope: !2047, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 73, column: 20, scope: !2024, inlinedAt: !2030)
!2061 = !DILocation(line: 0, scope: !2047, inlinedAt: !2060)
!2062 = !DILocation(line: 1135, column: 40, scope: !2047, inlinedAt: !2060)
!2063 = !DILocation(line: 1136, column: 26, scope: !2047, inlinedAt: !2060)
!2064 = !DILocalVariable(name: "__n", arg: 2, scope: !2065, file: !72, line: 167, type: !135)
!2065 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm", scope: !73, file: !72, line: 167, type: !326, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !325, variables: !2066)
!2066 = !{!2067, !2064}
!2067 = !DILocalVariable(name: "this", arg: 1, scope: !2065, type: !2068, flags: DIFlagArtificial | DIFlagObjectPointer)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!2069 = !DILocation(line: 167, column: 26, scope: !2065, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 1138, column: 29, scope: !2047, inlinedAt: !2060)
!2071 = !DILocalVariable(name: "__n", arg: 2, scope: !2072, file: !103, line: 99, type: !134)
!2072 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv", scope: !102, file: !103, line: 99, type: !132, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !131, variables: !2073)
!2073 = !{!2074, !2071, !2076}
!2074 = !DILocalVariable(name: "this", arg: 1, scope: !2072, type: !2075, flags: DIFlagArtificial | DIFlagObjectPointer)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!2076 = !DILocalVariable(arg: 3, scope: !2072, file: !103, line: 99, type: !137)
!2077 = !DILocation(line: 99, column: 26, scope: !2072, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 168, column: 35, scope: !2065, inlinedAt: !2070)
!2079 = !DILocation(line: 99, column: 43, scope: !2072, inlinedAt: !2078)
!2080 = !DILocation(line: 104, column: 27, scope: !2072, inlinedAt: !2078)
!2081 = !DILocation(line: 1138, column: 12, scope: !2047, inlinedAt: !2060)
!2082 = !DILocalVariable(name: "__last", arg: 2, scope: !2083, file: !2084, line: 256, type: !346)
!2083 = distinct !DISubprogram(name: "__uninitialized_copy_a<std::move_iterator<long *>, long *, long>", linkageName: "_ZSt22__uninitialized_copy_aISt13move_iteratorIPlES1_lET0_T_S4_S3_RSaIT1_E", scope: !7, file: !2084, line: 256, type: !2085, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2087, variables: !2090)
!2084 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stl_uninitialized.h", directory: "/u/v/a/van-sandt/wordsort/8")
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!119, !346, !346, !119, !235}
!2087 = !{!2088, !2089, !146}
!2088 = !DITemplateTypeParameter(name: "_InputIterator", type: !346)
!2089 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !119)
!2090 = !{!2091, !2082, !2092, !2093}
!2091 = !DILocalVariable(name: "__first", arg: 1, scope: !2083, file: !2084, line: 256, type: !346)
!2092 = !DILocalVariable(name: "__result", arg: 3, scope: !2083, file: !2084, line: 257, type: !119)
!2093 = !DILocalVariable(arg: 4, scope: !2083, file: !2084, line: 257, type: !235)
!2094 = !DILocation(line: 256, column: 67, scope: !2083, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 1141, column: 8, scope: !2096, inlinedAt: !2060)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !72, line: 1140, column: 6)
!2097 = distinct !DILexicalBlock(scope: !2047, file: !72, line: 1139, column: 4)
!2098 = !DILocation(line: 256, column: 43, scope: !2083, inlinedAt: !2095)
!2099 = !DILocation(line: 257, column: 24, scope: !2083, inlinedAt: !2095)
!2100 = !DILocalVariable(name: "__last", arg: 2, scope: !2101, file: !2084, line: 107, type: !346)
!2101 = distinct !DISubprogram(name: "uninitialized_copy<std::move_iterator<long *>, long *>", linkageName: "_ZSt18uninitialized_copyISt13move_iteratorIPlES1_ET0_T_S4_S3_", scope: !7, file: !2084, line: 107, type: !2102, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2104, variables: !2105)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!119, !346, !346, !119}
!2104 = !{!2088, !2089}
!2105 = !{!2106, !2100, !2107}
!2106 = !DILocalVariable(name: "__first", arg: 1, scope: !2101, file: !2084, line: 107, type: !346)
!2107 = !DILocalVariable(name: "__result", arg: 3, scope: !2101, file: !2084, line: 108, type: !119)
!2108 = !DILocation(line: 107, column: 63, scope: !2101, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 258, column: 14, scope: !2083, inlinedAt: !2095)
!2110 = !DILocation(line: 107, column: 39, scope: !2101, inlinedAt: !2109)
!2111 = !DILocation(line: 108, column: 27, scope: !2101, inlinedAt: !2109)
!2112 = !DILocalVariable(name: "__last", arg: 2, scope: !2113, file: !2084, line: 91, type: !346)
!2113 = distinct !DISubprogram(name: "__uninit_copy<std::move_iterator<long *>, long *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPlES3_EET0_T_S6_S5_", scope: !2114, file: !2084, line: 91, type: !2102, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2104, declaration: !2117, variables: !2118)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_copy<true>", scope: !7, file: !2084, line: 87, size: 8, elements: !43, templateParams: !2115, identifier: "_ZTSSt20__uninitialized_copyILb1EE")
!2115 = !{!2116}
!2116 = !DITemplateValueParameter(name: "_TrivialValueTypes", type: !198, value: i8 1)
!2117 = !DISubprogram(name: "__uninit_copy<std::move_iterator<long *>, long *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPlES3_EET0_T_S6_S5_", scope: !2114, file: !2084, line: 91, type: !2102, isLocal: false, isDefinition: false, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, templateParams: !2104)
!2118 = !{!2119, !2112, !2120}
!2119 = !DILocalVariable(name: "__first", arg: 1, scope: !2113, file: !2084, line: 91, type: !346)
!2120 = !DILocalVariable(name: "__result", arg: 3, scope: !2113, file: !2084, line: 92, type: !119)
!2121 = !DILocation(line: 91, column: 62, scope: !2113, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 115, column: 14, scope: !2101, inlinedAt: !2109)
!2123 = !DILocation(line: 91, column: 38, scope: !2113, inlinedAt: !2122)
!2124 = !DILocation(line: 92, column: 26, scope: !2113, inlinedAt: !2122)
!2125 = !DILocalVariable(name: "__last", arg: 2, scope: !2126, file: !2133, line: 213, type: !346)
!2126 = distinct !DISubprogram(name: "copy<std::move_iterator<long *>, long *>", linkageName: "_ZSt4copyISt13move_iteratorIPlES1_ET0_T_S4_S3_", scope: !7, file: !2127, line: 450, type: !2102, isLocal: false, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2128, variables: !2131)
!2127 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stl_algobase.h", directory: "/u/v/a/van-sandt/wordsort/8")
!2128 = !{!2129, !2130}
!2129 = !DITemplateTypeParameter(name: "_IIter", type: !346)
!2130 = !DITemplateTypeParameter(name: "_OIter", type: !119)
!2131 = !{!2132, !2125, !2134}
!2132 = !DILocalVariable(name: "__first", arg: 1, scope: !2126, file: !2133, line: 213, type: !346)
!2133 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/algorithmfwd.h", directory: "/u/v/a/van-sandt/wordsort/8")
!2134 = !DILocalVariable(name: "__result", arg: 3, scope: !2126, file: !2133, line: 213, type: !119)
!2135 = !DILocation(line: 213, column: 24, scope: !2126, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 93, column: 18, scope: !2113, inlinedAt: !2122)
!2137 = !DILocation(line: 213, column: 16, scope: !2126, inlinedAt: !2136)
!2138 = !DILocation(line: 213, column: 32, scope: !2126, inlinedAt: !2136)
!2139 = !DILocalVariable(name: "__last", arg: 2, scope: !2140, file: !2127, line: 424, type: !119)
!2140 = distinct !DISubprogram(name: "__copy_move_a2<true, long *, long *>", linkageName: "_ZSt14__copy_move_a2ILb1EPlS0_ET1_T0_S2_S1_", scope: !7, file: !2127, line: 424, type: !2141, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2143, variables: !2147)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!119, !119, !119, !119}
!2143 = !{!2144, !2145, !2146}
!2144 = !DITemplateValueParameter(name: "_IsMove", type: !198, value: i8 1)
!2145 = !DITemplateTypeParameter(name: "_II", type: !119)
!2146 = !DITemplateTypeParameter(name: "_OI", type: !119)
!2147 = !{!2148, !2139, !2149}
!2148 = !DILocalVariable(name: "__first", arg: 1, scope: !2140, file: !2127, line: 424, type: !119)
!2149 = !DILocalVariable(name: "__result", arg: 3, scope: !2140, file: !2127, line: 424, type: !119)
!2150 = !DILocation(line: 424, column: 37, scope: !2140, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 458, column: 15, scope: !2126, inlinedAt: !2136)
!2152 = !DILocation(line: 424, column: 49, scope: !2140, inlinedAt: !2151)
!2153 = !DILocalVariable(name: "__last", arg: 2, scope: !2154, file: !2127, line: 379, type: !119)
!2154 = distinct !DISubprogram(name: "__copy_move_a<true, long *, long *>", linkageName: "_ZSt13__copy_move_aILb1EPlS0_ET1_T0_S2_S1_", scope: !7, file: !2127, line: 379, type: !2141, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2143, variables: !2155)
!2155 = !{!2156, !2153, !2157, !2158}
!2156 = !DILocalVariable(name: "__first", arg: 1, scope: !2154, file: !2127, line: 379, type: !119)
!2157 = !DILocalVariable(name: "__result", arg: 3, scope: !2154, file: !2127, line: 379, type: !119)
!2158 = !DILocalVariable(name: "__simple", scope: !2154, file: !2127, line: 384, type: !217)
!2159 = !DILocation(line: 379, column: 36, scope: !2154, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 426, column: 18, scope: !2140, inlinedAt: !2151)
!2161 = !DILocation(line: 379, column: 48, scope: !2154, inlinedAt: !2160)
!2162 = !DILocation(line: 384, column: 18, scope: !2154, inlinedAt: !2160)
!2163 = !DILocalVariable(name: "__last", arg: 2, scope: !2164, file: !2127, line: 368, type: !127)
!2164 = distinct !DISubprogram(name: "__copy_m<long>", linkageName: "_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_", scope: !2165, file: !2127, line: 368, type: !2178, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !145, declaration: !2180, variables: !2181)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__copy_move<true, true, std::random_access_iterator_tag>", scope: !7, file: !2127, line: 364, size: 8, elements: !43, templateParams: !2166, identifier: "_ZTSSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE")
!2166 = !{!339, !339, !2167}
!2167 = !DITemplateTypeParameter(type: !2168)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !7, file: !370, line: 103, size: 8, elements: !2169, identifier: "_ZTSSt26random_access_iterator_tag")
!2169 = !{!2170}
!2170 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2168, baseType: !2171)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !7, file: !370, line: 99, size: 8, elements: !2172, identifier: "_ZTSSt26bidirectional_iterator_tag")
!2172 = !{!2173}
!2173 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2171, baseType: !2174)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !7, file: !370, line: 95, size: 8, elements: !2175, identifier: "_ZTSSt20forward_iterator_tag")
!2175 = !{!2176}
!2176 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2174, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !7, file: !370, line: 89, size: 8, elements: !43, identifier: "_ZTSSt18input_iterator_tag")
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!119, !127, !127, !119}
!2180 = !DISubprogram(name: "__copy_m<long>", linkageName: "_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_", scope: !2165, file: !2127, line: 368, type: !2178, isLocal: false, isDefinition: false, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, templateParams: !145)
!2181 = !{!2182, !2163, !2183, !2184}
!2182 = !DILocalVariable(name: "__first", arg: 1, scope: !2164, file: !2127, line: 368, type: !127)
!2183 = !DILocalVariable(name: "__result", arg: 3, scope: !2164, file: !2127, line: 368, type: !119)
!2184 = !DILocalVariable(name: "_Num", scope: !2164, file: !2127, line: 370, type: !2185)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!2186 = !DILocation(line: 368, column: 49, scope: !2164, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 389, column: 14, scope: !2154, inlinedAt: !2160)
!2188 = !DILocation(line: 368, column: 62, scope: !2164, inlinedAt: !2187)
!2189 = !DILocation(line: 73, column: 12, scope: !2024, inlinedAt: !2030)
!2190 = !DILocalVariable(name: "__p", arg: 2, scope: !2191, file: !72, line: 171, type: !80)
!2191 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm", scope: !73, file: !72, line: 171, type: !329, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !328, variables: !2192)
!2192 = !{!2193, !2190, !2194}
!2193 = !DILocalVariable(name: "this", arg: 1, scope: !2191, type: !2068, flags: DIFlagArtificial | DIFlagObjectPointer)
!2194 = !DILocalVariable(name: "__n", arg: 3, scope: !2191, file: !72, line: 171, type: !135)
!2195 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 78, column: 4, scope: !2024, inlinedAt: !2030)
!2197 = !DILocation(line: 81, column: 27, scope: !2024, inlinedAt: !2030)
!2198 = !{!2199, !2201, i64 0}
!2199 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !2200, i64 0}
!2200 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !2201, i64 0, !2201, i64 8, !2201, i64 16}
!2201 = !{!"any pointer", !2202, i64 0}
!2202 = !{!"omnipotent char", !2203, i64 0}
!2203 = !{!"Simple C++ TBAA"}
!2204 = !DILocation(line: 82, column: 28, scope: !2024, inlinedAt: !2030)
!2205 = !{!2199, !2201, i64 8}
!2206 = !DILocation(line: 83, column: 61, scope: !2024, inlinedAt: !2030)
!2207 = !DILocation(line: 83, column: 36, scope: !2024, inlinedAt: !2030)
!2208 = !{!2199, !2201, i64 16}
!2209 = !DILocation(line: 84, column: 2, scope: !2024, inlinedAt: !2030)
!2210 = !DILocation(line: 13, column: 12, scope: !2014)
!2211 = !DILocation(line: 13, column: 21, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 13, column: 3)
!2213 = !DILocation(line: 13, column: 3, scope: !2014)
!2214 = !DILocation(line: 104, column: 9, scope: !2072, inlinedAt: !2078)
!2215 = !DILocation(line: 94, column: 47, scope: !2216, inlinedAt: !2228)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !2020, line: 94, column: 6)
!2217 = distinct !DISubprogram(name: "emplace_back<long>", linkageName: "_ZNSt6vectorIlSaIlEE12emplace_backIJlEEEvDpOT_", scope: !402, file: !2020, line: 92, type: !2218, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2221, declaration: !2224, variables: !2225)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !408, !2220}
!2220 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !46, size: 64)
!2221 = !{!2222}
!2222 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !2223)
!2223 = !{!45}
!2224 = !DISubprogram(name: "emplace_back<long>", linkageName: "_ZNSt6vectorIlSaIlEE12emplace_backIJlEEEvDpOT_", scope: !402, file: !72, line: 924, type: !2218, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !2221)
!2225 = !{!2226, !2227}
!2226 = !DILocalVariable(name: "this", arg: 1, scope: !2217, type: !2028, flags: DIFlagArtificial | DIFlagObjectPointer)
!2227 = !DILocalVariable(name: "__args", arg: 2, scope: !2217, file: !72, line: 924, type: !2220)
!2228 = distinct !DILocation(line: 920, column: 9, scope: !2229, inlinedAt: !2233)
!2229 = distinct !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIlSaIlEE9push_backEOl", scope: !402, file: !72, line: 919, type: !594, isLocal: false, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !593, variables: !2230)
!2230 = !{!2231, !2232}
!2231 = !DILocalVariable(name: "this", arg: 1, scope: !2229, type: !2028, flags: DIFlagArtificial | DIFlagObjectPointer)
!2232 = !DILocalVariable(name: "__x", arg: 2, scope: !2229, file: !72, line: 919, type: !596)
!2233 = distinct !DILocation(line: 14, column: 7, scope: !2212)
!2234 = !DILocation(line: 94, column: 20, scope: !2216, inlinedAt: !2228)
!2235 = !DILocation(line: 0, scope: !2229, inlinedAt: !2233)
!2236 = !DILocation(line: 0, scope: !2217, inlinedAt: !2228)
!2237 = !DILocation(line: 94, column: 30, scope: !2216, inlinedAt: !2228)
!2238 = !DILocation(line: 94, column: 6, scope: !2217, inlinedAt: !2228)
!2239 = !DILocalVariable(name: "__p", arg: 2, scope: !2240, file: !88, line: 391, type: !119)
!2240 = distinct !DISubprogram(name: "construct<long, long>", linkageName: "_ZNSt16allocator_traitsISaIlEE9constructIlJlEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS3_", scope: !87, file: !88, line: 391, type: !2241, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2247, declaration: !2248, variables: !2249)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!2243, !235, !119, !2220}
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2244, file: !192, line: 1772, baseType: null)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, void>", scope: !7, file: !192, line: 1771, size: 8, elements: !43, templateParams: !2245, identifier: "_ZTSSt9enable_ifILb1EvE")
!2245 = !{!339, !2246}
!2246 = !DITemplateTypeParameter(name: "_Tp", type: null)
!2247 = !{!146, !2222}
!2248 = !DISubprogram(name: "construct<long, long>", linkageName: "_ZNSt16allocator_traitsISaIlEE9constructIlJlEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS3_", scope: !87, file: !88, line: 391, type: !2241, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, templateParams: !2247)
!2249 = !{!2250, !2239, !2251}
!2250 = !DILocalVariable(name: "__a", arg: 1, scope: !2240, file: !88, line: 391, type: !235)
!2251 = !DILocalVariable(name: "__args", arg: 3, scope: !2240, file: !88, line: 391, type: !2220)
!2252 = !DILocation(line: 391, column: 42, scope: !2240, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 96, column: 6, scope: !2254, inlinedAt: !2228)
!2254 = distinct !DILexicalBlock(scope: !2216, file: !2020, line: 95, column: 4)
!2255 = !DILocalVariable(name: "__p", arg: 2, scope: !2256, file: !88, line: 253, type: !119)
!2256 = distinct !DISubprogram(name: "_S_construct<long, long>", linkageName: "_ZNSt16allocator_traitsISaIlEE12_S_constructIlJlEEENSt9enable_ifIXsr18__construct_helperIT_DpT0_EE5valueEvE4typeERS0_PS4_DpOS5_", scope: !87, file: !88, line: 253, type: !2241, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2247, declaration: !2257, variables: !2258)
!2257 = !DISubprogram(name: "_S_construct<long, long>", linkageName: "_ZNSt16allocator_traitsISaIlEE12_S_constructIlJlEEENSt9enable_ifIXsr18__construct_helperIT_DpT0_EE5valueEvE4typeERS0_PS4_DpOS5_", scope: !87, file: !88, line: 253, type: !2241, isLocal: false, isDefinition: false, scopeLine: 253, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true, templateParams: !2247)
!2258 = !{!2259, !2255, !2260}
!2259 = !DILocalVariable(name: "__a", arg: 1, scope: !2256, file: !88, line: 253, type: !235)
!2260 = !DILocalVariable(name: "__args", arg: 3, scope: !2256, file: !88, line: 253, type: !2220)
!2261 = !DILocation(line: 253, column: 40, scope: !2256, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 393, column: 4, scope: !2240, inlinedAt: !2253)
!2263 = !DILocalVariable(name: "__p", arg: 2, scope: !2264, file: !103, line: 119, type: !119)
!2264 = distinct !DISubprogram(name: "construct<long, long>", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE9constructIlJlEEEvPT_DpOT0_", scope: !102, file: !103, line: 119, type: !2265, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2267, declaration: !2269, variables: !2270)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !108, !119, !2220}
!2267 = !{!2268, !2222}
!2268 = !DITemplateTypeParameter(name: "_Up", type: !46)
!2269 = !DISubprogram(name: "construct<long, long>", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE9constructIlJlEEEvPT_DpOT0_", scope: !102, file: !103, line: 119, type: !2265, isLocal: false, isDefinition: false, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !2267)
!2270 = !{!2271, !2263, !2272}
!2271 = !DILocalVariable(name: "this", arg: 1, scope: !2264, type: !2075, flags: DIFlagArtificial | DIFlagObjectPointer)
!2272 = !DILocalVariable(name: "__args", arg: 3, scope: !2264, file: !103, line: 119, type: !2220)
!2273 = !DILocation(line: 119, column: 24, scope: !2264, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 254, column: 8, scope: !2256, inlinedAt: !2262)
!2275 = !DILocation(line: 120, column: 4, scope: !2264, inlinedAt: !2274)
!2276 = !{!2277, !2277, i64 0}
!2277 = !{!"long", !2202, i64 0}
!2278 = !DILocation(line: 98, column: 6, scope: !2254, inlinedAt: !2228)
!2279 = !DILocation(line: 99, column: 4, scope: !2254, inlinedAt: !2228)
!2280 = !DILocalVariable(name: "this", arg: 1, scope: !2281, type: !2028, flags: DIFlagArtificial | DIFlagObjectPointer)
!2281 = distinct !DISubprogram(name: "_M_emplace_back_aux<long>", linkageName: "_ZNSt6vectorIlSaIlEE19_M_emplace_back_auxIJlEEEvDpOT_", scope: !402, file: !2020, line: 400, type: !2218, isLocal: false, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2221, declaration: !2282, variables: !2283)
!2282 = !DISubprogram(name: "_M_emplace_back_aux<long>", linkageName: "_ZNSt6vectorIlSaIlEE19_M_emplace_back_auxIJlEEEvDpOT_", scope: !402, file: !72, line: 1331, type: !2218, isLocal: false, isDefinition: false, scopeLine: 1331, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true, templateParams: !2221)
!2283 = !{!2280, !2284, !2285, !2286, !2287}
!2284 = !DILocalVariable(name: "__args", arg: 2, scope: !2281, file: !72, line: 1331, type: !2220)
!2285 = !DILocalVariable(name: "__len", scope: !2281, file: !2020, line: 402, type: !2026)
!2286 = !DILocalVariable(name: "__new_start", scope: !2281, file: !2020, line: 404, type: !638)
!2287 = !DILocalVariable(name: "__new_finish", scope: !2281, file: !2020, line: 405, type: !638)
!2288 = !DILocation(line: 0, scope: !2281, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 101, column: 4, scope: !2216, inlinedAt: !2228)
!2290 = !DILocalVariable(name: "this", arg: 1, scope: !2291, type: !2035, flags: DIFlagArtificial | DIFlagObjectPointer)
!2291 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc", scope: !402, file: !72, line: 1336, type: !629, isLocal: false, isDefinition: true, scopeLine: 1337, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !628, variables: !2292)
!2292 = !{!2290, !2293, !2294, !2295}
!2293 = !DILocalVariable(name: "__n", arg: 2, scope: !2291, file: !72, line: 1336, type: !345)
!2294 = !DILocalVariable(name: "__s", arg: 3, scope: !2291, file: !72, line: 1336, type: !632)
!2295 = !DILocalVariable(name: "__len", scope: !2291, file: !72, line: 1341, type: !2026)
!2296 = !DILocation(line: 0, scope: !2291, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 403, column: 4, scope: !2281, inlinedAt: !2289)
!2298 = !DILocation(line: 1336, column: 30, scope: !2291, inlinedAt: !2297)
!2299 = !DILocation(line: 0, scope: !2040, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 1338, column: 19, scope: !2301, inlinedAt: !2297)
!2301 = distinct !DILexicalBlock(scope: !2291, file: !72, line: 1338, column: 6)
!2302 = !DILocation(line: 646, column: 50, scope: !2040, inlinedAt: !2300)
!2303 = !DILocation(line: 0, scope: !2040, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 1341, column: 26, scope: !2291, inlinedAt: !2297)
!2305 = !DILocation(line: 0, scope: !2040, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 1341, column: 44, scope: !2291, inlinedAt: !2297)
!2307 = !DILocation(line: 221, column: 15, scope: !2308, inlinedAt: !2317)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !2127, line: 221, column: 11)
!2309 = distinct !DISubprogram(name: "max<unsigned long>", linkageName: "_ZSt3maxImERKT_S2_S2_", scope: !7, file: !2127, line: 216, type: !2310, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !814, variables: !2314)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!2312, !2312, !2312}
!2312 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "__a", arg: 1, scope: !2309, file: !2133, line: 356, type: !2312)
!2316 = !DILocalVariable(name: "__b", arg: 2, scope: !2309, file: !2133, line: 356, type: !2312)
!2317 = distinct !DILocation(line: 1341, column: 35, scope: !2291, inlinedAt: !2297)
!2318 = !DILocation(line: 1341, column: 35, scope: !2291, inlinedAt: !2297)
!2319 = !DILocation(line: 1341, column: 33, scope: !2291, inlinedAt: !2297)
!2320 = !DILocation(line: 1341, column: 18, scope: !2291, inlinedAt: !2297)
!2321 = !DILocation(line: 0, scope: !2040, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 1342, column: 18, scope: !2291, inlinedAt: !2297)
!2323 = !DILocation(line: 1342, column: 16, scope: !2291, inlinedAt: !2297)
!2324 = !DILocation(line: 1342, column: 34, scope: !2291, inlinedAt: !2297)
!2325 = !DILocation(line: 1342, column: 25, scope: !2291, inlinedAt: !2297)
!2326 = !DILocation(line: 402, column: 18, scope: !2281, inlinedAt: !2289)
!2327 = !DILocation(line: 167, column: 26, scope: !2065, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 404, column: 28, scope: !2281, inlinedAt: !2289)
!2329 = !DILocation(line: 168, column: 20, scope: !2065, inlinedAt: !2328)
!2330 = !DILocation(line: 168, column: 16, scope: !2065, inlinedAt: !2328)
!2331 = !DILocation(line: 99, column: 26, scope: !2072, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 168, column: 35, scope: !2065, inlinedAt: !2328)
!2333 = !DILocation(line: 99, column: 43, scope: !2072, inlinedAt: !2332)
!2334 = !DILocation(line: 101, column: 10, scope: !2335, inlinedAt: !2332)
!2335 = distinct !DILexicalBlock(scope: !2072, file: !103, line: 101, column: 6)
!2336 = !DILocation(line: 101, column: 6, scope: !2072, inlinedAt: !2332)
!2337 = !DILocation(line: 102, column: 4, scope: !2335, inlinedAt: !2332)
!2338 = !DILocation(line: 104, column: 46, scope: !2072, inlinedAt: !2332)
!2339 = !DILocation(line: 104, column: 27, scope: !2072, inlinedAt: !2332)
!2340 = !DILocation(line: 104, column: 9, scope: !2072, inlinedAt: !2332)
!2341 = !DILocation(line: 404, column: 10, scope: !2281, inlinedAt: !2289)
!2342 = !DILocation(line: 405, column: 10, scope: !2281, inlinedAt: !2289)
!2343 = !DILocation(line: 0, scope: !2040, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 408, column: 60, scope: !2345, inlinedAt: !2289)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !2020, line: 407, column: 4)
!2346 = distinct !DILexicalBlock(scope: !2281, file: !2020, line: 406, column: 2)
!2347 = !DILocation(line: 646, column: 50, scope: !2040, inlinedAt: !2344)
!2348 = !DILocation(line: 408, column: 58, scope: !2345, inlinedAt: !2289)
!2349 = !DILocation(line: 391, column: 42, scope: !2240, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 408, column: 6, scope: !2345, inlinedAt: !2289)
!2351 = !DILocation(line: 253, column: 40, scope: !2256, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 393, column: 4, scope: !2240, inlinedAt: !2350)
!2353 = !DILocation(line: 119, column: 24, scope: !2264, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 254, column: 8, scope: !2256, inlinedAt: !2352)
!2355 = !DILocation(line: 120, column: 4, scope: !2264, inlinedAt: !2354)
!2356 = !DILocalVariable(name: "__last", arg: 2, scope: !2357, file: !2084, line: 275, type: !119)
!2357 = distinct !DISubprogram(name: "__uninitialized_move_if_noexcept_a<long *, long *, std::allocator<long> >", linkageName: "_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_", scope: !7, file: !2084, line: 274, type: !2358, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2360, variables: !2363)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!119, !119, !119, !119, !235}
!2360 = !{!2361, !2089, !2362}
!2361 = !DITemplateTypeParameter(name: "_InputIterator", type: !119)
!2362 = !DITemplateTypeParameter(name: "_Allocator", type: !97)
!2363 = !{!2364, !2356, !2365, !2366}
!2364 = !DILocalVariable(name: "__first", arg: 1, scope: !2357, file: !2084, line: 274, type: !119)
!2365 = !DILocalVariable(name: "__result", arg: 3, scope: !2357, file: !2084, line: 276, type: !119)
!2366 = !DILocalVariable(name: "__alloc", arg: 4, scope: !2357, file: !2084, line: 277, type: !235)
!2367 = !DILocation(line: 275, column: 27, scope: !2357, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 413, column: 10, scope: !2345, inlinedAt: !2289)
!2369 = !DILocation(line: 276, column: 29, scope: !2357, inlinedAt: !2368)
!2370 = !DILocation(line: 256, column: 67, scope: !2083, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 279, column: 14, scope: !2357, inlinedAt: !2368)
!2372 = !DILocation(line: 256, column: 43, scope: !2083, inlinedAt: !2371)
!2373 = !DILocation(line: 257, column: 24, scope: !2083, inlinedAt: !2371)
!2374 = !DILocation(line: 107, column: 63, scope: !2101, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 258, column: 14, scope: !2083, inlinedAt: !2371)
!2376 = !DILocation(line: 107, column: 39, scope: !2101, inlinedAt: !2375)
!2377 = !DILocation(line: 108, column: 27, scope: !2101, inlinedAt: !2375)
!2378 = !DILocation(line: 91, column: 62, scope: !2113, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 115, column: 14, scope: !2101, inlinedAt: !2375)
!2380 = !DILocation(line: 91, column: 38, scope: !2113, inlinedAt: !2379)
!2381 = !DILocation(line: 92, column: 26, scope: !2113, inlinedAt: !2379)
!2382 = !DILocation(line: 213, column: 24, scope: !2126, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 93, column: 18, scope: !2113, inlinedAt: !2379)
!2384 = !DILocation(line: 213, column: 16, scope: !2126, inlinedAt: !2383)
!2385 = !DILocation(line: 213, column: 32, scope: !2126, inlinedAt: !2383)
!2386 = !DILocation(line: 424, column: 37, scope: !2140, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 458, column: 15, scope: !2126, inlinedAt: !2383)
!2388 = !DILocation(line: 424, column: 49, scope: !2140, inlinedAt: !2387)
!2389 = !DILocation(line: 379, column: 36, scope: !2154, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 426, column: 18, scope: !2140, inlinedAt: !2387)
!2391 = !DILocation(line: 379, column: 48, scope: !2154, inlinedAt: !2390)
!2392 = !DILocation(line: 384, column: 18, scope: !2154, inlinedAt: !2390)
!2393 = !DILocation(line: 368, column: 49, scope: !2164, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 389, column: 14, scope: !2154, inlinedAt: !2390)
!2395 = !DILocation(line: 368, column: 62, scope: !2164, inlinedAt: !2394)
!2396 = !DILocation(line: 370, column: 20, scope: !2164, inlinedAt: !2394)
!2397 = !DILocation(line: 371, column: 8, scope: !2398, inlinedAt: !2394)
!2398 = distinct !DILexicalBlock(scope: !2164, file: !2127, line: 371, column: 8)
!2399 = !DILocation(line: 371, column: 8, scope: !2164, inlinedAt: !2394)
!2400 = !DILocation(line: 372, column: 6, scope: !2398, inlinedAt: !2394)
!2401 = !DILocation(line: 417, column: 6, scope: !2345, inlinedAt: !2289)
!2402 = !DILocation(line: 173, column: 6, scope: !2403, inlinedAt: !2404)
!2403 = distinct !DILexicalBlock(scope: !2191, file: !72, line: 173, column: 6)
!2404 = distinct !DILocation(line: 430, column: 2, scope: !2281, inlinedAt: !2289)
!2405 = !DILocation(line: 173, column: 6, scope: !2191, inlinedAt: !2404)
!2406 = !DILocation(line: 110, column: 27, scope: !2407, inlinedAt: !2412)
!2407 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm", scope: !102, file: !103, line: 109, type: !140, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !139, variables: !2408)
!2408 = !{!2409, !2410, !2411}
!2409 = !DILocalVariable(name: "this", arg: 1, scope: !2407, type: !2075, flags: DIFlagArtificial | DIFlagObjectPointer)
!2410 = !DILocalVariable(name: "__p", arg: 2, scope: !2407, file: !103, line: 109, type: !118)
!2411 = !DILocalVariable(arg: 3, scope: !2407, file: !103, line: 109, type: !134)
!2412 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !2404)
!2413 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !2412)
!2414 = !DILocation(line: 174, column: 4, scope: !2403, inlinedAt: !2404)
!2415 = !DILocation(line: 433, column: 25, scope: !2281, inlinedAt: !2289)
!2416 = !DILocation(line: 434, column: 26, scope: !2281, inlinedAt: !2289)
!2417 = !DILocation(line: 435, column: 48, scope: !2281, inlinedAt: !2289)
!2418 = !{!2201, !2201, i64 0}
!2419 = !DILocation(line: 13, column: 31, scope: !2212)
!2420 = distinct !{!2420, !2213, !2421}
!2421 = !DILocation(line: 14, column: 18, scope: !2014)
!2422 = !DILocation(line: 16, column: 1, scope: !2006)
!2423 = distinct !DISubprogram(name: "cmp", linkageName: "_Z3cmpPKvS0_", scope: !3, file: !3, line: 18, type: !891, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2424)
!2424 = !{!2425, !2426}
!2425 = !DILocalVariable(name: "l", arg: 1, scope: !2423, file: !3, line: 18, type: !137)
!2426 = !DILocalVariable(name: "r", arg: 2, scope: !2423, file: !3, line: 18, type: !137)
!2427 = !DILocation(line: 18, column: 21, scope: !2423)
!2428 = !DILocation(line: 18, column: 36, scope: !2423)
!2429 = !DILocation(line: 18, column: 50, scope: !2423)
!2430 = !DILocation(line: 18, column: 48, scope: !2423)
!2431 = !DILocation(line: 18, column: 67, scope: !2423)
!2432 = !DILocation(line: 18, column: 65, scope: !2423)
!2433 = !DILocation(line: 18, column: 63, scope: !2423)
!2434 = !DILocation(line: 18, column: 41, scope: !2423)
!2435 = distinct !DISubprogram(name: "BM_copy_qsort", linkageName: "_Z13BM_copy_qsortRN9benchmark5StateE", scope: !3, file: !3, line: 20, type: !2436, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3545)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "State", scope: !15, file: !13, line: 323, size: 1152, elements: !2440, identifier: "_ZTSN9benchmark5StateE")
!2440 = !{!2441, !2442, !2443, !2444, !2849, !2850, !2851, !2852, !2853, !3477, !3478, !3479, !3481, !3484, !3487, !3491, !3494, !3495, !3498, !3501, !3504, !3509, !3512, !3515, !3516, !3517, !3518, !3525, !3528, !3531, !3532, !3533, !3536, !3537, !3538, !3542}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "started_", scope: !2439, file: !13, line: 462, baseType: !198, size: 8)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "finished_", scope: !2439, file: !13, line: 463, baseType: !198, size: 8, offset: 8)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "total_iterations_", scope: !2439, file: !13, line: 464, baseType: !887, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "range_", scope: !2439, file: !13, line: 466, baseType: !2445, size: 192, offset: 128)
!2445 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<int, std::allocator<int> >", scope: !7, file: !72, line: 210, size: 192, elements: !2446, templateParams: !2665, identifier: "_ZTSSt6vectorIiSaIiEE")
!2446 = !{!2447, !2666, !2670, !2676, !2679, !2685, !2690, !2694, !2697, !2700, !2704, !2705, !2709, !2712, !2715, !2718, !2721, !2726, !2732, !2733, !2734, !2739, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2753, !2754, !2757, !2758, !2759, !2760, !2763, !2764, !2771, !2778, !2781, !2782, !2783, !2786, !2789, !2790, !2791, !2794, !2797, !2800, !2804, !2805, !2808, !2811, !2814, !2817, !2820, !2823, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2835, !2839, !2843, !2846}
!2447 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2445, baseType: !2448, flags: DIFlagProtected)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<int, std::allocator<int> >", scope: !7, file: !72, line: 72, size: 192, elements: !2449, templateParams: !2665, identifier: "_ZTSSt12_Vector_baseIiSaIiEE")
!2449 = !{!2450, !2619, !2624, !2629, !2633, !2636, !2641, !2644, !2647, !2650, !2654, !2657, !2658, !2661, !2664}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !2448, file: !72, line: 164, baseType: !2451, size: 192)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !2448, file: !72, line: 79, size: 192, elements: !2452, identifier: "_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE")
!2452 = !{!2453, !2597, !2600, !2601, !2602, !2606, !2611, !2615}
!2453 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2451, baseType: !2454)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !2448, file: !72, line: 75, baseType: !2455)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !2456, file: !82, line: 196, baseType: !2589)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<int>", scope: !2457, file: !82, line: 195, size: 8, elements: !43, templateParams: !2508, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIiEE6rebindIiEE")
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<int> >", scope: !84, file: !82, line: 121, size: 8, elements: !2458, templateParams: !2577, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIiEEE")
!2458 = !{!2459, !2579, !2580, !2583, !2584, !2585, !2586, !2587, !2588}
!2459 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2457, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<int> >", scope: !7, file: !88, line: 85, size: 8, elements: !2461, templateParams: !2577, identifier: "_ZTSSt16allocator_traitsISaIiEE")
!2461 = !{!2462, !2520, !2537, !2541, !2545, !2549, !2550, !2551, !2552, !2553, !2563, !2568, !2571, !2574}
!2462 = !DISubprogram(name: "_S_pointer_helper", linkageName: "_ZNSt16allocator_traitsISaIiEE17_S_pointer_helperEz", scope: !2460, file: !88, line: 100, type: !2463, isLocal: false, isDefinition: false, scopeLine: 100, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!2465, null}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2460, file: !88, line: 90, baseType: !2467)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2468, file: !96, line: 101, baseType: !385)
!2468 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<int>", scope: !7, file: !96, line: 92, size: 8, elements: !2469, templateParams: !2508, identifier: "_ZTSSaIiE")
!2469 = !{!2470, !2510, !2514, !2519}
!2470 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2468, baseType: !2471, flags: DIFlagPublic)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<int>", scope: !7, file: !101, line: 48, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<int>", scope: !84, file: !103, line: 58, size: 8, elements: !2473, templateParams: !2508, identifier: "_ZTSN9__gnu_cxx13new_allocatorIiEE")
!2473 = !{!2474, !2478, !2483, !2484, !2491, !2499, !2502, !2505}
!2474 = !DISubprogram(name: "new_allocator", scope: !2472, file: !103, line: 79, type: !2475, isLocal: false, isDefinition: false, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2478 = !DISubprogram(name: "new_allocator", scope: !2472, file: !103, line: 81, type: !2479, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !2477, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2472)
!2483 = !DISubprogram(name: "~new_allocator", scope: !2472, file: !103, line: 86, type: !2475, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2484 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIiE7addressERi", scope: !2472, file: !103, line: 89, type: !2485, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!2487, !2488, !2489}
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2472, file: !103, line: 63, baseType: !1124)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2472, file: !103, line: 65, baseType: !2490)
!2490 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !385, size: 64)
!2491 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIiE7addressERKi", scope: !2472, file: !103, line: 93, type: !2492, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!2494, !2488, !2497}
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !2472, file: !103, line: 64, baseType: !2495)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2472, file: !103, line: 66, baseType: !2498)
!2498 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2496, size: 64)
!2499 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv", scope: !2472, file: !103, line: 99, type: !2500, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!2487, !2477, !134, !137}
!2502 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim", scope: !2472, file: !103, line: 109, type: !2503, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{null, !2477, !2487, !134}
!2505 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv", scope: !2472, file: !103, line: 113, type: !2506, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!134, !2488}
!2508 = !{!2509}
!2509 = !DITemplateTypeParameter(name: "_Tp", type: !385)
!2510 = !DISubprogram(name: "allocator", scope: !2468, file: !96, line: 113, type: !2511, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null, !2513}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2514 = !DISubprogram(name: "allocator", scope: !2468, file: !96, line: 115, type: !2515, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{null, !2513, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2468)
!2519 = !DISubprogram(name: "~allocator", scope: !2468, file: !96, line: 121, type: !2511, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2520 = !DISubprogram(name: "_S_const_pointer_helper", linkageName: "_ZNSt16allocator_traitsISaIiEE23_S_const_pointer_helperEz", scope: !2460, file: !88, line: 109, type: !2521, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!2523, null}
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<const std::allocator_traits<std::allocator<int> >::value_type>", scope: !2524, file: !161, line: 165, baseType: !2495)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<int *>", scope: !7, file: !161, line: 155, size: 8, elements: !2525, templateParams: !2535, identifier: "_ZTSSt14pointer_traitsIPiE")
!2525 = !{!2526}
!2526 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt14pointer_traitsIPiE10pointer_toERi", scope: !2524, file: !161, line: 173, type: !2527, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!2529, !2530}
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2524, file: !161, line: 158, baseType: !1124)
!2530 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !2532, file: !161, line: 112, baseType: !385)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__ptrtr_not_void<int, int>", scope: !7, file: !161, line: 110, size: 8, elements: !43, templateParams: !2533, identifier: "_ZTSSt16__ptrtr_not_voidIiiE")
!2533 = !{!2509, !2534}
!2534 = !DITemplateTypeParameter(type: !385)
!2535 = !{!2536}
!2536 = !DITemplateTypeParameter(name: "_Ptr", type: !1124)
!2537 = !DISubprogram(name: "_S_void_pointer_helper", linkageName: "_ZNSt16allocator_traitsISaIiEE22_S_void_pointer_helperEz", scope: !2460, file: !88, line: 120, type: !2538, isLocal: false, isDefinition: false, scopeLine: 120, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!2540, null}
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<void>", scope: !2524, file: !161, line: 165, baseType: !178)
!2541 = !DISubprogram(name: "_S_const_void_pointer_helper", linkageName: "_ZNSt16allocator_traitsISaIiEE28_S_const_void_pointer_helperEz", scope: !2460, file: !88, line: 131, type: !2542, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!2544, null}
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<const void>", scope: !2524, file: !161, line: 165, baseType: !137)
!2545 = !DISubprogram(name: "_S_difference_type_helper", linkageName: "_ZNSt16allocator_traitsISaIiEE25_S_difference_type_helperEz", scope: !2460, file: !88, line: 142, type: !2546, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!2548, null}
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !2524, file: !161, line: 162, baseType: !187)
!2549 = !DISubprogram(name: "_S_size_type_helper", linkageName: "_ZNSt16allocator_traitsISaIiEE19_S_size_type_helperEz", scope: !2460, file: !88, line: 153, type: !189, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2550 = !DISubprogram(name: "_S_propagate_on_container_copy_assignment_helper", linkageName: "_ZNSt16allocator_traitsISaIiEE48_S_propagate_on_container_copy_assignment_helperEz", scope: !2460, file: !88, line: 164, type: !211, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2551 = !DISubprogram(name: "_S_propagate_on_container_move_assignment_helper", linkageName: "_ZNSt16allocator_traitsISaIiEE48_S_propagate_on_container_move_assignment_helperEz", scope: !2460, file: !88, line: 176, type: !211, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2552 = !DISubprogram(name: "_S_propagate_on_container_swap_helper", linkageName: "_ZNSt16allocator_traitsISaIiEE37_S_propagate_on_container_swap_helperEz", scope: !2460, file: !88, line: 188, type: !211, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2553 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIiEE8allocateERS0_m", scope: !2460, file: !88, line: 350, type: !2554, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!2556, !2559, !2560}
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2460, file: !88, line: 107, baseType: !2557)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pointer", scope: !2460, file: !88, line: 100, baseType: !2558)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2468, file: !96, line: 97, baseType: !1124)
!2559 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2468, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2460, file: !88, line: 162, baseType: !2561)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_type", scope: !2460, file: !88, line: 153, baseType: !2562)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2468, file: !96, line: 95, baseType: !135)
!2563 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv", scope: !2460, file: !88, line: 365, type: !2564, isLocal: false, isDefinition: false, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!2556, !2559, !2560, !2566}
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", scope: !2460, file: !88, line: 140, baseType: !2567)
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__const_void_pointer", scope: !2460, file: !88, line: 131, baseType: !2544)
!2568 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim", scope: !2460, file: !88, line: 376, type: !2569, isLocal: false, isDefinition: false, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: true)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !2559, !2556, !2560}
!2571 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_", scope: !2460, file: !88, line: 415, type: !2572, isLocal: false, isDefinition: false, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!2560, !2517}
!2574 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_", scope: !2460, file: !88, line: 427, type: !2575, isLocal: false, isDefinition: false, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!2468, !2517}
!2577 = !{!2578}
!2578 = !DITemplateTypeParameter(name: "_Alloc", type: !2468)
!2579 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_", scope: !2457, file: !82, line: 166, type: !2575, isLocal: false, isDefinition: false, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true)
!2580 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE10_S_on_swapERS1_S3_", scope: !2457, file: !82, line: 169, type: !2581, isLocal: false, isDefinition: false, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !2559, !2559}
!2583 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE27_S_propagate_on_copy_assignEv", scope: !2457, file: !82, line: 172, type: !260, isLocal: false, isDefinition: false, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true)
!2584 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE27_S_propagate_on_move_assignEv", scope: !2457, file: !82, line: 175, type: !260, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true)
!2585 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE20_S_propagate_on_swapEv", scope: !2457, file: !82, line: 178, type: !260, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true)
!2586 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE15_S_always_equalEv", scope: !2457, file: !82, line: 181, type: !260, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true)
!2587 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE15_S_nothrow_moveEv", scope: !2457, file: !82, line: 184, type: !260, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true)
!2588 = !DISubprogram(name: "_S_nothrow_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE15_S_nothrow_swapEv", scope: !2457, file: !82, line: 187, type: !260, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<int>", scope: !2460, file: !88, line: 202, baseType: !2590)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !2591, file: !88, line: 70, baseType: !2593)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloctr_rebind<std::allocator<int>, int, true>", scope: !7, file: !88, line: 68, size: 8, elements: !43, templateParams: !2592, identifier: "_ZTSSt16__alloctr_rebindISaIiEiLb1EE")
!2592 = !{!2578, !2509, !339}
!2593 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !2594, file: !96, line: 105, baseType: !2468)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<int>", scope: !2468, file: !96, line: 104, size: 8, elements: !43, templateParams: !2595, identifier: "_ZTSNSaIiE6rebindIiEE")
!2595 = !{!2596}
!2596 = !DITemplateTypeParameter(name: "_Tp1", type: !385)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !2451, file: !72, line: 82, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2448, file: !72, line: 77, baseType: !2599)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2457, file: !82, line: 130, baseType: !2556)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !2451, file: !72, line: 83, baseType: !2598, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !2451, file: !72, line: 84, baseType: !2598, size: 64, offset: 128)
!2602 = !DISubprogram(name: "_Vector_impl", scope: !2451, file: !72, line: 86, type: !2603, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{null, !2605}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2606 = !DISubprogram(name: "_Vector_impl", scope: !2451, file: !72, line: 90, type: !2607, isLocal: false, isDefinition: false, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !2605, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2611 = !DISubprogram(name: "_Vector_impl", scope: !2451, file: !72, line: 95, type: !2612, isLocal: false, isDefinition: false, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{null, !2605, !2614}
!2614 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2454, size: 64)
!2615 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_", scope: !2451, file: !72, line: 101, type: !2616, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{null, !2605, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2451, size: 64)
!2619 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv", scope: !2448, file: !72, line: 113, type: !2620, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!2622, !2623}
!2622 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2454, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2624 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv", scope: !2448, file: !72, line: 117, type: !2625, isLocal: false, isDefinition: false, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!2609, !2627}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2448)
!2629 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv", scope: !2448, file: !72, line: 121, type: !2630, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!2632, !2627}
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2448, file: !72, line: 110, baseType: !2468)
!2633 = !DISubprogram(name: "_Vector_base", scope: !2448, file: !72, line: 124, type: !2634, isLocal: false, isDefinition: false, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null, !2623}
!2636 = !DISubprogram(name: "_Vector_base", scope: !2448, file: !72, line: 127, type: !2637, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !2623, !2639}
!2639 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2632)
!2641 = !DISubprogram(name: "_Vector_base", scope: !2448, file: !72, line: 130, type: !2642, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{null, !2623, !135}
!2644 = !DISubprogram(name: "_Vector_base", scope: !2448, file: !72, line: 134, type: !2645, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{null, !2623, !135, !2639}
!2647 = !DISubprogram(name: "_Vector_base", scope: !2448, file: !72, line: 139, type: !2648, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !2623, !2614}
!2650 = !DISubprogram(name: "_Vector_base", scope: !2448, file: !72, line: 142, type: !2651, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !2623, !2653}
!2653 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2448, size: 64)
!2654 = !DISubprogram(name: "_Vector_base", scope: !2448, file: !72, line: 146, type: !2655, isLocal: false, isDefinition: false, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{null, !2623, !2653, !2639}
!2657 = !DISubprogram(name: "~_Vector_base", scope: !2448, file: !72, line: 159, type: !2634, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true)
!2658 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm", scope: !2448, file: !72, line: 167, type: !2659, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!2598, !2623, !135}
!2661 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim", scope: !2448, file: !72, line: 171, type: !2662, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null, !2623, !2598, !135}
!2664 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm", scope: !2448, file: !72, line: 179, type: !2642, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2665 = !{!2509, !2578}
!2666 = !DISubprogram(name: "vector", scope: !2445, file: !72, line: 248, type: !2667, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null, !2669}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2670 = !DISubprogram(name: "vector", scope: !2445, file: !72, line: 256, type: !2671, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !2669, !2673}
!2673 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2675)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2445, file: !72, line: 234, baseType: !2468)
!2676 = !DISubprogram(name: "vector", scope: !2445, file: !72, line: 269, type: !2677, isLocal: false, isDefinition: false, scopeLine: 269, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{null, !2669, !345, !2673}
!2679 = !DISubprogram(name: "vector", scope: !2445, file: !72, line: 281, type: !2680, isLocal: false, isDefinition: false, scopeLine: 281, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{null, !2669, !345, !2682, !2673}
!2682 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2684)
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2445, file: !72, line: 222, baseType: !385)
!2685 = !DISubprogram(name: "vector", scope: !2445, file: !72, line: 310, type: !2686, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !2669, !2688}
!2688 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2690 = !DISubprogram(name: "vector", scope: !2445, file: !72, line: 327, type: !2691, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{null, !2669, !2693}
!2693 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2445, size: 64)
!2694 = !DISubprogram(name: "vector", scope: !2445, file: !72, line: 331, type: !2695, isLocal: false, isDefinition: false, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{null, !2669, !2688, !2673}
!2697 = !DISubprogram(name: "vector", scope: !2445, file: !72, line: 340, type: !2698, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{null, !2669, !2693, !2673}
!2700 = !DISubprogram(name: "vector", scope: !2445, file: !72, line: 364, type: !2701, isLocal: false, isDefinition: false, scopeLine: 364, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{null, !2669, !2703, !2673}
!2703 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<int>", scope: !7, file: !443, line: 47, flags: DIFlagFwdDecl, identifier: "_ZTSSt16initializer_listIiE")
!2704 = !DISubprogram(name: "~vector", scope: !2445, file: !72, line: 414, type: !2667, isLocal: false, isDefinition: false, scopeLine: 414, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2705 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIiSaIiEEaSERKS1_", scope: !2445, file: !72, line: 427, type: !2706, isLocal: false, isDefinition: false, scopeLine: 427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!2708, !2669, !2688}
!2708 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2445, size: 64)
!2709 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIiSaIiEEaSEOS1_", scope: !2445, file: !72, line: 439, type: !2710, isLocal: false, isDefinition: false, scopeLine: 439, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!2708, !2669, !2693}
!2712 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIiSaIiEEaSESt16initializer_listIiE", scope: !2445, file: !72, line: 461, type: !2713, isLocal: false, isDefinition: false, scopeLine: 461, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!2708, !2669, !2703}
!2715 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIiSaIiEE6assignEmRKi", scope: !2445, file: !72, line: 479, type: !2716, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !2669, !345, !2682}
!2718 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIiSaIiEE6assignESt16initializer_listIiE", scope: !2445, file: !72, line: 524, type: !2719, isLocal: false, isDefinition: false, scopeLine: 524, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !2669, !2703}
!2721 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIiSaIiEE5beginEv", scope: !2445, file: !72, line: 538, type: !2722, isLocal: false, isDefinition: false, scopeLine: 538, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!2724, !2669}
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !2445, file: !72, line: 227, baseType: !2725)
!2725 = !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<int *, std::vector<int, std::allocator<int> > >", scope: !84, file: !347, line: 708, flags: DIFlagFwdDecl, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE")
!2726 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorIiSaIiEE5beginEv", scope: !2445, file: !72, line: 547, type: !2727, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!2729, !2731}
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !2445, file: !72, line: 229, baseType: !2730)
!2730 = !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const int *, std::vector<int, std::allocator<int> > >", scope: !84, file: !347, line: 708, flags: DIFlagFwdDecl, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE")
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2732 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIiSaIiEE3endEv", scope: !2445, file: !72, line: 556, type: !2722, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2733 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorIiSaIiEE3endEv", scope: !2445, file: !72, line: 565, type: !2727, isLocal: false, isDefinition: false, scopeLine: 565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2734 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt6vectorIiSaIiEE6rbeginEv", scope: !2445, file: !72, line: 574, type: !2735, isLocal: false, isDefinition: false, scopeLine: 574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!2737, !2669}
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !2445, file: !72, line: 231, baseType: !2738)
!2738 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<int *, std::vector<int, std::allocator<int> > > >", scope: !7, file: !347, line: 96, flags: DIFlagFwdDecl, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEE")
!2739 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt6vectorIiSaIiEE6rbeginEv", scope: !2445, file: !72, line: 583, type: !2740, isLocal: false, isDefinition: false, scopeLine: 583, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!2742, !2731}
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !2445, file: !72, line: 230, baseType: !2743)
!2743 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const int *, std::vector<int, std::allocator<int> > > >", scope: !7, file: !347, line: 96, flags: DIFlagFwdDecl, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEE")
!2744 = !DISubprogram(name: "rend", linkageName: "_ZNSt6vectorIiSaIiEE4rendEv", scope: !2445, file: !72, line: 592, type: !2735, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2745 = !DISubprogram(name: "rend", linkageName: "_ZNKSt6vectorIiSaIiEE4rendEv", scope: !2445, file: !72, line: 601, type: !2740, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2746 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt6vectorIiSaIiEE6cbeginEv", scope: !2445, file: !72, line: 611, type: !2727, isLocal: false, isDefinition: false, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2747 = !DISubprogram(name: "cend", linkageName: "_ZNKSt6vectorIiSaIiEE4cendEv", scope: !2445, file: !72, line: 620, type: !2727, isLocal: false, isDefinition: false, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2748 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt6vectorIiSaIiEE7crbeginEv", scope: !2445, file: !72, line: 629, type: !2740, isLocal: false, isDefinition: false, scopeLine: 629, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2749 = !DISubprogram(name: "crend", linkageName: "_ZNKSt6vectorIiSaIiEE5crendEv", scope: !2445, file: !72, line: 638, type: !2740, isLocal: false, isDefinition: false, scopeLine: 638, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2750 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIiSaIiEE4sizeEv", scope: !2445, file: !72, line: 645, type: !2751, isLocal: false, isDefinition: false, scopeLine: 645, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!345, !2731}
!2753 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIiSaIiEE8max_sizeEv", scope: !2445, file: !72, line: 650, type: !2751, isLocal: false, isDefinition: false, scopeLine: 650, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2754 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIiSaIiEE6resizeEm", scope: !2445, file: !72, line: 664, type: !2755, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{null, !2669, !345}
!2757 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIiSaIiEE6resizeEmRKi", scope: !2445, file: !72, line: 684, type: !2716, isLocal: false, isDefinition: false, scopeLine: 684, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2758 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt6vectorIiSaIiEE13shrink_to_fitEv", scope: !2445, file: !72, line: 716, type: !2667, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2759 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorIiSaIiEE8capacityEv", scope: !2445, file: !72, line: 725, type: !2751, isLocal: false, isDefinition: false, scopeLine: 725, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2760 = !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorIiSaIiEE5emptyEv", scope: !2445, file: !72, line: 734, type: !2761, isLocal: false, isDefinition: false, scopeLine: 734, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!198, !2731}
!2763 = !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorIiSaIiEE7reserveEm", scope: !2445, file: !72, line: 755, type: !2755, isLocal: false, isDefinition: false, scopeLine: 755, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2764 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIiSaIiEEixEm", scope: !2445, file: !72, line: 770, type: !2765, isLocal: false, isDefinition: false, scopeLine: 770, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!2767, !2669, !345}
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2445, file: !72, line: 225, baseType: !2768)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2457, file: !82, line: 135, baseType: !2769)
!2769 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2457, file: !82, line: 129, baseType: !2466)
!2771 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorIiSaIiEEixEm", scope: !2445, file: !72, line: 785, type: !2772, isLocal: false, isDefinition: false, scopeLine: 785, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!2774, !2731, !345}
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2445, file: !72, line: 226, baseType: !2775)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2457, file: !82, line: 136, baseType: !2776)
!2776 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2770)
!2778 = !DISubprogram(name: "_M_range_check", linkageName: "_ZNKSt6vectorIiSaIiEE14_M_range_checkEm", scope: !2445, file: !72, line: 791, type: !2779, isLocal: false, isDefinition: false, scopeLine: 791, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !2731, !345}
!2781 = !DISubprogram(name: "at", linkageName: "_ZNSt6vectorIiSaIiEE2atEm", scope: !2445, file: !72, line: 810, type: !2765, isLocal: false, isDefinition: false, scopeLine: 810, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2782 = !DISubprogram(name: "at", linkageName: "_ZNKSt6vectorIiSaIiEE2atEm", scope: !2445, file: !72, line: 828, type: !2772, isLocal: false, isDefinition: false, scopeLine: 828, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2783 = !DISubprogram(name: "front", linkageName: "_ZNSt6vectorIiSaIiEE5frontEv", scope: !2445, file: !72, line: 839, type: !2784, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!2767, !2669}
!2786 = !DISubprogram(name: "front", linkageName: "_ZNKSt6vectorIiSaIiEE5frontEv", scope: !2445, file: !72, line: 847, type: !2787, isLocal: false, isDefinition: false, scopeLine: 847, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!2774, !2731}
!2789 = !DISubprogram(name: "back", linkageName: "_ZNSt6vectorIiSaIiEE4backEv", scope: !2445, file: !72, line: 855, type: !2784, isLocal: false, isDefinition: false, scopeLine: 855, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2790 = !DISubprogram(name: "back", linkageName: "_ZNKSt6vectorIiSaIiEE4backEv", scope: !2445, file: !72, line: 863, type: !2787, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2791 = !DISubprogram(name: "data", linkageName: "_ZNSt6vectorIiSaIiEE4dataEv", scope: !2445, file: !72, line: 878, type: !2792, isLocal: false, isDefinition: false, scopeLine: 878, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!1124, !2669}
!2794 = !DISubprogram(name: "data", linkageName: "_ZNKSt6vectorIiSaIiEE4dataEv", scope: !2445, file: !72, line: 886, type: !2795, isLocal: false, isDefinition: false, scopeLine: 886, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!2495, !2731}
!2797 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIiSaIiEE9push_backERKi", scope: !2445, file: !72, line: 901, type: !2798, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null, !2669, !2682}
!2800 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIiSaIiEE9push_backEOi", scope: !2445, file: !72, line: 919, type: !2801, isLocal: false, isDefinition: false, scopeLine: 919, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{null, !2669, !2803}
!2803 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2684, size: 64)
!2804 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt6vectorIiSaIiEE8pop_backEv", scope: !2445, file: !72, line: 937, type: !2667, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2805 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi", scope: !2445, file: !72, line: 973, type: !2806, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!2724, !2669, !2724, !2682}
!2808 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEOi", scope: !2445, file: !72, line: 988, type: !2809, isLocal: false, isDefinition: false, scopeLine: 988, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!2724, !2669, !2724, !2803}
!2811 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPiS1_EESt16initializer_listIiE", scope: !2445, file: !72, line: 1005, type: !2812, isLocal: false, isDefinition: false, scopeLine: 1005, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !2669, !2724, !2703}
!2814 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi", scope: !2445, file: !72, line: 1023, type: !2815, isLocal: false, isDefinition: false, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{null, !2669, !2724, !345, !2682}
!2817 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPiS1_EE", scope: !2445, file: !72, line: 1075, type: !2818, isLocal: false, isDefinition: false, scopeLine: 1075, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!2724, !2669, !2724}
!2820 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPiS1_EES5_", scope: !2445, file: !72, line: 1096, type: !2821, isLocal: false, isDefinition: false, scopeLine: 1096, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!2724, !2669, !2724, !2724}
!2823 = !DISubprogram(name: "swap", linkageName: "_ZNSt6vectorIiSaIiEE4swapERS1_", scope: !2445, file: !72, line: 1108, type: !2824, isLocal: false, isDefinition: false, scopeLine: 1108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{null, !2669, !2708}
!2826 = !DISubprogram(name: "clear", linkageName: "_ZNSt6vectorIiSaIiEE5clearEv", scope: !2445, file: !72, line: 1125, type: !2667, isLocal: false, isDefinition: false, scopeLine: 1125, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2827 = !DISubprogram(name: "_M_fill_initialize", linkageName: "_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi", scope: !2445, file: !72, line: 1212, type: !2716, isLocal: false, isDefinition: false, scopeLine: 1212, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2828 = !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorIiSaIiEE21_M_default_initializeEm", scope: !2445, file: !72, line: 1222, type: !2755, isLocal: false, isDefinition: false, scopeLine: 1222, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2829 = !DISubprogram(name: "_M_fill_assign", linkageName: "_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi", scope: !2445, file: !72, line: 1268, type: !2716, isLocal: false, isDefinition: false, scopeLine: 1268, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2830 = !DISubprogram(name: "_M_fill_insert", linkageName: "_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi", scope: !2445, file: !72, line: 1309, type: !2815, isLocal: false, isDefinition: false, scopeLine: 1309, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2831 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorIiSaIiEE17_M_default_appendEm", scope: !2445, file: !72, line: 1314, type: !2755, isLocal: false, isDefinition: false, scopeLine: 1314, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2832 = !DISubprogram(name: "_M_shrink_to_fit", linkageName: "_ZNSt6vectorIiSaIiEE16_M_shrink_to_fitEv", scope: !2445, file: !72, line: 1317, type: !2833, isLocal: false, isDefinition: false, scopeLine: 1317, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!198, !2669}
!2835 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc", scope: !2445, file: !72, line: 1336, type: !2836, isLocal: false, isDefinition: false, scopeLine: 1336, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!2838, !2731, !345, !632}
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2445, file: !72, line: 232, baseType: !135)
!2839 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi", scope: !2445, file: !72, line: 1350, type: !2840, isLocal: false, isDefinition: false, scopeLine: 1350, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{null, !2669, !2842}
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2445, file: !72, line: 223, baseType: !2598)
!2843 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE", scope: !2445, file: !72, line: 1362, type: !2844, isLocal: false, isDefinition: false, scopeLine: 1362, flags: DIFlagPrototyped, isOptimized: true)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !2669, !2693, !642}
!2846 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb0EE", scope: !2445, file: !72, line: 1375, type: !2847, isLocal: false, isDefinition: false, scopeLine: 1375, flags: DIFlagPrototyped, isOptimized: true)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{null, !2669, !2693, !213}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_processed_", scope: !2439, file: !13, line: 468, baseType: !887, size: 64, offset: 320)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "items_processed_", scope: !2439, file: !13, line: 469, baseType: !887, size: 64, offset: 384)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "complexity_n_", scope: !2439, file: !13, line: 471, baseType: !385, size: 32, offset: 448)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "error_occurred_", scope: !2439, file: !13, line: 473, baseType: !198, size: 8, offset: 480)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2439, file: !13, line: 477, baseType: !2854, size: 384, offset: 512, flags: DIFlagPublic)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "UserCounters", scope: !15, file: !13, line: 289, baseType: !2855)
!2855 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "map<std::basic_string<char>, benchmark::Counter, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, benchmark::Counter> > >", scope: !7, file: !2856, line: 96, size: 384, elements: !2857, templateParams: !3475, identifier: "_ZTSSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE")
!2856 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stl_map.h", directory: "/u/v/a/van-sandt/wordsort/8")
!2857 = !{!2858, !3332, !3336, !3342, !3347, !3351, !3355, !3359, !3362, !3365, !3369, !3373, !3377, !3378, !3379, !3383, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3396, !3400, !3401, !3409, !3413, !3414, !3419, !3426, !3429, !3432, !3435, !3438, !3441, !3444, !3447, !3448, !3452, !3456, !3459, !3462, !3465, !3466, !3467, !3468, !3469, !3472}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !2855, file: !2856, line: 138, baseType: !2859, size: 384)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Rep_type", scope: !2855, file: !2856, line: 135, baseType: !2860)
!2860 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::basic_string<char>, benchmark::Counter> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, benchmark::Counter> > >", scope: !7, file: !6, line: 333, size: 384, elements: !2861, templateParams: !3326, identifier: "_ZTSSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE")
!2861 = !{!2862, !3076, !3081, !3086, !3090, !3094, !3097, !3098, !3102, !3107, !3111, !3112, !3113, !3114, !3115, !3116, !3119, !3120, !3121, !3128, !3131, !3134, !3137, !3138, !3139, !3142, !3145, !3149, !3153, !3154, !3155, !3196, !3197, !3202, !3203, !3208, !3211, !3214, !3217, !3218, !3221, !3224, !3225, !3226, !3229, !3234, !3238, !3242, !3243, !3247, !3250, !3253, !3256, !3257, !3258, !3263, !3268, !3269, !3270, !3273, !3276, !3277, !3280, !3283, !3286, !3289, !3292, !3296, !3299, !3303, !3304, !3307, !3310, !3313, !3314, !3315, !3316, !3317, !3321, !3325}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !2860, file: !6, line: 473, baseType: !2863, size: 384, flags: DIFlagProtected)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_impl<std::less<std::basic_string<char> >, true>", scope: !2860, file: !6, line: 439, size: 384, elements: !2864, templateParams: !3073, identifier: "_ZTSNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb1EEE")
!2864 = !{!2865, !3038, !3055, !3056, !3058, !3062, !3068, !3072}
!2865 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2863, baseType: !2866)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Node_allocator", scope: !2860, file: !6, line: 336, baseType: !2867)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !2868, file: !96, line: 105, baseType: !2985)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<std::_Rb_tree_node<std::pair<const std::basic_string<char>, benchmark::Counter> > >", scope: !2869, file: !96, line: 104, size: 8, elements: !43, templateParams: !2958, identifier: "_ZTSNSaISt4pairIKSsN9benchmark7CounterEEE6rebindISt13_Rb_tree_nodeIS3_EEE")
!2869 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<std::pair<const std::basic_string<char>, benchmark::Counter> >", scope: !7, file: !96, line: 92, size: 8, elements: !2870, templateParams: !2946, identifier: "_ZTSSaISt4pairIKSsN9benchmark7CounterEEE")
!2870 = !{!2871, !2948, !2952, !2957}
!2871 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2869, baseType: !2872, flags: DIFlagPublic)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<std::pair<const std::basic_string<char>, benchmark::Counter> >", scope: !7, file: !101, line: 48, baseType: !2873)
!2873 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<std::pair<const std::basic_string<char>, benchmark::Counter> >", scope: !84, file: !103, line: 58, size: 8, elements: !2874, templateParams: !2946, identifier: "_ZTSN9__gnu_cxx13new_allocatorISt4pairIKSsN9benchmark7CounterEEEE")
!2874 = !{!2875, !2879, !2884, !2885, !2931, !2937, !2940, !2943}
!2875 = !DISubprogram(name: "new_allocator", scope: !2873, file: !103, line: 79, type: !2876, isLocal: false, isDefinition: false, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2879 = !DISubprogram(name: "new_allocator", scope: !2873, file: !103, line: 81, type: !2880, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !2878, !2882}
!2882 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2883, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2873)
!2884 = !DISubprogram(name: "~new_allocator", scope: !2873, file: !103, line: 86, type: !2876, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2885 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorISt4pairIKSsN9benchmark7CounterEEE7addressERS5_", scope: !2873, file: !103, line: 89, type: !2886, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!2888, !2929, !2930}
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2873, file: !103, line: 63, baseType: !2889)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<const std::basic_string<char>, benchmark::Counter>", scope: !7, file: !2891, line: 96, size: 192, elements: !2892, templateParams: !2926, identifier: "_ZTSSt4pairIKSsN9benchmark7CounterEE")
!2891 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stl_pair.h", directory: "/u/v/a/van-sandt/wordsort/8")
!2892 = !{!2893, !2897, !2898, !2902, !2907, !2912, !2916, !2920, !2923}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2890, file: !2891, line: 101, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2895)
!2895 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !7, file: !2896, line: 1132, flags: DIFlagFwdDecl, identifier: "_ZTSSs")
!2896 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/basic_string.tcc", directory: "/u/v/a/van-sandt/wordsort/8")
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !2890, file: !2891, line: 102, baseType: !14, size: 128, offset: 64)
!2898 = !DISubprogram(name: "pair", scope: !2890, file: !2891, line: 108, type: !2899, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !2901}
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2902 = !DISubprogram(name: "pair", scope: !2890, file: !2891, line: 112, type: !2903, isLocal: false, isDefinition: false, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !2901, !2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2894, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !30, size: 64)
!2907 = !DISubprogram(name: "pair", scope: !2890, file: !2891, line: 127, type: !2908, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !2901, !2910}
!2910 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2890)
!2912 = !DISubprogram(name: "pair", scope: !2890, file: !2891, line: 128, type: !2913, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{null, !2901, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2890, size: 64)
!2916 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIKSsN9benchmark7CounterEEaSERKS3_", scope: !2890, file: !2891, line: 158, type: !2917, isLocal: false, isDefinition: false, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!2919, !2901, !2910}
!2919 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2890, size: 64)
!2920 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIKSsN9benchmark7CounterEEaSEOS3_", scope: !2890, file: !2891, line: 166, type: !2921, isLocal: false, isDefinition: false, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!2919, !2901, !2915}
!2923 = !DISubprogram(name: "swap", linkageName: "_ZNSt4pairIKSsN9benchmark7CounterEE4swapERS3_", scope: !2890, file: !2891, line: 194, type: !2924, isLocal: false, isDefinition: false, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !2901, !2919}
!2926 = !{!2927, !2928}
!2927 = !DITemplateTypeParameter(name: "_T1", type: !2894)
!2928 = !DITemplateTypeParameter(name: "_T2", type: !14)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2930 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2873, file: !103, line: 65, baseType: !2919)
!2931 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorISt4pairIKSsN9benchmark7CounterEEE7addressERKS5_", scope: !2873, file: !103, line: 93, type: !2932, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!2934, !2929, !2936}
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !2873, file: !103, line: 64, baseType: !2935)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2873, file: !103, line: 66, baseType: !2910)
!2937 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN9benchmark7CounterEEE8allocateEmPKv", scope: !2873, file: !103, line: 99, type: !2938, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!2888, !2878, !134, !137}
!2940 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN9benchmark7CounterEEE10deallocateEPS5_m", scope: !2873, file: !103, line: 109, type: !2941, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !2878, !2888, !134}
!2943 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorISt4pairIKSsN9benchmark7CounterEEE8max_sizeEv", scope: !2873, file: !103, line: 113, type: !2944, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!134, !2929}
!2946 = !{!2947}
!2947 = !DITemplateTypeParameter(name: "_Tp", type: !2890)
!2948 = !DISubprogram(name: "allocator", scope: !2869, file: !96, line: 113, type: !2949, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{null, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2952 = !DISubprogram(name: "allocator", scope: !2869, file: !96, line: 115, type: !2953, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2951, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2869)
!2957 = !DISubprogram(name: "~allocator", scope: !2869, file: !96, line: 121, type: !2949, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2958 = !{!2959}
!2959 = !DITemplateTypeParameter(name: "_Tp1", type: !2960)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_node<std::pair<const std::basic_string<char>, benchmark::Counter> >", scope: !7, file: !6, line: 131, size: 448, elements: !2961, templateParams: !2983, identifier: "_ZTSSt13_Rb_tree_nodeISt4pairIKSsN9benchmark7CounterEEE")
!2961 = !{!2962, !2982}
!2962 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2960, baseType: !2963)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_node_base", scope: !7, file: !6, line: 91, size: 256, elements: !2964, identifier: "_ZTSSt18_Rb_tree_node_base")
!2964 = !{!2965, !2966, !2969, !2970, !2971, !2974, !2980, !2981}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_M_color", scope: !2963, file: !6, line: 96, baseType: !5, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_M_parent", scope: !2963, file: !6, line: 97, baseType: !2967, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Base_ptr", scope: !2963, file: !6, line: 93, baseType: !2968)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_M_left", scope: !2963, file: !6, line: 98, baseType: !2967, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_M_right", scope: !2963, file: !6, line: 99, baseType: !2967, size: 64, offset: 192)
!2971 = !DISubprogram(name: "_S_minimum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_minimumEPS_", scope: !2963, file: !6, line: 102, type: !2972, isLocal: false, isDefinition: false, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!2967, !2967}
!2974 = !DISubprogram(name: "_S_minimum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_minimumEPKS_", scope: !2963, file: !6, line: 109, type: !2975, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!2977, !2977}
!2977 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Const_Base_ptr", scope: !2963, file: !6, line: 94, baseType: !2978)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2963)
!2980 = !DISubprogram(name: "_S_maximum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_maximumEPS_", scope: !2963, file: !6, line: 116, type: !2972, isLocal: false, isDefinition: false, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true)
!2981 = !DISubprogram(name: "_S_maximum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_maximumEPKS_", scope: !2963, file: !6, line: 123, type: !2975, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_M_value_field", scope: !2960, file: !6, line: 134, baseType: !2890, size: 192, offset: 256)
!2983 = !{!2984}
!2984 = !DITemplateTypeParameter(name: "_Val", type: !2890)
!2985 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<std::_Rb_tree_node<std::pair<const std::basic_string<char>, benchmark::Counter> > >", scope: !7, file: !96, line: 92, size: 8, elements: !2986, templateParams: !3026, identifier: "_ZTSSaISt13_Rb_tree_nodeISt4pairIKSsN9benchmark7CounterEEEE")
!2986 = !{!2987, !3028, !3032, !3037}
!2987 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2985, baseType: !2988, flags: DIFlagPublic)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<std::_Rb_tree_node<std::pair<const std::basic_string<char>, benchmark::Counter> > >", scope: !7, file: !101, line: 48, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<std::_Rb_tree_node<std::pair<const std::basic_string<char>, benchmark::Counter> > >", scope: !84, file: !103, line: 58, size: 8, elements: !2990, templateParams: !3026, identifier: "_ZTSN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN9benchmark7CounterEEEEE")
!2990 = !{!2991, !2995, !3000, !3001, !3009, !3017, !3020, !3023}
!2991 = !DISubprogram(name: "new_allocator", scope: !2989, file: !103, line: 79, type: !2992, isLocal: false, isDefinition: false, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{null, !2994}
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2995 = !DISubprogram(name: "new_allocator", scope: !2989, file: !103, line: 81, type: !2996, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null, !2994, !2998}
!2998 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2989)
!3000 = !DISubprogram(name: "~new_allocator", scope: !2989, file: !103, line: 86, type: !2992, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3001 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN9benchmark7CounterEEEE7addressERS7_", scope: !2989, file: !103, line: 89, type: !3002, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!3004, !3006, !3007}
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2989, file: !103, line: 63, baseType: !3005)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2989, file: !103, line: 65, baseType: !3008)
!3008 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2960, size: 64)
!3009 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN9benchmark7CounterEEEE7addressERKS7_", scope: !2989, file: !103, line: 93, type: !3010, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!3012, !3006, !3015}
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !2989, file: !103, line: 64, baseType: !3013)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2960)
!3015 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2989, file: !103, line: 66, baseType: !3016)
!3016 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3014, size: 64)
!3017 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN9benchmark7CounterEEEE8allocateEmPKv", scope: !2989, file: !103, line: 99, type: !3018, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!3004, !2994, !134, !137}
!3020 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN9benchmark7CounterEEEE10deallocateEPS7_m", scope: !2989, file: !103, line: 109, type: !3021, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !2994, !3004, !134}
!3023 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN9benchmark7CounterEEEE8max_sizeEv", scope: !2989, file: !103, line: 113, type: !3024, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!134, !3006}
!3026 = !{!3027}
!3027 = !DITemplateTypeParameter(name: "_Tp", type: !2960)
!3028 = !DISubprogram(name: "allocator", scope: !2985, file: !96, line: 113, type: !3029, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !3031}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3032 = !DISubprogram(name: "allocator", scope: !2985, file: !96, line: 115, type: !3033, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !3031, !3035}
!3035 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2985)
!3037 = !DISubprogram(name: "~allocator", scope: !2985, file: !96, line: 121, type: !3029, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_M_key_compare", scope: !2863, file: !6, line: 441, baseType: !3039, size: 8)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "less<std::basic_string<char> >", scope: !7, file: !3040, line: 231, size: 8, elements: !3041, templateParams: !3053, identifier: "_ZTSSt4lessISsE")
!3040 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stl_function.h", directory: "/u/v/a/van-sandt/wordsort/8")
!3041 = !{!3042, !3048}
!3042 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3039, baseType: !3043)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "binary_function<std::basic_string<char>, std::basic_string<char>, bool>", scope: !7, file: !3040, line: 114, size: 8, elements: !43, templateParams: !3044, identifier: "_ZTSSt15binary_functionISsSsbE")
!3044 = !{!3045, !3046, !3047}
!3045 = !DITemplateTypeParameter(name: "_Arg1", type: !2895)
!3046 = !DITemplateTypeParameter(name: "_Arg2", type: !2895)
!3047 = !DITemplateTypeParameter(name: "_Result", type: !198)
!3048 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt4lessISsEclERKSsS2_", scope: !3039, file: !3040, line: 234, type: !3049, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!198, !3051, !2905, !2905}
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3039)
!3053 = !{!3054}
!3054 = !DITemplateTypeParameter(name: "_Tp", type: !2895)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_M_header", scope: !2863, file: !6, line: 442, baseType: !2963, size: 256, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_M_node_count", scope: !2863, file: !6, line: 443, baseType: !3057, size: 64, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !6, line: 351, baseType: !135)
!3058 = !DISubprogram(name: "_Rb_tree_impl", scope: !2863, file: !6, line: 445, type: !3059, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !3061}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3062 = !DISubprogram(name: "_Rb_tree_impl", scope: !2863, file: !6, line: 450, type: !3063, isLocal: false, isDefinition: false, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{null, !3061, !3065, !3066}
!3065 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3052, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2866)
!3068 = !DISubprogram(name: "_Rb_tree_impl", scope: !2863, file: !6, line: 456, type: !3069, isLocal: false, isDefinition: false, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: true)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{null, !3061, !3065, !3071}
!3071 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2866, size: 64)
!3072 = !DISubprogram(name: "_M_initialize", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb1EE13_M_initializeEv", scope: !2863, file: !6, line: 464, type: !3059, isLocal: false, isDefinition: false, scopeLine: 464, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!3073 = !{!3074, !3075}
!3074 = !DITemplateTypeParameter(name: "_Key_compare", type: !3039)
!3075 = !DITemplateValueParameter(name: "_Is_pod_comparator", type: !198, value: i8 1)
!3076 = !DISubprogram(name: "_M_get_Node_allocator", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE21_M_get_Node_allocatorEv", scope: !2860, file: !6, line: 356, type: !3077, isLocal: false, isDefinition: false, scopeLine: 356, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!3079, !3080}
!3079 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2866, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3081 = !DISubprogram(name: "_M_get_Node_allocator", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE21_M_get_Node_allocatorEv", scope: !2860, file: !6, line: 360, type: !3082, isLocal: false, isDefinition: false, scopeLine: 360, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!3066, !3084}
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2860)
!3086 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE13get_allocatorEv", scope: !2860, file: !6, line: 364, type: !3087, isLocal: false, isDefinition: false, scopeLine: 364, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!3089, !3084}
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2860, file: !6, line: 353, baseType: !2869)
!3090 = !DISubprogram(name: "_M_get_node", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_get_nodeEv", scope: !2860, file: !6, line: 369, type: !3091, isLocal: false, isDefinition: false, scopeLine: 369, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!3093, !3080}
!3093 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Link_type", scope: !2860, file: !6, line: 349, baseType: !3005)
!3094 = !DISubprogram(name: "_M_put_node", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E", scope: !2860, file: !6, line: 373, type: !3095, isLocal: false, isDefinition: false, scopeLine: 373, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{null, !3080, !3093}
!3097 = !DISubprogram(name: "_M_destroy_node", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E", scope: !2860, file: !6, line: 419, type: !3095, isLocal: false, isDefinition: false, scopeLine: 419, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3098 = !DISubprogram(name: "_M_clone_node", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_M_clone_nodeEPKSt13_Rb_tree_nodeIS4_E", scope: !2860, file: !6, line: 427, type: !3099, isLocal: false, isDefinition: false, scopeLine: 427, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!3093, !3080, !3101}
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Const_Link_type", scope: !2860, file: !6, line: 350, baseType: !3013)
!3102 = !DISubprogram(name: "_M_root", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_M_rootEv", scope: !2860, file: !6, line: 477, type: !3103, isLocal: false, isDefinition: false, scopeLine: 477, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!3105, !3080}
!3105 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Base_ptr", file: !6, line: 339, baseType: !2968)
!3107 = !DISubprogram(name: "_M_root", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_M_rootEv", scope: !2860, file: !6, line: 481, type: !3108, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!3110, !3084}
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Const_Base_ptr", file: !6, line: 340, baseType: !2978)
!3111 = !DISubprogram(name: "_M_leftmost", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv", scope: !2860, file: !6, line: 485, type: !3103, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3112 = !DISubprogram(name: "_M_leftmost", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv", scope: !2860, file: !6, line: 489, type: !3108, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3113 = !DISubprogram(name: "_M_rightmost", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv", scope: !2860, file: !6, line: 493, type: !3103, isLocal: false, isDefinition: false, scopeLine: 493, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3114 = !DISubprogram(name: "_M_rightmost", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv", scope: !2860, file: !6, line: 497, type: !3108, isLocal: false, isDefinition: false, scopeLine: 497, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3115 = !DISubprogram(name: "_M_begin", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv", scope: !2860, file: !6, line: 501, type: !3091, isLocal: false, isDefinition: false, scopeLine: 501, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3116 = !DISubprogram(name: "_M_begin", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv", scope: !2860, file: !6, line: 505, type: !3117, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!3101, !3084}
!3119 = !DISubprogram(name: "_M_end", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv", scope: !2860, file: !6, line: 512, type: !3091, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3120 = !DISubprogram(name: "_M_end", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv", scope: !2860, file: !6, line: 516, type: !3117, isLocal: false, isDefinition: false, scopeLine: 516, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3121 = !DISubprogram(name: "_S_value", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E", scope: !2860, file: !6, line: 520, type: !3122, isLocal: false, isDefinition: false, scopeLine: 520, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!3124, !3101}
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2860, file: !6, line: 348, baseType: !3125)
!3125 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3127)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2860, file: !6, line: 344, baseType: !2890)
!3128 = !DISubprogram(name: "_S_key", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E", scope: !2860, file: !6, line: 524, type: !3129, isLocal: false, isDefinition: false, scopeLine: 524, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!2905, !3101}
!3131 = !DISubprogram(name: "_S_left", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base", scope: !2860, file: !6, line: 528, type: !3132, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!3093, !3106}
!3134 = !DISubprogram(name: "_S_left", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPKSt18_Rb_tree_node_base", scope: !2860, file: !6, line: 532, type: !3135, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!3101, !3110}
!3137 = !DISubprogram(name: "_S_right", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base", scope: !2860, file: !6, line: 536, type: !3132, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3138 = !DISubprogram(name: "_S_right", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPKSt18_Rb_tree_node_base", scope: !2860, file: !6, line: 540, type: !3135, isLocal: false, isDefinition: false, scopeLine: 540, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3139 = !DISubprogram(name: "_S_value", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base", scope: !2860, file: !6, line: 544, type: !3140, isLocal: false, isDefinition: false, scopeLine: 544, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!3124, !3110}
!3142 = !DISubprogram(name: "_S_key", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base", scope: !2860, file: !6, line: 548, type: !3143, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!2905, !3110}
!3145 = !DISubprogram(name: "_S_minimum", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base", scope: !2860, file: !6, line: 552, type: !3146, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!3148, !3106}
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Base_ptr", scope: !2860, file: !6, line: 339, baseType: !2968)
!3149 = !DISubprogram(name: "_S_minimum", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_S_minimumEPKSt18_Rb_tree_node_base", scope: !2860, file: !6, line: 556, type: !3150, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!3152, !3110}
!3152 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Const_Base_ptr", scope: !2860, file: !6, line: 340, baseType: !2978)
!3153 = !DISubprogram(name: "_S_maximum", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_S_maximumEPSt18_Rb_tree_node_base", scope: !2860, file: !6, line: 560, type: !3146, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3154 = !DISubprogram(name: "_S_maximum", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_S_maximumEPKSt18_Rb_tree_node_base", scope: !2860, file: !6, line: 564, type: !3150, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3155 = !DISubprogram(name: "_M_get_insert_unique_pos", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE24_M_get_insert_unique_posERS1_", scope: !2860, file: !6, line: 576, type: !3156, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: true)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!3158, !3080, !3193}
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<std::_Rb_tree_node_base *, std::_Rb_tree_node_base *>", scope: !7, file: !2891, line: 96, size: 128, elements: !3159, templateParams: !3190, identifier: "_ZTSSt4pairIPSt18_Rb_tree_node_baseS1_E")
!3159 = !{!3160, !3161, !3162, !3166, !3171, !3176, !3180, !3184, !3187}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3158, file: !2891, line: 101, baseType: !2968, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !3158, file: !2891, line: 102, baseType: !2968, size: 64, offset: 64)
!3162 = !DISubprogram(name: "pair", scope: !3158, file: !2891, line: 108, type: !3163, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{null, !3165}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3166 = !DISubprogram(name: "pair", scope: !3158, file: !2891, line: 112, type: !3167, isLocal: false, isDefinition: false, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !3165, !3169, !3169}
!3169 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2968)
!3171 = !DISubprogram(name: "pair", scope: !3158, file: !2891, line: 127, type: !3172, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{null, !3165, !3174}
!3174 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3158)
!3176 = !DISubprogram(name: "pair", scope: !3158, file: !2891, line: 128, type: !3177, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{null, !3165, !3179}
!3179 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3158, size: 64)
!3180 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EaSERKS2_", scope: !3158, file: !2891, line: 158, type: !3181, isLocal: false, isDefinition: false, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!3183, !3165, !3174}
!3183 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3158, size: 64)
!3184 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EaSEOS2_", scope: !3158, file: !2891, line: 166, type: !3185, isLocal: false, isDefinition: false, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!3183, !3165, !3179}
!3187 = !DISubprogram(name: "swap", linkageName: "_ZNSt4pairIPSt18_Rb_tree_node_baseS1_E4swapERS2_", scope: !3158, file: !2891, line: 194, type: !3188, isLocal: false, isDefinition: false, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !3165, !3183}
!3190 = !{!3191, !3192}
!3191 = !DITemplateTypeParameter(name: "_T1", type: !2968)
!3192 = !DITemplateTypeParameter(name: "_T2", type: !2968)
!3193 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3195)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_type", scope: !2860, file: !6, line: 343, baseType: !2895)
!3196 = !DISubprogram(name: "_M_get_insert_equal_pos", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE23_M_get_insert_equal_posERS1_", scope: !2860, file: !6, line: 579, type: !3156, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true)
!3197 = !DISubprogram(name: "_M_get_insert_hint_unique_pos", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_", scope: !2860, file: !6, line: 582, type: !3198, isLocal: false, isDefinition: false, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: true)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!3158, !3080, !3200, !3193}
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !2860, file: !6, line: 569, baseType: !3201)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_const_iterator<std::pair<const std::basic_string<char>, benchmark::Counter> >", scope: !7, file: !6, line: 228, flags: DIFlagFwdDecl, identifier: "_ZTSSt23_Rb_tree_const_iteratorISt4pairIKSsN9benchmark7CounterEEE")
!3202 = !DISubprogram(name: "_M_get_insert_hint_equal_pos", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIS4_ERS1_", scope: !2860, file: !6, line: 586, type: !3198, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true)
!3203 = !DISubprogram(name: "_M_insert_node", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS4_E", scope: !2860, file: !6, line: 595, type: !3204, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!3206, !3080, !3106, !3106, !3093}
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !2860, file: !6, line: 568, baseType: !3207)
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_iterator<std::pair<const std::basic_string<char>, benchmark::Counter> >", scope: !7, file: !6, line: 157, flags: DIFlagFwdDecl, identifier: "_ZTSSt17_Rb_tree_iteratorISt4pairIKSsN9benchmark7CounterEEE")
!3208 = !DISubprogram(name: "_M_insert_lower_node", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE20_M_insert_lower_nodeEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS4_E", scope: !2860, file: !6, line: 606, type: !3209, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: true)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!3206, !3080, !3106, !3093}
!3211 = !DISubprogram(name: "_M_insert_equal_lower_node", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE26_M_insert_equal_lower_nodeEPSt13_Rb_tree_nodeIS4_E", scope: !2860, file: !6, line: 609, type: !3212, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: true)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!3206, !3080, !3093}
!3214 = !DISubprogram(name: "_M_copy", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_M_copyEPKSt13_Rb_tree_nodeIS4_EPSC_", scope: !2860, file: !6, line: 625, type: !3215, isLocal: false, isDefinition: false, scopeLine: 625, flags: DIFlagPrototyped, isOptimized: true)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!3093, !3080, !3101, !3093}
!3217 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E", scope: !2860, file: !6, line: 628, type: !3095, isLocal: false, isDefinition: false, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: true)
!3218 = !DISubprogram(name: "_M_lower_bound", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_", scope: !2860, file: !6, line: 631, type: !3219, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!3206, !3080, !3093, !3093, !2905}
!3221 = !DISubprogram(name: "_M_lower_bound", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_ESE_RS1_", scope: !2860, file: !6, line: 635, type: !3222, isLocal: false, isDefinition: false, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: true)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!3200, !3084, !3101, !3101, !2905}
!3224 = !DISubprogram(name: "_M_upper_bound", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_", scope: !2860, file: !6, line: 639, type: !3219, isLocal: false, isDefinition: false, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true)
!3225 = !DISubprogram(name: "_M_upper_bound", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_upper_boundEPKSt13_Rb_tree_nodeIS4_ESE_RS1_", scope: !2860, file: !6, line: 643, type: !3222, isLocal: false, isDefinition: false, scopeLine: 643, flags: DIFlagPrototyped, isOptimized: true)
!3226 = !DISubprogram(name: "_Rb_tree", scope: !2860, file: !6, line: 648, type: !3227, isLocal: false, isDefinition: false, scopeLine: 648, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !3080}
!3229 = !DISubprogram(name: "_Rb_tree", scope: !2860, file: !6, line: 650, type: !3230, isLocal: false, isDefinition: false, scopeLine: 650, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{null, !3080, !3065, !3232}
!3232 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3089)
!3234 = !DISubprogram(name: "_Rb_tree", scope: !2860, file: !6, line: 654, type: !3235, isLocal: false, isDefinition: false, scopeLine: 654, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !3080, !3237}
!3237 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3085, size: 64)
!3238 = !DISubprogram(name: "_Rb_tree", scope: !2860, file: !6, line: 667, type: !3239, isLocal: false, isDefinition: false, scopeLine: 667, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !3080, !3241}
!3241 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2860, size: 64)
!3242 = !DISubprogram(name: "~_Rb_tree", scope: !2860, file: !6, line: 670, type: !3227, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3243 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EEaSERKSA_", scope: !2860, file: !6, line: 674, type: !3244, isLocal: false, isDefinition: false, scopeLine: 674, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!3246, !3080, !3237}
!3246 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2860, size: 64)
!3247 = !DISubprogram(name: "key_comp", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE8key_compEv", scope: !2860, file: !6, line: 678, type: !3248, isLocal: false, isDefinition: false, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!3039, !3084}
!3250 = !DISubprogram(name: "begin", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv", scope: !2860, file: !6, line: 682, type: !3251, isLocal: false, isDefinition: false, scopeLine: 682, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!3206, !3080}
!3253 = !DISubprogram(name: "begin", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv", scope: !2860, file: !6, line: 689, type: !3254, isLocal: false, isDefinition: false, scopeLine: 689, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!3200, !3084}
!3256 = !DISubprogram(name: "end", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv", scope: !2860, file: !6, line: 696, type: !3251, isLocal: false, isDefinition: false, scopeLine: 696, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3257 = !DISubprogram(name: "end", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv", scope: !2860, file: !6, line: 700, type: !3254, isLocal: false, isDefinition: false, scopeLine: 700, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3258 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE6rbeginEv", scope: !2860, file: !6, line: 707, type: !3259, isLocal: false, isDefinition: false, scopeLine: 707, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!3261, !3080}
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !2860, file: !6, line: 571, baseType: !3262)
!3262 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::_Rb_tree_iterator<std::pair<const std::basic_string<char>, benchmark::Counter> > >", scope: !7, file: !347, line: 96, flags: DIFlagFwdDecl, identifier: "_ZTSSt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKSsN9benchmark7CounterEEEE")
!3263 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE6rbeginEv", scope: !2860, file: !6, line: 711, type: !3264, isLocal: false, isDefinition: false, scopeLine: 711, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!3266, !3084}
!3266 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !2860, file: !6, line: 572, baseType: !3267)
!3267 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::_Rb_tree_const_iterator<std::pair<const std::basic_string<char>, benchmark::Counter> > >", scope: !7, file: !347, line: 96, flags: DIFlagFwdDecl, identifier: "_ZTSSt16reverse_iteratorISt23_Rb_tree_const_iteratorISt4pairIKSsN9benchmark7CounterEEEE")
!3268 = !DISubprogram(name: "rend", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE4rendEv", scope: !2860, file: !6, line: 715, type: !3259, isLocal: false, isDefinition: false, scopeLine: 715, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3269 = !DISubprogram(name: "rend", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE4rendEv", scope: !2860, file: !6, line: 719, type: !3264, isLocal: false, isDefinition: false, scopeLine: 719, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3270 = !DISubprogram(name: "empty", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE5emptyEv", scope: !2860, file: !6, line: 723, type: !3271, isLocal: false, isDefinition: false, scopeLine: 723, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!198, !3084}
!3273 = !DISubprogram(name: "size", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE4sizeEv", scope: !2860, file: !6, line: 727, type: !3274, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!3057, !3084}
!3276 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE8max_sizeEv", scope: !2860, file: !6, line: 731, type: !3274, isLocal: false, isDefinition: false, scopeLine: 731, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3277 = !DISubprogram(name: "swap", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE4swapERSA_", scope: !2860, file: !6, line: 735, type: !3278, isLocal: false, isDefinition: false, scopeLine: 735, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3080, !3246}
!3280 = !DISubprogram(name: "_M_erase_aux", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS4_E", scope: !2860, file: !6, line: 794, type: !3281, isLocal: false, isDefinition: false, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{null, !3080, !3200}
!3283 = !DISubprogram(name: "_M_erase_aux", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS4_ESC_", scope: !2860, file: !6, line: 797, type: !3284, isLocal: false, isDefinition: false, scopeLine: 797, flags: DIFlagPrototyped, isOptimized: true)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{null, !3080, !3200, !3200}
!3286 = !DISubprogram(name: "erase", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS4_E", scope: !2860, file: !6, line: 805, type: !3287, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!3206, !3080, !3200}
!3289 = !DISubprogram(name: "erase", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS4_E", scope: !2860, file: !6, line: 816, type: !3290, isLocal: false, isDefinition: false, scopeLine: 816, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!3206, !3080, !3206}
!3292 = !DISubprogram(name: "erase", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE5eraseERS1_", scope: !2860, file: !6, line: 833, type: !3293, isLocal: false, isDefinition: false, scopeLine: 833, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!3295, !3080, !3193}
!3295 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2860, file: !6, line: 351, baseType: !135)
!3296 = !DISubprogram(name: "erase", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS4_ESC_", scope: !2860, file: !6, line: 840, type: !3297, isLocal: false, isDefinition: false, scopeLine: 840, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!3206, !3080, !3200, !3200}
!3299 = !DISubprogram(name: "erase", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE5eraseEPS1_SB_", scope: !2860, file: !6, line: 855, type: !3300, isLocal: false, isDefinition: false, scopeLine: 855, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{null, !3080, !3302, !3302}
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3303 = !DISubprogram(name: "clear", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE5clearEv", scope: !2860, file: !6, line: 858, type: !3227, isLocal: false, isDefinition: false, scopeLine: 858, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3304 = !DISubprogram(name: "find", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_", scope: !2860, file: !6, line: 869, type: !3305, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!3206, !3080, !3193}
!3307 = !DISubprogram(name: "find", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_", scope: !2860, file: !6, line: 872, type: !3308, isLocal: false, isDefinition: false, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!3200, !3084, !3193}
!3310 = !DISubprogram(name: "count", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE5countERS1_", scope: !2860, file: !6, line: 875, type: !3311, isLocal: false, isDefinition: false, scopeLine: 875, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!3295, !3084, !3193}
!3313 = !DISubprogram(name: "lower_bound", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_", scope: !2860, file: !6, line: 878, type: !3305, isLocal: false, isDefinition: false, scopeLine: 878, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3314 = !DISubprogram(name: "lower_bound", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_", scope: !2860, file: !6, line: 882, type: !3308, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3315 = !DISubprogram(name: "upper_bound", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE11upper_boundERS1_", scope: !2860, file: !6, line: 886, type: !3305, isLocal: false, isDefinition: false, scopeLine: 886, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3316 = !DISubprogram(name: "upper_bound", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE11upper_boundERS1_", scope: !2860, file: !6, line: 890, type: !3308, isLocal: false, isDefinition: false, scopeLine: 890, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3317 = !DISubprogram(name: "equal_range", linkageName: "_ZNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE11equal_rangeERS1_", scope: !2860, file: !6, line: 894, type: !3318, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!3320, !3080, !3193}
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "pair<std::_Rb_tree_iterator<std::pair<const std::basic_string<char>, benchmark::Counter> >, std::_Rb_tree_iterator<std::pair<const std::basic_string<char>, benchmark::Counter> > >", scope: !7, file: !2891, line: 96, flags: DIFlagFwdDecl, identifier: "_ZTSSt4pairISt17_Rb_tree_iteratorIS_IKSsN9benchmark7CounterEEES5_E")
!3321 = !DISubprogram(name: "equal_range", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE11equal_rangeERS1_", scope: !2860, file: !6, line: 897, type: !3322, isLocal: false, isDefinition: false, scopeLine: 897, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!3324, !3084, !3193}
!3324 = !DICompositeType(tag: DW_TAG_structure_type, name: "pair<std::_Rb_tree_const_iterator<std::pair<const std::basic_string<char>, benchmark::Counter> >, std::_Rb_tree_const_iterator<std::pair<const std::basic_string<char>, benchmark::Counter> > >", scope: !7, file: !2891, line: 96, flags: DIFlagFwdDecl, identifier: "_ZTSSt4pairISt23_Rb_tree_const_iteratorIS_IKSsN9benchmark7CounterEEES5_E")
!3325 = !DISubprogram(name: "__rb_verify", linkageName: "_ZNKSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE11__rb_verifyEv", scope: !2860, file: !6, line: 901, type: !3271, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3326 = !{!3327, !2984, !3328, !3330, !3331}
!3327 = !DITemplateTypeParameter(name: "_Key", type: !2895)
!3328 = !DITemplateTypeParameter(name: "_KeyOfValue", type: !3329)
!3329 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Select1st<std::pair<const std::basic_string<char>, benchmark::Counter> >", scope: !7, file: !3040, line: 486, flags: DIFlagFwdDecl, identifier: "_ZTSSt10_Select1stISt4pairIKSsN9benchmark7CounterEEE")
!3330 = !DITemplateTypeParameter(name: "_Compare", type: !3039)
!3331 = !DITemplateTypeParameter(name: "_Alloc", type: !2869)
!3332 = !DISubprogram(name: "map", scope: !2855, file: !2856, line: 160, type: !3333, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !3335}
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3336 = !DISubprogram(name: "map", scope: !2855, file: !2856, line: 169, type: !3337, isLocal: false, isDefinition: false, scopeLine: 169, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{null, !3335, !3065, !3339}
!3339 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3341)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2855, file: !2856, line: 103, baseType: !2869)
!3342 = !DISubprogram(name: "map", scope: !2855, file: !2856, line: 180, type: !3343, isLocal: false, isDefinition: false, scopeLine: 180, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{null, !3335, !3345}
!3345 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2855)
!3347 = !DISubprogram(name: "map", scope: !2855, file: !2856, line: 191, type: !3348, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !3335, !3350}
!3350 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2855, size: 64)
!3351 = !DISubprogram(name: "map", scope: !2855, file: !2856, line: 206, type: !3352, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{null, !3335, !3354, !3065, !3339}
!3354 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<std::pair<const std::basic_string<char>, benchmark::Counter> >", scope: !7, file: !443, line: 47, flags: DIFlagFwdDecl, identifier: "_ZTSSt16initializer_listISt4pairIKSsN9benchmark7CounterEEE")
!3355 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEEaSERKS8_", scope: !2855, file: !2856, line: 264, type: !3356, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!3358, !3335, !3345}
!3358 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2855, size: 64)
!3359 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEEaSEOS8_", scope: !2855, file: !2856, line: 279, type: !3360, isLocal: false, isDefinition: false, scopeLine: 279, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!3358, !3335, !3350}
!3362 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEEaSESt16initializer_listIS6_E", scope: !2855, file: !2856, line: 300, type: !3363, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!3358, !3335, !3354}
!3365 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE13get_allocatorEv", scope: !2855, file: !2856, line: 310, type: !3366, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!3341, !3368}
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3369 = !DISubprogram(name: "begin", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE5beginEv", scope: !2855, file: !2856, line: 320, type: !3370, isLocal: false, isDefinition: false, scopeLine: 320, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!3372, !3335}
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !2855, file: !2856, line: 147, baseType: !3206)
!3373 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE5beginEv", scope: !2855, file: !2856, line: 329, type: !3374, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!3376, !3368}
!3376 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !2855, file: !2856, line: 148, baseType: !3200)
!3377 = !DISubprogram(name: "end", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE3endEv", scope: !2855, file: !2856, line: 338, type: !3370, isLocal: false, isDefinition: false, scopeLine: 338, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3378 = !DISubprogram(name: "end", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE3endEv", scope: !2855, file: !2856, line: 347, type: !3374, isLocal: false, isDefinition: false, scopeLine: 347, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3379 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE6rbeginEv", scope: !2855, file: !2856, line: 356, type: !3380, isLocal: false, isDefinition: false, scopeLine: 356, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!3382, !3335}
!3382 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !2855, file: !2856, line: 151, baseType: !3261)
!3383 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE6rbeginEv", scope: !2855, file: !2856, line: 365, type: !3384, isLocal: false, isDefinition: false, scopeLine: 365, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!3386, !3368}
!3386 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !2855, file: !2856, line: 152, baseType: !3266)
!3387 = !DISubprogram(name: "rend", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE4rendEv", scope: !2855, file: !2856, line: 374, type: !3380, isLocal: false, isDefinition: false, scopeLine: 374, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3388 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE4rendEv", scope: !2855, file: !2856, line: 383, type: !3384, isLocal: false, isDefinition: false, scopeLine: 383, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3389 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE6cbeginEv", scope: !2855, file: !2856, line: 393, type: !3374, isLocal: false, isDefinition: false, scopeLine: 393, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3390 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE4cendEv", scope: !2855, file: !2856, line: 402, type: !3374, isLocal: false, isDefinition: false, scopeLine: 402, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3391 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE7crbeginEv", scope: !2855, file: !2856, line: 411, type: !3384, isLocal: false, isDefinition: false, scopeLine: 411, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3392 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE5crendEv", scope: !2855, file: !2856, line: 420, type: !3384, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3393 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE5emptyEv", scope: !2855, file: !2856, line: 429, type: !3394, isLocal: false, isDefinition: false, scopeLine: 429, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!198, !3368}
!3396 = !DISubprogram(name: "size", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE4sizeEv", scope: !2855, file: !2856, line: 434, type: !3397, isLocal: false, isDefinition: false, scopeLine: 434, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!3399, !3368}
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2855, file: !2856, line: 149, baseType: !3295)
!3400 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE8max_sizeEv", scope: !2855, file: !2856, line: 439, type: !3397, isLocal: false, isDefinition: false, scopeLine: 439, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3401 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEEixERS5_", scope: !2855, file: !2856, line: 456, type: !3402, isLocal: false, isDefinition: false, scopeLine: 456, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!3404, !3335, !3406}
!3404 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "mapped_type", scope: !2855, file: !2856, line: 100, baseType: !14)
!3406 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3407, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3408)
!3408 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_type", scope: !2855, file: !2856, line: 99, baseType: !2895)
!3409 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEEixEOSs", scope: !2855, file: !2856, line: 476, type: !3410, isLocal: false, isDefinition: false, scopeLine: 476, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!3404, !3335, !3412}
!3412 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3408, size: 64)
!3413 = !DISubprogram(name: "at", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE2atERS5_", scope: !2855, file: !2856, line: 501, type: !3402, isLocal: false, isDefinition: false, scopeLine: 501, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3414 = !DISubprogram(name: "at", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE2atERS5_", scope: !2855, file: !2856, line: 510, type: !3415, isLocal: false, isDefinition: false, scopeLine: 510, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!3417, !3368, !3406}
!3417 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3405)
!3419 = !DISubprogram(name: "insert", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE6insertERKS6_", scope: !2855, file: !2856, line: 594, type: !3420, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!3422, !3335, !3423}
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "pair<std::_Rb_tree_iterator<std::pair<const std::basic_string<char>, benchmark::Counter> >, bool>", scope: !7, file: !2891, line: 96, flags: DIFlagFwdDecl, identifier: "_ZTSSt4pairISt17_Rb_tree_iteratorIS_IKSsN9benchmark7CounterEEEbE")
!3423 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3425)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2855, file: !2856, line: 101, baseType: !2890)
!3426 = !DISubprogram(name: "insert", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE6insertESt16initializer_listIS6_E", scope: !2855, file: !2856, line: 615, type: !3427, isLocal: false, isDefinition: false, scopeLine: 615, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !3335, !3354}
!3429 = !DISubprogram(name: "insert", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE6insertESt23_Rb_tree_const_iteratorIS6_ERKS6_", scope: !2855, file: !2856, line: 644, type: !3430, isLocal: false, isDefinition: false, scopeLine: 644, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!3372, !3335, !3376, !3423}
!3432 = !DISubprogram(name: "erase", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE5eraseESt23_Rb_tree_const_iteratorIS6_E", scope: !2855, file: !2856, line: 690, type: !3433, isLocal: false, isDefinition: false, scopeLine: 690, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!3372, !3335, !3376}
!3435 = !DISubprogram(name: "erase", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS6_E", scope: !2855, file: !2856, line: 696, type: !3436, isLocal: false, isDefinition: false, scopeLine: 696, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!3372, !3335, !3372}
!3438 = !DISubprogram(name: "erase", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE5eraseERS5_", scope: !2855, file: !2856, line: 726, type: !3439, isLocal: false, isDefinition: false, scopeLine: 726, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!3399, !3335, !3406}
!3441 = !DISubprogram(name: "erase", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE5eraseESt23_Rb_tree_const_iteratorIS6_ESA_", scope: !2855, file: !2856, line: 746, type: !3442, isLocal: false, isDefinition: false, scopeLine: 746, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!3372, !3335, !3376, !3376}
!3444 = !DISubprogram(name: "swap", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE4swapERS8_", scope: !2855, file: !2856, line: 778, type: !3445, isLocal: false, isDefinition: false, scopeLine: 778, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !3335, !3358}
!3447 = !DISubprogram(name: "clear", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE5clearEv", scope: !2855, file: !2856, line: 788, type: !3333, isLocal: false, isDefinition: false, scopeLine: 788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3448 = !DISubprogram(name: "key_comp", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE8key_compEv", scope: !2855, file: !2856, line: 797, type: !3449, isLocal: false, isDefinition: false, scopeLine: 797, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!3451, !3368}
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_compare", scope: !2855, file: !2856, line: 102, baseType: !3039)
!3452 = !DISubprogram(name: "value_comp", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE10value_compEv", scope: !2855, file: !2856, line: 805, type: !3453, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!3455, !3368}
!3455 = !DICompositeType(tag: DW_TAG_class_type, name: "value_compare", scope: !2855, file: !2856, line: 114, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE13value_compareE")
!3456 = !DISubprogram(name: "find", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE4findERS5_", scope: !2855, file: !2856, line: 821, type: !3457, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!3372, !3335, !3406}
!3459 = !DISubprogram(name: "find", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE4findERS5_", scope: !2855, file: !2856, line: 836, type: !3460, isLocal: false, isDefinition: false, scopeLine: 836, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!3376, !3368, !3406}
!3462 = !DISubprogram(name: "count", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE5countERS5_", scope: !2855, file: !2856, line: 848, type: !3463, isLocal: false, isDefinition: false, scopeLine: 848, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!3399, !3368, !3406}
!3465 = !DISubprogram(name: "lower_bound", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE11lower_boundERS5_", scope: !2855, file: !2856, line: 863, type: !3457, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3466 = !DISubprogram(name: "lower_bound", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE11lower_boundERS5_", scope: !2855, file: !2856, line: 878, type: !3460, isLocal: false, isDefinition: false, scopeLine: 878, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3467 = !DISubprogram(name: "upper_bound", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE11upper_boundERS5_", scope: !2855, file: !2856, line: 888, type: !3457, isLocal: false, isDefinition: false, scopeLine: 888, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3468 = !DISubprogram(name: "upper_bound", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE11upper_boundERS5_", scope: !2855, file: !2856, line: 898, type: !3460, isLocal: false, isDefinition: false, scopeLine: 898, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3469 = !DISubprogram(name: "equal_range", linkageName: "_ZNSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE11equal_rangeERS5_", scope: !2855, file: !2856, line: 917, type: !3470, isLocal: false, isDefinition: false, scopeLine: 917, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!3320, !3335, !3406}
!3472 = !DISubprogram(name: "equal_range", linkageName: "_ZNKSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE11equal_rangeERS5_", scope: !2855, file: !2856, line: 936, type: !3473, isLocal: false, isDefinition: false, scopeLine: 936, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!3324, !3368, !3406}
!3475 = !{!3327, !3476, !3330, !3331}
!3476 = !DITemplateTypeParameter(name: "_Tp", type: !14)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_index", scope: !2439, file: !13, line: 479, baseType: !2496, size: 32, offset: 896, flags: DIFlagPublic)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !2439, file: !13, line: 481, baseType: !2496, size: 32, offset: 928, flags: DIFlagPublic)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "max_iterations", scope: !2439, file: !13, line: 482, baseType: !3480, size: 64, offset: 960, flags: DIFlagPublic)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "timer_", scope: !2439, file: !13, line: 492, baseType: !3482, size: 64, offset: 1024)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DICompositeType(tag: DW_TAG_class_type, name: "ThreadTimer", scope: !838, file: !13, line: 307, flags: DIFlagFwdDecl, identifier: "_ZTSN9benchmark8internal11ThreadTimerE")
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "manager_", scope: !2439, file: !13, line: 493, baseType: !3485, size: 64, offset: 1088)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DICompositeType(tag: DW_TAG_class_type, name: "ThreadManager", scope: !838, file: !13, line: 308, flags: DIFlagFwdDecl, identifier: "_ZTSN9benchmark8internal13ThreadManagerE")
!3487 = !DISubprogram(name: "KeepRunning", linkageName: "_ZN9benchmark5State11KeepRunningEv", scope: !2439, file: !13, line: 328, type: !3488, isLocal: false, isDefinition: false, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!198, !3490}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3491 = !DISubprogram(name: "PauseTiming", linkageName: "_ZN9benchmark5State11PauseTimingEv", scope: !2439, file: !13, line: 353, type: !3492, isLocal: false, isDefinition: false, scopeLine: 353, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{null, !3490}
!3494 = !DISubprogram(name: "ResumeTiming", linkageName: "_ZN9benchmark5State12ResumeTimingEv", scope: !2439, file: !13, line: 363, type: !3492, isLocal: false, isDefinition: false, scopeLine: 363, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3495 = !DISubprogram(name: "SkipWithError", linkageName: "_ZN9benchmark5State13SkipWithErrorEPKc", scope: !2439, file: !13, line: 380, type: !3496, isLocal: false, isDefinition: false, scopeLine: 380, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{null, !3490, !632}
!3498 = !DISubprogram(name: "SetIterationTime", linkageName: "_ZN9benchmark5State16SetIterationTimeEd", scope: !2439, file: !13, line: 389, type: !3499, isLocal: false, isDefinition: false, scopeLine: 389, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{null, !3490, !18}
!3501 = !DISubprogram(name: "SetBytesProcessed", linkageName: "_ZN9benchmark5State17SetBytesProcessedEm", scope: !2439, file: !13, line: 399, type: !3502, isLocal: false, isDefinition: false, scopeLine: 399, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{null, !3490, !887}
!3504 = !DISubprogram(name: "bytes_processed", linkageName: "_ZNK9benchmark5State15bytes_processedEv", scope: !2439, file: !13, line: 402, type: !3505, isLocal: false, isDefinition: false, scopeLine: 402, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!887, !3507}
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2439)
!3509 = !DISubprogram(name: "SetComplexityN", linkageName: "_ZN9benchmark5State14SetComplexityNEi", scope: !2439, file: !13, line: 410, type: !3510, isLocal: false, isDefinition: false, scopeLine: 410, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{null, !3490, !385}
!3512 = !DISubprogram(name: "complexity_length_n", linkageName: "_ZN9benchmark5State19complexity_length_nEv", scope: !2439, file: !13, line: 413, type: !3513, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!385, !3490}
!3515 = !DISubprogram(name: "SetItemsProcessed", linkageName: "_ZN9benchmark5State17SetItemsProcessedEm", scope: !2439, file: !13, line: 422, type: !3502, isLocal: false, isDefinition: false, scopeLine: 422, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3516 = !DISubprogram(name: "items_processed", linkageName: "_ZNK9benchmark5State15items_processedEv", scope: !2439, file: !13, line: 425, type: !3505, isLocal: false, isDefinition: false, scopeLine: 425, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3517 = !DISubprogram(name: "SetLabel", linkageName: "_ZN9benchmark5State8SetLabelEPKc", scope: !2439, file: !13, line: 439, type: !3496, isLocal: false, isDefinition: false, scopeLine: 439, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3518 = !DISubprogram(name: "SetLabel", linkageName: "_ZN9benchmark5State8SetLabelERKSs", scope: !2439, file: !13, line: 441, type: !3519, isLocal: false, isDefinition: false, scopeLine: 441, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{null, !3490, !3521}
!3521 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3523)
!3523 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !7, file: !3524, line: 62, baseType: !2895)
!3524 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/stringfwd.h", directory: "/u/v/a/van-sandt/wordsort/8")
!3525 = !DISubprogram(name: "range", linkageName: "_ZNK9benchmark5State5rangeEm", scope: !2439, file: !13, line: 447, type: !3526, isLocal: false, isDefinition: false, scopeLine: 447, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!385, !3507, !135}
!3528 = !DISubprogram(name: "range_x", linkageName: "_ZNK9benchmark5State7range_xEv", scope: !2439, file: !13, line: 453, type: !3529, isLocal: false, isDefinition: false, scopeLine: 453, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!385, !3507}
!3531 = !DISubprogram(name: "range_y", linkageName: "_ZNK9benchmark5State7range_yEv", scope: !2439, file: !13, line: 456, type: !3529, isLocal: false, isDefinition: false, scopeLine: 456, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3532 = !DISubprogram(name: "iterations", linkageName: "_ZNK9benchmark5State10iterationsEv", scope: !2439, file: !13, line: 459, type: !3505, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3533 = !DISubprogram(name: "State", scope: !2439, file: !13, line: 485, type: !3534, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{null, !3490, !887, !2688, !385, !385, !3482, !3485}
!3536 = !DISubprogram(name: "StartKeepRunning", linkageName: "_ZN9benchmark5State16StartKeepRunningEv", scope: !2439, file: !13, line: 490, type: !3492, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true)
!3537 = !DISubprogram(name: "FinishKeepRunning", linkageName: "_ZN9benchmark5State17FinishKeepRunningEv", scope: !2439, file: !13, line: 491, type: !3492, isLocal: false, isDefinition: false, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true)
!3538 = !DISubprogram(name: "State", scope: !2439, file: !13, line: 494, type: !3539, isLocal: false, isDefinition: false, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{null, !3490, !3541}
!3541 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3508, size: 64)
!3542 = !DISubprogram(name: "operator=", linkageName: "_ZN9benchmark5StateaSERKS0_", scope: !2439, file: !13, line: 494, type: !3543, isLocal: false, isDefinition: false, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!2438, !3490, !3541}
!3545 = !{!3546, !3547, !3548, !3550}
!3546 = !DILocalVariable(name: "state", arg: 1, scope: !2435, file: !3, line: 20, type: !2438)
!3547 = !DILocalVariable(name: "nums", scope: !2435, file: !3, line: 21, type: !402)
!3548 = !DILocalVariable(name: "g", scope: !2435, file: !3, line: 22, type: !3549)
!3549 = !DIDerivedType(tag: DW_TAG_typedef, name: "minstd_rand", scope: !7, file: !712, line: 1527, baseType: !758)
!3550 = !DILocalVariable(name: "v", scope: !3551, file: !3, line: 25, type: !402)
!3551 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 24, column: 31)
!3552 = !DILocation(line: 20, column: 38, scope: !2435)
!3553 = !DILocation(line: 21, column: 3, scope: !2435)
!3554 = !DILocalVariable(name: "this", arg: 1, scope: !3555, type: !3558, flags: DIFlagArtificial | DIFlagObjectPointer)
!3555 = distinct !DISubprogram(name: "range", linkageName: "_ZNK9benchmark5State5rangeEm", scope: !2439, file: !13, line: 447, type: !3526, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3525, variables: !3556)
!3556 = !{!3554, !3557}
!3557 = !DILocalVariable(name: "pos", arg: 2, scope: !3555, file: !13, line: 447, type: !135)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3559 = !DILocation(line: 0, scope: !3555, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 21, column: 27, scope: !2435)
!3561 = !DILocation(line: 447, column: 25, scope: !3555, inlinedAt: !3560)
!3562 = !DILocalVariable(name: "this", arg: 1, scope: !3563, type: !3566, flags: DIFlagArtificial | DIFlagObjectPointer)
!3563 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorIiSaIiEEixEm", scope: !2445, file: !72, line: 785, type: !2772, isLocal: false, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2771, variables: !3564)
!3564 = !{!3562, !3565}
!3565 = !DILocalVariable(name: "__n", arg: 2, scope: !3563, file: !72, line: 785, type: !345)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!3567 = !DIExpression(DW_OP_plus, 16)
!3568 = !DILocation(line: 0, scope: !3563, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !3560)
!3570 = !DILocation(line: 785, column: 28, scope: !3563, inlinedAt: !3569)
!3571 = !DILocation(line: 786, column: 32, scope: !3563, inlinedAt: !3569)
!3572 = !{!3573, !2201, i64 0}
!3573 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !3574, i64 0}
!3574 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !2201, i64 0, !2201, i64 8, !2201, i64 16}
!3575 = !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !3560)
!3576 = !{!3577, !3577, i64 0}
!3577 = !{!"int", !2202, i64 0}
!3578 = !DILocation(line: 21, column: 8, scope: !2435)
!3579 = !DILocation(line: 21, column: 15, scope: !2435)
!3580 = !DILocation(line: 22, column: 3, scope: !2435)
!3581 = !DILocation(line: 22, column: 20, scope: !2435)
!3582 = !{!3583, !2277, i64 0}
!3583 = !{!"_ZTSSt26linear_congruential_engineImLm48271ELm0ELm2147483647EE", !2277, i64 0}
!3584 = !DILocalVariable(name: "this", arg: 1, scope: !3585, type: !2028, flags: DIFlagArtificial | DIFlagObjectPointer)
!3585 = distinct !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIlSaIlEE5beginEv", scope: !402, file: !72, line: 538, type: !462, isLocal: false, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !461, variables: !3586)
!3586 = !{!3584}
!3587 = !DILocation(line: 0, scope: !3585, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 23, column: 21, scope: !2435)
!3589 = !DILocalVariable(name: "this", arg: 1, scope: !3590, type: !3593, flags: DIFlagArtificial | DIFlagObjectPointer)
!3590 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC2ERKS1_", scope: !657, file: !347, line: 726, type: !665, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !664, variables: !3591)
!3591 = !{!3589, !3592}
!3592 = !DILocalVariable(name: "__i", arg: 2, scope: !3590, file: !347, line: 726, type: !667)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!3594 = !DILocation(line: 0, scope: !3590, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 539, column: 16, scope: !3585, inlinedAt: !3588)
!3596 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !3595)
!3597 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !3595)
!3598 = !DILocalVariable(name: "this", arg: 1, scope: !3599, type: !2028, flags: DIFlagArtificial | DIFlagObjectPointer)
!3599 = distinct !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIlSaIlEE3endEv", scope: !402, file: !72, line: 556, type: !462, isLocal: false, isDefinition: true, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !525, variables: !3600)
!3600 = !{!3598}
!3601 = !DILocation(line: 0, scope: !3599, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 23, column: 35, scope: !2435)
!3603 = !DILocation(line: 557, column: 39, scope: !3599, inlinedAt: !3602)
!3604 = !DILocation(line: 0, scope: !3590, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 557, column: 16, scope: !3599, inlinedAt: !3602)
!3606 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !3605)
!3607 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !3605)
!3608 = !DILocalVariable(name: "__g", arg: 3, scope: !3609, file: !63, line: 4368, type: !757)
!3609 = distinct !DISubprogram(name: "shuffle<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > >, std::linear_congruential_engine<unsigned long, 48271, 0, 2147483647> &>", linkageName: "_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEERSt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEvT_SA_OT0_", scope: !7, file: !63, line: 4367, type: !3610, isLocal: false, isDefinition: true, scopeLine: 4369, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3612, variables: !3614)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !657, !657, !757}
!3612 = !{!822, !3613}
!3613 = !DITemplateTypeParameter(name: "_UniformRandomNumberGenerator", type: !757)
!3614 = !{!3615, !3616, !3608, !3617, !3619}
!3615 = !DILocalVariable(name: "__first", arg: 1, scope: !3609, file: !63, line: 4367, type: !657)
!3616 = !DILocalVariable(name: "__last", arg: 2, scope: !3609, file: !63, line: 4367, type: !657)
!3617 = !DILocalVariable(name: "__d", scope: !3609, file: !63, line: 4384, type: !3618)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__distr_type", scope: !3609, file: !63, line: 4382, baseType: !711)
!3619 = !DILocalVariable(name: "__i", scope: !3620, file: !63, line: 4386, type: !657)
!3620 = distinct !DILexicalBlock(scope: !3609, file: !63, line: 4386, column: 7)
!3621 = !DILocation(line: 4368, column: 38, scope: !3609, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 23, column: 3, scope: !2435)
!3623 = !DILocation(line: 4367, column: 35, scope: !3609, inlinedAt: !3622)
!3624 = !DILocation(line: 4367, column: 66, scope: !3609, inlinedAt: !3622)
!3625 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3626, file: !347, line: 811, type: !3629)
!3626 = distinct !DISubprogram(name: "operator==<long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZN9__gnu_cxxeqIPlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESA_", scope: !84, file: !347, line: 811, type: !3627, isLocal: false, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !707, variables: !3630)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!198, !3629, !3629}
!3629 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !675, size: 64)
!3630 = !{!3625, !3631}
!3631 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3626, file: !347, line: 812, type: !3629)
!3632 = !DILocation(line: 811, column: 64, scope: !3626, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 4375, column: 19, scope: !3634, inlinedAt: !3622)
!3634 = distinct !DILexicalBlock(scope: !3609, file: !63, line: 4375, column: 11)
!3635 = !DILocation(line: 812, column: 57, scope: !3626, inlinedAt: !3633)
!3636 = !DILocation(line: 813, column: 27, scope: !3626, inlinedAt: !3633)
!3637 = !DILocation(line: 4375, column: 11, scope: !3609, inlinedAt: !3622)
!3638 = !DILocation(line: 4384, column: 7, scope: !3609, inlinedAt: !3622)
!3639 = !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !3622)
!3640 = !DILocalVariable(name: "this", arg: 1, scope: !3641, type: !793, flags: DIFlagArtificial | DIFlagObjectPointer)
!3641 = distinct !DISubprogram(name: "uniform_int_distribution", linkageName: "_ZNSt24uniform_int_distributionImEC2Emm", scope: !711, file: !712, line: 1709, type: !731, isLocal: false, isDefinition: true, scopeLine: 1712, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !730, variables: !3642)
!3642 = !{!3640, !3643, !3644}
!3643 = !DILocalVariable(name: "__a", arg: 2, scope: !3641, file: !712, line: 1709, type: !136)
!3644 = !DILocalVariable(name: "__b", arg: 3, scope: !3641, file: !712, line: 1710, type: !136)
!3645 = !DILocation(line: 0, scope: !3641, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !3622)
!3647 = !DILocation(line: 1709, column: 41, scope: !3641, inlinedAt: !3646)
!3648 = !DILocation(line: 1710, column: 16, scope: !3641, inlinedAt: !3646)
!3649 = !DILocalVariable(name: "this", arg: 1, scope: !3650, type: !3654, flags: DIFlagArtificial | DIFlagObjectPointer)
!3650 = distinct !DISubprogram(name: "param_type", linkageName: "_ZNSt24uniform_int_distributionImE10param_typeC2Emm", scope: !715, file: !712, line: 1680, type: !720, isLocal: false, isDefinition: true, scopeLine: 1683, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !719, variables: !3651)
!3651 = !{!3649, !3652, !3653}
!3652 = !DILocalVariable(name: "__a", arg: 2, scope: !3650, file: !712, line: 1680, type: !136)
!3653 = !DILocalVariable(name: "__b", arg: 3, scope: !3650, file: !712, line: 1681, type: !136)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!3655 = !DILocation(line: 0, scope: !3650, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 1711, column: 9, scope: !3641, inlinedAt: !3646)
!3657 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !3656)
!3658 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !3656)
!3659 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !3656)
!3660 = !DILocalVariable(name: "this", arg: 1, scope: !3661, type: !3664, flags: DIFlagArtificial | DIFlagObjectPointer)
!3661 = distinct !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEplERKl", scope: !657, file: !347, line: 778, type: !700, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !699, variables: !3662)
!3662 = !{!3660, !3663}
!3663 = !DILocalVariable(name: "__n", arg: 2, scope: !3661, file: !347, line: 778, type: !693)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!3665 = !DILocation(line: 0, scope: !3661, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 4386, column: 48, scope: !3620, inlinedAt: !3622)
!3667 = !DILocation(line: 4386, column: 34, scope: !3620, inlinedAt: !3622)
!3668 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3669, file: !347, line: 823, type: !3629)
!3669 = distinct !DISubprogram(name: "operator!=<long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZN9__gnu_cxxneIPlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESA_", scope: !84, file: !347, line: 823, type: !3627, isLocal: false, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !707, variables: !3670)
!3670 = !{!3668, !3671}
!3671 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3669, file: !347, line: 824, type: !3629)
!3672 = !DILocation(line: 823, column: 64, scope: !3669, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 4386, column: 57, scope: !3674, inlinedAt: !3622)
!3674 = distinct !DILexicalBlock(scope: !3620, file: !63, line: 4386, column: 7)
!3675 = !DILocation(line: 824, column: 57, scope: !3669, inlinedAt: !3673)
!3676 = !DILocation(line: 825, column: 27, scope: !3669, inlinedAt: !3673)
!3677 = !DILocation(line: 4386, column: 7, scope: !3620, inlinedAt: !3622)
!3678 = !DILocation(line: 4388, column: 5, scope: !3609, inlinedAt: !3622)
!3679 = !DILocation(line: 329, column: 9, scope: !3680, inlinedAt: !3686)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !13, line: 329, column: 9)
!3681 = distinct !DISubprogram(name: "KeepRunning", linkageName: "_ZN9benchmark5State11KeepRunningEv", scope: !2439, file: !13, line: 328, type: !3488, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3487, variables: !3682)
!3682 = !{!3683, !3685}
!3683 = !DILocalVariable(name: "this", arg: 1, scope: !3681, type: !3684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!3685 = !DILocalVariable(name: "res", scope: !3681, file: !13, line: 332, type: !217)
!3686 = distinct !DILocation(line: 24, column: 16, scope: !2435)
!3687 = !DILocation(line: 0, scope: !3681, inlinedAt: !3686)
!3688 = !{!3689, !3690, i64 0}
!3689 = !{!"_ZTSN9benchmark5StateE", !3690, i64 0, !3690, i64 1, !2277, i64 8, !3691, i64 16, !2277, i64 40, !2277, i64 48, !3577, i64 56, !3690, i64 60, !3692, i64 64, !3577, i64 112, !3577, i64 116, !2277, i64 120, !2201, i64 128, !2201, i64 136}
!3690 = !{!"bool", !2202, i64 0}
!3691 = !{!"_ZTSSt6vectorIiSaIiEE"}
!3692 = !{!"_ZTSSt3mapISsN9benchmark7CounterESt4lessISsESaISt4pairIKSsS1_EEE", !3693, i64 0}
!3693 = !{!"_ZTSSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE", !3694, i64 0}
!3694 = !{!"_ZTSNSt8_Rb_treeISsSt4pairIKSsN9benchmark7CounterEESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !3695, i64 0, !3696, i64 8, !2277, i64 40}
!3695 = !{!"_ZTSSt4lessISsE"}
!3696 = !{!"_ZTSSt18_Rb_tree_node_base", !3697, i64 0, !2201, i64 8, !2201, i64 16, !2201, i64 24}
!3697 = !{!"_ZTSSt14_Rb_tree_color", !2202, i64 0}
!3698 = !{i8 0, i8 2}
!3699 = !DILocation(line: 329, column: 9, scope: !3681, inlinedAt: !3686)
!3700 = !{!"branch_weights", i32 2000, i32 1}
!3701 = !DILocation(line: 330, column: 7, scope: !3702, inlinedAt: !3686)
!3702 = distinct !DILexicalBlock(scope: !3680, file: !13, line: 329, column: 53)
!3703 = !DILocation(line: 331, column: 5, scope: !3702, inlinedAt: !3686)
!3704 = !DILocation(line: 332, column: 39, scope: !3681, inlinedAt: !3686)
!3705 = !{!3689, !2277, i64 8}
!3706 = !DILocation(line: 332, column: 44, scope: !3681, inlinedAt: !3686)
!3707 = !{!3689, !2277, i64 120}
!3708 = !DILocation(line: 332, column: 42, scope: !3681, inlinedAt: !3686)
!3709 = !DILocation(line: 333, column: 9, scope: !3681, inlinedAt: !3686)
!3710 = !DILocation(line: 25, column: 10, scope: !3551)
!3711 = !DILocalVariable(name: "this", arg: 1, scope: !3712, type: !2028, flags: DIFlagArtificial | DIFlagObjectPointer)
!3712 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIlSaIlEEC2ERKS1_", scope: !402, file: !72, line: 310, type: !425, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !424, variables: !3713)
!3713 = !{!3711, !3714}
!3714 = !DILocalVariable(name: "__x", arg: 2, scope: !3712, file: !72, line: 310, type: !427)
!3715 = !DILocation(line: 0, scope: !3712, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 25, column: 14, scope: !3551)
!3717 = !DILocation(line: 310, column: 28, scope: !3712, inlinedAt: !3716)
!3718 = !DILocalVariable(name: "this", arg: 1, scope: !3719, type: !2068, flags: DIFlagArtificial | DIFlagObjectPointer)
!3719 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_", scope: !73, file: !72, line: 134, type: !312, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !311, variables: !3720)
!3720 = !{!3718, !3721, !3722}
!3721 = !DILocalVariable(name: "__n", arg: 2, scope: !3719, file: !72, line: 134, type: !135)
!3722 = !DILocalVariable(name: "__a", arg: 3, scope: !3719, file: !72, line: 134, type: !306)
!3723 = !DILocation(line: 0, scope: !3719, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 311, column: 9, scope: !3712, inlinedAt: !3716)
!3725 = !DILocation(line: 134, column: 27, scope: !3719, inlinedAt: !3724)
!3726 = !DILocation(line: 134, column: 54, scope: !3719, inlinedAt: !3724)
!3727 = !DILocalVariable(name: "this", arg: 1, scope: !3728, type: !2068, flags: DIFlagArtificial | DIFlagObjectPointer)
!3728 = distinct !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm", scope: !73, file: !72, line: 179, type: !309, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !331, variables: !3729)
!3729 = !{!3727, !3730}
!3730 = !DILocalVariable(name: "__n", arg: 2, scope: !3728, file: !72, line: 179, type: !135)
!3731 = !DILocation(line: 0, scope: !3728, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 136, column: 9, scope: !3733, inlinedAt: !3724)
!3733 = distinct !DILexicalBlock(scope: !3719, file: !72, line: 136, column: 7)
!3734 = !DILocation(line: 179, column: 32, scope: !3728, inlinedAt: !3732)
!3735 = !DILocation(line: 0, scope: !2065, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 181, column: 33, scope: !3728, inlinedAt: !3732)
!3737 = !DILocation(line: 167, column: 26, scope: !2065, inlinedAt: !3736)
!3738 = !DILocalVariable(name: "__last", arg: 2, scope: !3739, file: !2084, line: 256, type: !468)
!3739 = distinct !DISubprogram(name: "__uninitialized_copy_a<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *, long>", linkageName: "_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E", scope: !7, file: !2084, line: 256, type: !3740, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3742, variables: !3744)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!119, !468, !468, !119, !235}
!3742 = !{!3743, !2089, !146}
!3743 = !DITemplateTypeParameter(name: "_InputIterator", type: !468)
!3744 = !{!3745, !3738, !3746, !3747}
!3745 = !DILocalVariable(name: "__first", arg: 1, scope: !3739, file: !2084, line: 256, type: !468)
!3746 = !DILocalVariable(name: "__result", arg: 3, scope: !3739, file: !2084, line: 257, type: !119)
!3747 = !DILocalVariable(arg: 4, scope: !3739, file: !2084, line: 257, type: !235)
!3748 = !DILocation(line: 256, column: 67, scope: !3739, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 314, column: 4, scope: !3750, inlinedAt: !3716)
!3750 = distinct !DILexicalBlock(scope: !3712, file: !72, line: 313, column: 7)
!3751 = !DILocation(line: 256, column: 43, scope: !3739, inlinedAt: !3749)
!3752 = !DILocation(line: 257, column: 24, scope: !3739, inlinedAt: !3749)
!3753 = !DILocalVariable(name: "__last", arg: 2, scope: !3754, file: !2084, line: 107, type: !468)
!3754 = distinct !DISubprogram(name: "uninitialized_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_", scope: !7, file: !2084, line: 107, type: !3755, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3757, variables: !3758)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!119, !468, !468, !119}
!3757 = !{!3743, !2089}
!3758 = !{!3759, !3753, !3760}
!3759 = !DILocalVariable(name: "__first", arg: 1, scope: !3754, file: !2084, line: 107, type: !468)
!3760 = !DILocalVariable(name: "__result", arg: 3, scope: !3754, file: !2084, line: 108, type: !119)
!3761 = !DILocation(line: 107, column: 63, scope: !3754, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 258, column: 14, scope: !3739, inlinedAt: !3749)
!3763 = !DILocation(line: 107, column: 39, scope: !3754, inlinedAt: !3762)
!3764 = !DILocation(line: 108, column: 27, scope: !3754, inlinedAt: !3762)
!3765 = !DILocalVariable(name: "__last", arg: 2, scope: !3766, file: !2084, line: 91, type: !468)
!3766 = distinct !DISubprogram(name: "__uninit_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_", scope: !2114, file: !2084, line: 91, type: !3755, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3757, declaration: !3767, variables: !3768)
!3767 = !DISubprogram(name: "__uninit_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_", scope: !2114, file: !2084, line: 91, type: !3755, isLocal: false, isDefinition: false, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, templateParams: !3757)
!3768 = !{!3769, !3765, !3770}
!3769 = !DILocalVariable(name: "__first", arg: 1, scope: !3766, file: !2084, line: 91, type: !468)
!3770 = !DILocalVariable(name: "__result", arg: 3, scope: !3766, file: !2084, line: 92, type: !119)
!3771 = !DILocation(line: 91, column: 62, scope: !3766, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 115, column: 14, scope: !3754, inlinedAt: !3762)
!3773 = !DILocation(line: 91, column: 38, scope: !3766, inlinedAt: !3772)
!3774 = !DILocation(line: 92, column: 26, scope: !3766, inlinedAt: !3772)
!3775 = !DILocalVariable(name: "__last", arg: 2, scope: !3776, file: !2133, line: 213, type: !468)
!3776 = distinct !DISubprogram(name: "copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_", scope: !7, file: !2127, line: 450, type: !3755, isLocal: false, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3777, variables: !3779)
!3777 = !{!3778, !2130}
!3778 = !DITemplateTypeParameter(name: "_IIter", type: !468)
!3779 = !{!3780, !3775, !3781}
!3780 = !DILocalVariable(name: "__first", arg: 1, scope: !3776, file: !2133, line: 213, type: !468)
!3781 = !DILocalVariable(name: "__result", arg: 3, scope: !3776, file: !2133, line: 213, type: !119)
!3782 = !DILocation(line: 213, column: 24, scope: !3776, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 93, column: 18, scope: !3766, inlinedAt: !3772)
!3784 = !DILocation(line: 213, column: 16, scope: !3776, inlinedAt: !3783)
!3785 = !DILocation(line: 213, column: 32, scope: !3776, inlinedAt: !3783)
!3786 = !DILocalVariable(name: "__last", arg: 2, scope: !3787, file: !2127, line: 424, type: !468)
!3787 = distinct !DISubprogram(name: "__copy_move_a2<false, __gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_", scope: !7, file: !2127, line: 424, type: !3755, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3788, variables: !3791)
!3788 = !{!3789, !3790, !2146}
!3789 = !DITemplateValueParameter(name: "_IsMove", type: !198, value: i8 0)
!3790 = !DITemplateTypeParameter(name: "_II", type: !468)
!3791 = !{!3792, !3786, !3793}
!3792 = !DILocalVariable(name: "__first", arg: 1, scope: !3787, file: !2127, line: 424, type: !468)
!3793 = !DILocalVariable(name: "__result", arg: 3, scope: !3787, file: !2127, line: 424, type: !119)
!3794 = !DILocation(line: 424, column: 37, scope: !3787, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 458, column: 15, scope: !3776, inlinedAt: !3783)
!3796 = !DILocation(line: 424, column: 24, scope: !3787, inlinedAt: !3795)
!3797 = !DILocation(line: 424, column: 49, scope: !3787, inlinedAt: !3795)
!3798 = !DILocalVariable(name: "__last", arg: 2, scope: !3799, file: !2127, line: 379, type: !127)
!3799 = distinct !DISubprogram(name: "__copy_move_a<false, const long *, long *>", linkageName: "_ZSt13__copy_move_aILb0EPKlPlET1_T0_S4_S3_", scope: !7, file: !2127, line: 379, type: !2178, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3800, variables: !3802)
!3800 = !{!3789, !3801, !2146}
!3801 = !DITemplateTypeParameter(name: "_II", type: !127)
!3802 = !{!3803, !3798, !3804, !3805}
!3803 = !DILocalVariable(name: "__first", arg: 1, scope: !3799, file: !2127, line: 379, type: !127)
!3804 = !DILocalVariable(name: "__result", arg: 3, scope: !3799, file: !2127, line: 379, type: !119)
!3805 = !DILocalVariable(name: "__simple", scope: !3799, file: !2127, line: 384, type: !217)
!3806 = !DILocation(line: 379, column: 36, scope: !3799, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 426, column: 18, scope: !3787, inlinedAt: !3795)
!3808 = !DILocation(line: 379, column: 48, scope: !3799, inlinedAt: !3807)
!3809 = !DILocation(line: 384, column: 18, scope: !3799, inlinedAt: !3807)
!3810 = !DILocalVariable(name: "__last", arg: 2, scope: !3811, file: !2127, line: 368, type: !127)
!3811 = distinct !DISubprogram(name: "__copy_m<long>", linkageName: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_", scope: !3812, file: !2127, line: 368, type: !2178, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !145, declaration: !3815, variables: !3816)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__copy_move<false, true, std::random_access_iterator_tag>", scope: !7, file: !2127, line: 364, size: 8, elements: !43, templateParams: !3813, identifier: "_ZTSSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE")
!3813 = !{!3814, !339, !2167}
!3814 = !DITemplateValueParameter(type: !198, value: i8 0)
!3815 = !DISubprogram(name: "__copy_m<long>", linkageName: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_", scope: !3812, file: !2127, line: 368, type: !2178, isLocal: false, isDefinition: false, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, templateParams: !145)
!3816 = !{!3817, !3810, !3818, !3819}
!3817 = !DILocalVariable(name: "__first", arg: 1, scope: !3811, file: !2127, line: 368, type: !127)
!3818 = !DILocalVariable(name: "__result", arg: 3, scope: !3811, file: !2127, line: 368, type: !119)
!3819 = !DILocalVariable(name: "_Num", scope: !3811, file: !2127, line: 370, type: !2185)
!3820 = !DILocation(line: 368, column: 49, scope: !3811, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 389, column: 14, scope: !3799, inlinedAt: !3807)
!3822 = !DILocation(line: 368, column: 62, scope: !3811, inlinedAt: !3821)
!3823 = !DILocation(line: 26, column: 5, scope: !3551)
!3824 = !DILocalVariable(name: "this", arg: 1, scope: !3825, type: !2028, flags: DIFlagArtificial | DIFlagObjectPointer)
!3825 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorIlSaIlEED2Ev", scope: !402, file: !72, line: 414, type: !406, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !444, variables: !3826)
!3826 = !{!3824}
!3827 = !DILocation(line: 0, scope: !3825, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 27, column: 3, scope: !2435)
!3829 = !DILocalVariable(name: "this", arg: 1, scope: !3830, type: !2068, flags: DIFlagArtificial | DIFlagObjectPointer)
!3830 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseIlSaIlEED2Ev", scope: !73, file: !72, line: 159, type: !301, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !324, variables: !3831)
!3831 = !{!3829}
!3832 = !DILocation(line: 0, scope: !3830, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !3828)
!3834 = distinct !DILexicalBlock(scope: !3825, file: !72, line: 415, column: 7)
!3835 = !DILocation(line: 0, scope: !2191, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !3833)
!3837 = distinct !DILexicalBlock(scope: !3830, file: !72, line: 160, column: 7)
!3838 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !3836)
!3839 = distinct !{!3839, !3840, !3841}
!3840 = !DILocation(line: 24, column: 3, scope: !2435)
!3841 = !DILocation(line: 27, column: 3, scope: !2435)
!3842 = !DILocation(line: 372, column: 6, scope: !3843, inlinedAt: !3821)
!3843 = distinct !DILexicalBlock(scope: !3811, file: !2127, line: 371, column: 8)
!3844 = !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !3622)
!3845 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3846, file: !347, line: 896, type: !3629)
!3846 = distinct !DISubprogram(name: "operator-<long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZN9__gnu_cxxmiIPlSt6vectorIlSaIlEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_", scope: !84, file: !347, line: 896, type: !3847, isLocal: false, isDefinition: true, scopeLine: 898, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !707, variables: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!695, !3629, !3629}
!3849 = !{!3845, !3850}
!3850 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3846, file: !347, line: 897, type: !3629)
!3851 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 4387, column: 57, scope: !3674, inlinedAt: !3622)
!3853 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !3852)
!3854 = !DILocation(line: 898, column: 27, scope: !3846, inlinedAt: !3852)
!3855 = !DILocation(line: 0, scope: !3650, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !3622)
!3857 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !3856)
!3858 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !3856)
!3859 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !3856)
!3860 = !{!3861, !2277, i64 0}
!3861 = !{!"_ZTSNSt24uniform_int_distributionImE10param_typeE", !2277, i64 0, !2277, i64 8}
!3862 = !DILocation(line: 1682, column: 15, scope: !3650, inlinedAt: !3856)
!3863 = !{!3861, !2277, i64 8}
!3864 = !DILocation(line: 4387, column: 32, scope: !3674, inlinedAt: !3622)
!3865 = !DILocation(line: 0, scope: !3661, inlinedAt: !3866)
!3866 = distinct !DILocation(line: 4387, column: 30, scope: !3674, inlinedAt: !3622)
!3867 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !3866)
!3868 = !DILocalVariable(name: "__a", arg: 1, scope: !3869, file: !2133, line: 336, type: !657)
!3869 = distinct !DISubprogram(name: "iter_swap<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > >, __gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_EvT_T0_", scope: !7, file: !2127, line: 119, type: !3870, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3872, variables: !3875)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{null, !657, !657}
!3872 = !{!3873, !3874}
!3873 = !DITemplateTypeParameter(name: "_FIter1", type: !657)
!3874 = !DITemplateTypeParameter(name: "_FIter2", type: !657)
!3875 = !{!3868, !3876}
!3876 = !DILocalVariable(name: "__b", arg: 2, scope: !3869, file: !2133, line: 336, type: !657)
!3877 = !DILocation(line: 336, column: 22, scope: !3869, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !3622)
!3879 = !DILocation(line: 336, column: 31, scope: !3869, inlinedAt: !3878)
!3880 = !DILocalVariable(name: "__a", arg: 1, scope: !3881, file: !2133, line: 554, type: !122)
!3881 = distinct !DISubprogram(name: "swap<long>", linkageName: "_ZSt4swapIlEvRT_S1_", scope: !7, file: !3882, line: 166, type: !3883, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !145, variables: !3885)
!3882 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.8/../../../../include/c++/4.8/bits/move.h", directory: "/u/v/a/van-sandt/wordsort/8")
!3883 = !DISubroutineType(types: !3884)
!3884 = !{null, !122, !122}
!3885 = !{!3880, !3886, !3887}
!3886 = !DILocalVariable(name: "__b", arg: 2, scope: !3881, file: !2133, line: 554, type: !122)
!3887 = !DILocalVariable(name: "__tmp", scope: !3881, file: !3882, line: 175, type: !46)
!3888 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 147, column: 7, scope: !3869, inlinedAt: !3878)
!3890 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !3889)
!3891 = !DILocation(line: 175, column: 19, scope: !3881, inlinedAt: !3889)
!3892 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !3889)
!3893 = !DILocation(line: 176, column: 13, scope: !3881, inlinedAt: !3889)
!3894 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !3889)
!3895 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !3889)
!3896 = !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !3622)
!3897 = distinct !{!3897, !3898, !3899}
!3898 = !DILocation(line: 4386, column: 7, scope: !3620)
!3899 = !DILocation(line: 4387, column: 68, scope: !3620)
!3900 = !DILocation(line: 99, column: 26, scope: !2072, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 168, column: 35, scope: !2065, inlinedAt: !3736)
!3902 = !DILocation(line: 99, column: 43, scope: !2072, inlinedAt: !3901)
!3903 = !DILocation(line: 102, column: 4, scope: !2335, inlinedAt: !3901)
!3904 = !DILocation(line: 104, column: 27, scope: !2072, inlinedAt: !3901)
!3905 = !DILocation(line: 371, column: 8, scope: !3811, inlinedAt: !3821)
!3906 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !3836)
!3908 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !3907)
!3909 = !DILocation(line: 334, column: 7, scope: !3910, inlinedAt: !3686)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !13, line: 333, column: 48)
!3911 = distinct !DILexicalBlock(scope: !3681, file: !13, line: 333, column: 9)
!3912 = !DILocation(line: 28, column: 1, scope: !2435)
!3913 = !DILocation(line: 0, scope: !3825, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 28, column: 1, scope: !2435)
!3915 = !DILocation(line: 0, scope: !3830, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !3914)
!3917 = !DILocation(line: 0, scope: !2191, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !3916)
!3919 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !3918)
!3920 = !DILocation(line: 173, column: 6, scope: !2403, inlinedAt: !3918)
!3921 = !DILocation(line: 173, column: 6, scope: !2191, inlinedAt: !3918)
!3922 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !3918)
!3924 = !DILocation(line: 110, column: 27, scope: !2407, inlinedAt: !3923)
!3925 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !3923)
!3926 = !DILocation(line: 174, column: 4, scope: !2403, inlinedAt: !3918)
!3927 = distinct !DISubprogram(name: "BM_std_sort", linkageName: "_Z11BM_std_sortRN9benchmark5StateE", scope: !3, file: !3, line: 30, type: !2436, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3928)
!3928 = !{!3929, !3930, !3931, !3932}
!3929 = !DILocalVariable(name: "state", arg: 1, scope: !3927, file: !3, line: 30, type: !2438)
!3930 = !DILocalVariable(name: "nums", scope: !3927, file: !3, line: 31, type: !402)
!3931 = !DILocalVariable(name: "g", scope: !3927, file: !3, line: 32, type: !3549)
!3932 = !DILocalVariable(name: "v", scope: !3933, file: !3, line: 35, type: !402)
!3933 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 34, column: 31)
!3934 = !DILocation(line: 30, column: 36, scope: !3927)
!3935 = !DILocation(line: 31, column: 3, scope: !3927)
!3936 = !DILocation(line: 0, scope: !3555, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 31, column: 27, scope: !3927)
!3938 = !DILocation(line: 447, column: 25, scope: !3555, inlinedAt: !3937)
!3939 = !DILocation(line: 0, scope: !3563, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !3937)
!3941 = !DILocation(line: 785, column: 28, scope: !3563, inlinedAt: !3940)
!3942 = !DILocation(line: 786, column: 32, scope: !3563, inlinedAt: !3940)
!3943 = !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !3937)
!3944 = !DILocation(line: 31, column: 8, scope: !3927)
!3945 = !DILocation(line: 31, column: 15, scope: !3927)
!3946 = !DILocation(line: 32, column: 3, scope: !3927)
!3947 = !DILocation(line: 32, column: 20, scope: !3927)
!3948 = !DILocation(line: 0, scope: !3585, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 33, column: 21, scope: !3927)
!3950 = !DILocation(line: 0, scope: !3590, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 539, column: 16, scope: !3585, inlinedAt: !3949)
!3952 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !3951)
!3953 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !3951)
!3954 = !DILocation(line: 0, scope: !3599, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 33, column: 35, scope: !3927)
!3956 = !DILocation(line: 557, column: 39, scope: !3599, inlinedAt: !3955)
!3957 = !DILocation(line: 0, scope: !3590, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 557, column: 16, scope: !3599, inlinedAt: !3955)
!3959 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !3958)
!3960 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !3958)
!3961 = !DILocation(line: 4368, column: 38, scope: !3609, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 33, column: 3, scope: !3927)
!3963 = !DILocation(line: 4367, column: 35, scope: !3609, inlinedAt: !3962)
!3964 = !DILocation(line: 4367, column: 66, scope: !3609, inlinedAt: !3962)
!3965 = !DILocation(line: 811, column: 64, scope: !3626, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 4375, column: 19, scope: !3634, inlinedAt: !3962)
!3967 = !DILocation(line: 812, column: 57, scope: !3626, inlinedAt: !3966)
!3968 = !DILocation(line: 813, column: 27, scope: !3626, inlinedAt: !3966)
!3969 = !DILocation(line: 4375, column: 11, scope: !3609, inlinedAt: !3962)
!3970 = !DILocation(line: 4384, column: 7, scope: !3609, inlinedAt: !3962)
!3971 = !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !3962)
!3972 = !DILocation(line: 0, scope: !3641, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !3962)
!3974 = !DILocation(line: 1709, column: 41, scope: !3641, inlinedAt: !3973)
!3975 = !DILocation(line: 1710, column: 16, scope: !3641, inlinedAt: !3973)
!3976 = !DILocation(line: 0, scope: !3650, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 1711, column: 9, scope: !3641, inlinedAt: !3973)
!3978 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !3977)
!3979 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !3977)
!3980 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !3977)
!3981 = !DILocation(line: 0, scope: !3661, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 4386, column: 48, scope: !3620, inlinedAt: !3962)
!3983 = !DILocation(line: 4386, column: 34, scope: !3620, inlinedAt: !3962)
!3984 = !DILocation(line: 823, column: 64, scope: !3669, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 4386, column: 57, scope: !3674, inlinedAt: !3962)
!3986 = !DILocation(line: 824, column: 57, scope: !3669, inlinedAt: !3985)
!3987 = !DILocation(line: 825, column: 27, scope: !3669, inlinedAt: !3985)
!3988 = !DILocation(line: 4386, column: 7, scope: !3620, inlinedAt: !3962)
!3989 = !DILocation(line: 4388, column: 5, scope: !3609, inlinedAt: !3962)
!3990 = !DILocation(line: 989, column: 46, scope: !3991, inlinedAt: !3994)
!3991 = distinct !DISubprogram(name: "__lg", linkageName: "_ZSt4__lgl", scope: !7, file: !2127, line: 988, type: !916, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3992)
!3992 = !{!3993}
!3993 = !DILocalVariable(name: "__n", arg: 1, scope: !3991, file: !2127, line: 988, type: !46)
!3994 = distinct !DILocation(line: 5461, column: 5, scope: !3995, inlinedAt: !4001)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !63, line: 5459, column: 2)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !63, line: 5458, column: 11)
!3997 = distinct !DISubprogram(name: "sort<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_", scope: !7, file: !63, line: 5447, type: !3870, isLocal: false, isDefinition: true, scopeLine: 5448, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !821, variables: !3998)
!3998 = !{!3999, !4000}
!3999 = !DILocalVariable(name: "__first", arg: 1, scope: !3997, file: !63, line: 5447, type: !657)
!4000 = !DILocalVariable(name: "__last", arg: 2, scope: !3997, file: !63, line: 5447, type: !657)
!4001 = distinct !DILocation(line: 36, column: 5, scope: !3933)
!4002 = !DILocation(line: 329, column: 9, scope: !3680, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 34, column: 16, scope: !3927)
!4004 = !DILocation(line: 0, scope: !3681, inlinedAt: !4003)
!4005 = !DILocation(line: 329, column: 9, scope: !3681, inlinedAt: !4003)
!4006 = !DILocation(line: 330, column: 7, scope: !3702, inlinedAt: !4003)
!4007 = !DILocation(line: 331, column: 5, scope: !3702, inlinedAt: !4003)
!4008 = !DILocation(line: 332, column: 39, scope: !3681, inlinedAt: !4003)
!4009 = !DILocation(line: 332, column: 44, scope: !3681, inlinedAt: !4003)
!4010 = !DILocation(line: 332, column: 42, scope: !3681, inlinedAt: !4003)
!4011 = !DILocation(line: 333, column: 9, scope: !3681, inlinedAt: !4003)
!4012 = distinct !{!4012, !4013, !4014}
!4013 = !DILocation(line: 34, column: 3, scope: !3927)
!4014 = !DILocation(line: 37, column: 3, scope: !3927)
!4015 = !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !3962)
!4016 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 4387, column: 57, scope: !3674, inlinedAt: !3962)
!4018 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !4017)
!4019 = !DILocation(line: 898, column: 27, scope: !3846, inlinedAt: !4017)
!4020 = !DILocation(line: 0, scope: !3650, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !3962)
!4022 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !4021)
!4023 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !4021)
!4024 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !4021)
!4025 = !DILocation(line: 1682, column: 15, scope: !3650, inlinedAt: !4021)
!4026 = !DILocation(line: 4387, column: 32, scope: !3674, inlinedAt: !3962)
!4027 = !DILocation(line: 0, scope: !3661, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 4387, column: 30, scope: !3674, inlinedAt: !3962)
!4029 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !4028)
!4030 = !DILocation(line: 336, column: 22, scope: !3869, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !3962)
!4032 = !DILocation(line: 336, column: 31, scope: !3869, inlinedAt: !4031)
!4033 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 147, column: 7, scope: !3869, inlinedAt: !4031)
!4035 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !4034)
!4036 = !DILocation(line: 175, column: 19, scope: !3881, inlinedAt: !4034)
!4037 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !4034)
!4038 = !DILocation(line: 176, column: 13, scope: !3881, inlinedAt: !4034)
!4039 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !4034)
!4040 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !4034)
!4041 = !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !3962)
!4042 = !DILocation(line: 35, column: 10, scope: !3933)
!4043 = !DILocation(line: 0, scope: !3712, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 35, column: 14, scope: !3933)
!4045 = !DILocation(line: 310, column: 28, scope: !3712, inlinedAt: !4044)
!4046 = !DILocation(line: 0, scope: !3719, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 311, column: 9, scope: !3712, inlinedAt: !4044)
!4048 = !DILocation(line: 134, column: 27, scope: !3719, inlinedAt: !4047)
!4049 = !DILocation(line: 134, column: 54, scope: !3719, inlinedAt: !4047)
!4050 = !DILocation(line: 0, scope: !3728, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 136, column: 9, scope: !3733, inlinedAt: !4047)
!4052 = !DILocation(line: 179, column: 32, scope: !3728, inlinedAt: !4051)
!4053 = !DILocation(line: 0, scope: !2065, inlinedAt: !4054)
!4054 = distinct !DILocation(line: 181, column: 33, scope: !3728, inlinedAt: !4051)
!4055 = !DILocation(line: 167, column: 26, scope: !2065, inlinedAt: !4054)
!4056 = !DILocation(line: 99, column: 26, scope: !2072, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 168, column: 35, scope: !2065, inlinedAt: !4054)
!4058 = !DILocation(line: 99, column: 43, scope: !2072, inlinedAt: !4057)
!4059 = !DILocation(line: 102, column: 4, scope: !2335, inlinedAt: !4057)
!4060 = !DILocation(line: 104, column: 27, scope: !2072, inlinedAt: !4057)
!4061 = !DILocation(line: 104, column: 9, scope: !2072, inlinedAt: !4057)
!4062 = !DILocation(line: 256, column: 67, scope: !3739, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 314, column: 4, scope: !3750, inlinedAt: !4044)
!4064 = !DILocation(line: 256, column: 43, scope: !3739, inlinedAt: !4063)
!4065 = !DILocation(line: 257, column: 24, scope: !3739, inlinedAt: !4063)
!4066 = !DILocation(line: 107, column: 63, scope: !3754, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 258, column: 14, scope: !3739, inlinedAt: !4063)
!4068 = !DILocation(line: 107, column: 39, scope: !3754, inlinedAt: !4067)
!4069 = !DILocation(line: 108, column: 27, scope: !3754, inlinedAt: !4067)
!4070 = !DILocation(line: 91, column: 62, scope: !3766, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 115, column: 14, scope: !3754, inlinedAt: !4067)
!4072 = !DILocation(line: 91, column: 38, scope: !3766, inlinedAt: !4071)
!4073 = !DILocation(line: 92, column: 26, scope: !3766, inlinedAt: !4071)
!4074 = !DILocation(line: 213, column: 24, scope: !3776, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 93, column: 18, scope: !3766, inlinedAt: !4071)
!4076 = !DILocation(line: 213, column: 16, scope: !3776, inlinedAt: !4075)
!4077 = !DILocation(line: 213, column: 32, scope: !3776, inlinedAt: !4075)
!4078 = !DILocation(line: 424, column: 37, scope: !3787, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 458, column: 15, scope: !3776, inlinedAt: !4075)
!4080 = !DILocation(line: 424, column: 24, scope: !3787, inlinedAt: !4079)
!4081 = !DILocation(line: 424, column: 49, scope: !3787, inlinedAt: !4079)
!4082 = !DILocation(line: 379, column: 36, scope: !3799, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 426, column: 18, scope: !3787, inlinedAt: !4079)
!4084 = !DILocation(line: 379, column: 48, scope: !3799, inlinedAt: !4083)
!4085 = !DILocation(line: 384, column: 18, scope: !3799, inlinedAt: !4083)
!4086 = !DILocation(line: 368, column: 49, scope: !3811, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 389, column: 14, scope: !3799, inlinedAt: !4083)
!4088 = !DILocation(line: 368, column: 62, scope: !3811, inlinedAt: !4087)
!4089 = !DILocation(line: 370, column: 20, scope: !3811, inlinedAt: !4087)
!4090 = !DILocation(line: 372, column: 6, scope: !3843, inlinedAt: !4087)
!4091 = !DILocation(line: 373, column: 20, scope: !3811, inlinedAt: !4087)
!4092 = !DILocation(line: 0, scope: !3585, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 36, column: 17, scope: !3933)
!4094 = !DILocation(line: 0, scope: !3590, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 539, column: 16, scope: !3585, inlinedAt: !4093)
!4096 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !4095)
!4097 = !DILocation(line: 0, scope: !3599, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 36, column: 28, scope: !3933)
!4099 = !DILocation(line: 0, scope: !3590, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 557, column: 16, scope: !3599, inlinedAt: !4098)
!4101 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !4100)
!4102 = !DILocation(line: 5447, column: 32, scope: !3997, inlinedAt: !4001)
!4103 = !DILocation(line: 5447, column: 63, scope: !3997, inlinedAt: !4001)
!4104 = !DILocation(line: 823, column: 64, scope: !3669, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 5458, column: 19, scope: !3996, inlinedAt: !4001)
!4106 = !DILocation(line: 824, column: 57, scope: !3669, inlinedAt: !4105)
!4107 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 5461, column: 22, scope: !3995, inlinedAt: !4001)
!4109 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !4108)
!4110 = !DILocation(line: 988, column: 13, scope: !3991, inlinedAt: !3994)
!4111 = !DILocation(line: 5460, column: 4, scope: !3995, inlinedAt: !4001)
!4112 = !DILocation(line: 5462, column: 4, scope: !3995, inlinedAt: !4001)
!4113 = !DILocation(line: 0, scope: !3825, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 37, column: 3, scope: !3927)
!4115 = !DILocation(line: 0, scope: !3830, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !4114)
!4117 = !DILocation(line: 0, scope: !2191, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !4116)
!4119 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !4118)
!4120 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !4118)
!4122 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !4121)
!4123 = !DILocation(line: 334, column: 7, scope: !3910, inlinedAt: !4003)
!4124 = !DILocation(line: 38, column: 1, scope: !3927)
!4125 = !DILocation(line: 0, scope: !3825, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 38, column: 1, scope: !3927)
!4127 = !DILocation(line: 0, scope: !3830, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !4126)
!4129 = !DILocation(line: 0, scope: !2191, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !4128)
!4131 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !4130)
!4132 = !DILocation(line: 173, column: 6, scope: !2403, inlinedAt: !4130)
!4133 = !DILocation(line: 173, column: 6, scope: !2191, inlinedAt: !4130)
!4134 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !4130)
!4136 = !DILocation(line: 110, column: 27, scope: !2407, inlinedAt: !4135)
!4137 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !4135)
!4138 = !DILocation(line: 174, column: 4, scope: !2403, inlinedAt: !4130)
!4139 = distinct !DISubprogram(name: "partition", linkageName: "_Z9partitionRSt6vectorIlSaIlEEii", scope: !3, file: !3, line: 40, type: !4140, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4143)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!385, !4142, !385, !385}
!4142 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2009, size: 64)
!4143 = !{!4144, !4145, !4146, !4147, !4148, !4149}
!4144 = !DILocalVariable(name: "a", arg: 1, scope: !4139, file: !3, line: 40, type: !4142)
!4145 = !DILocalVariable(name: "l", arg: 2, scope: !4139, file: !3, line: 40, type: !385)
!4146 = !DILocalVariable(name: "r", arg: 3, scope: !4139, file: !3, line: 40, type: !385)
!4147 = !DILocalVariable(name: "p", scope: !4139, file: !3, line: 41, type: !385)
!4148 = !DILocalVariable(name: "i", scope: !4139, file: !3, line: 41, type: !385)
!4149 = !DILocalVariable(name: "j", scope: !4139, file: !3, line: 41, type: !385)
!4150 = !DILocation(line: 40, column: 19, scope: !4139)
!4151 = !DILocation(line: 40, column: 26, scope: !4139)
!4152 = !DILocation(line: 40, column: 33, scope: !4139)
!4153 = !DILocation(line: 41, column: 13, scope: !4139)
!4154 = !DILocalVariable(name: "this", arg: 1, scope: !4155, type: !2028, flags: DIFlagArtificial | DIFlagObjectPointer)
!4155 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIlSaIlEEixEm", scope: !402, file: !72, line: 770, type: !558, isLocal: false, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !557, variables: !4156)
!4156 = !{!4154, !4157}
!4157 = !DILocalVariable(name: "__n", arg: 2, scope: !4155, file: !72, line: 770, type: !345)
!4158 = !DILocation(line: 0, scope: !4155, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 41, column: 11, scope: !4139)
!4160 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4159)
!4161 = !DILocation(line: 771, column: 32, scope: !4155, inlinedAt: !4159)
!4162 = !DILocation(line: 41, column: 22, scope: !4139)
!4163 = !DILocation(line: 41, column: 17, scope: !4139)
!4164 = !DILocation(line: 41, column: 26, scope: !4139)
!4165 = !DILocation(line: 42, column: 12, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 42, column: 3)
!4167 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 42, column: 3)
!4168 = !DILocation(line: 771, column: 32, scope: !4155, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 43, column: 9, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 43, column: 9)
!4171 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 42, column: 22)
!4172 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4159)
!4173 = !DILocation(line: 42, column: 3, scope: !4167)
!4174 = !DILocation(line: 41, column: 11, scope: !4139)
!4175 = !DILocation(line: 0, scope: !4155, inlinedAt: !4169)
!4176 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4169)
!4177 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4169)
!4178 = !DILocation(line: 43, column: 9, scope: !4170)
!4179 = !DILocation(line: 43, column: 14, scope: !4170)
!4180 = !DILocation(line: 43, column: 9, scope: !4171)
!4181 = !DILocation(line: 42, column: 18, scope: !4166)
!4182 = distinct !{!4182, !4173, !4183}
!4183 = !DILocation(line: 48, column: 3, scope: !4167)
!4184 = !DILocation(line: 44, column: 8, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 43, column: 20)
!4186 = !DILocation(line: 45, column: 13, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 45, column: 11)
!4188 = !DILocation(line: 45, column: 11, scope: !4185)
!4189 = !DILocation(line: 46, column: 21, scope: !4187)
!4190 = !DILocation(line: 0, scope: !4155, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 46, column: 19, scope: !4187)
!4192 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4191)
!4193 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4191)
!4194 = !DILocation(line: 0, scope: !4155, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 46, column: 25, scope: !4187)
!4196 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4195)
!4197 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 46, column: 9, scope: !4187)
!4199 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !4198)
!4200 = !DILocation(line: 175, column: 19, scope: !3881, inlinedAt: !4198)
!4201 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !4198)
!4202 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !4198)
!4203 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !4198)
!4204 = !DILocation(line: 46, column: 9, scope: !4187)
!4205 = distinct !{!4205, !4173, !4183, !4206}
!4206 = !{!"llvm.loop.unroll.disable"}
!4207 = !DILocation(line: 49, column: 16, scope: !4139)
!4208 = !DILocation(line: 49, column: 15, scope: !4139)
!4209 = !DILocation(line: 0, scope: !4155, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 49, column: 13, scope: !4139)
!4211 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4210)
!4212 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4210)
!4213 = !DILocation(line: 0, scope: !4155, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 49, column: 21, scope: !4139)
!4215 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4214)
!4216 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 49, column: 3, scope: !4139)
!4218 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !4217)
!4219 = !DILocation(line: 175, column: 19, scope: !3881, inlinedAt: !4217)
!4220 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !4217)
!4221 = !DILocation(line: 176, column: 13, scope: !3881, inlinedAt: !4217)
!4222 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !4217)
!4223 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !4217)
!4224 = !DILocation(line: 50, column: 3, scope: !4139)
!4225 = distinct !DISubprogram(name: "quickSort", linkageName: "_Z9quickSortRSt6vectorIlSaIlEEii", scope: !3, file: !3, line: 54, type: !4226, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !4142, !385, !385}
!4228 = !{!4229, !4230, !4231, !4232}
!4229 = !DILocalVariable(name: "a", arg: 1, scope: !4225, file: !3, line: 54, type: !4142)
!4230 = !DILocalVariable(name: "l", arg: 2, scope: !4225, file: !3, line: 54, type: !385)
!4231 = !DILocalVariable(name: "r", arg: 3, scope: !4225, file: !3, line: 54, type: !385)
!4232 = !DILocalVariable(name: "p", scope: !4225, file: !3, line: 56, type: !385)
!4233 = !DILocation(line: 54, column: 20, scope: !4225)
!4234 = !DILocation(line: 54, column: 27, scope: !4225)
!4235 = !DILocation(line: 54, column: 34, scope: !4225)
!4236 = !DILocation(line: 55, column: 9, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 55, column: 7)
!4238 = !DILocation(line: 55, column: 7, scope: !4225)
!4239 = !DILocation(line: 40, column: 19, scope: !4139, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 56, column: 11, scope: !4225)
!4241 = !DILocation(line: 40, column: 26, scope: !4139, inlinedAt: !4240)
!4242 = !DILocation(line: 40, column: 33, scope: !4139, inlinedAt: !4240)
!4243 = !DILocation(line: 0, scope: !4155, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 41, column: 11, scope: !4139, inlinedAt: !4240)
!4245 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4244)
!4246 = !DILocation(line: 41, column: 26, scope: !4139, inlinedAt: !4240)
!4247 = !DILocation(line: 771, column: 32, scope: !4155, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 43, column: 9, scope: !4170, inlinedAt: !4240)
!4249 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4244)
!4250 = !DILocation(line: 41, column: 11, scope: !4139, inlinedAt: !4240)
!4251 = !DILocation(line: 42, column: 3, scope: !4167, inlinedAt: !4240)
!4252 = !DILocation(line: 0, scope: !4155, inlinedAt: !4248)
!4253 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4248)
!4254 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4248)
!4255 = !DILocation(line: 43, column: 9, scope: !4170, inlinedAt: !4240)
!4256 = !DILocation(line: 43, column: 14, scope: !4170, inlinedAt: !4240)
!4257 = !DILocation(line: 41, column: 17, scope: !4139, inlinedAt: !4240)
!4258 = !DILocation(line: 43, column: 9, scope: !4171, inlinedAt: !4240)
!4259 = !DILocation(line: 42, column: 18, scope: !4166, inlinedAt: !4240)
!4260 = !DILocation(line: 42, column: 12, scope: !4166, inlinedAt: !4240)
!4261 = !DILocation(line: 44, column: 8, scope: !4185, inlinedAt: !4240)
!4262 = !DILocation(line: 45, column: 13, scope: !4187, inlinedAt: !4240)
!4263 = !DILocation(line: 45, column: 11, scope: !4185, inlinedAt: !4240)
!4264 = !DILocation(line: 46, column: 21, scope: !4187, inlinedAt: !4240)
!4265 = !DILocation(line: 0, scope: !4155, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 46, column: 19, scope: !4187, inlinedAt: !4240)
!4267 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4266)
!4268 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4266)
!4269 = !DILocation(line: 0, scope: !4155, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 46, column: 25, scope: !4187, inlinedAt: !4240)
!4271 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4270)
!4272 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 46, column: 9, scope: !4187, inlinedAt: !4240)
!4274 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !4273)
!4275 = !DILocation(line: 175, column: 19, scope: !3881, inlinedAt: !4273)
!4276 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !4273)
!4277 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !4273)
!4278 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !4273)
!4279 = !DILocation(line: 46, column: 9, scope: !4187, inlinedAt: !4240)
!4280 = !DILocation(line: 49, column: 16, scope: !4139, inlinedAt: !4240)
!4281 = !DILocation(line: 176, column: 13, scope: !3881, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 49, column: 3, scope: !4139, inlinedAt: !4240)
!4283 = !DILocation(line: 49, column: 15, scope: !4139, inlinedAt: !4240)
!4284 = !DILocation(line: 0, scope: !4155, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 49, column: 13, scope: !4139, inlinedAt: !4240)
!4286 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4285)
!4287 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4285)
!4288 = !DILocation(line: 0, scope: !4155, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 49, column: 21, scope: !4139, inlinedAt: !4240)
!4290 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4289)
!4291 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !4282)
!4292 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !4282)
!4293 = !DILocation(line: 175, column: 19, scope: !3881, inlinedAt: !4282)
!4294 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !4282)
!4295 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !4282)
!4296 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !4282)
!4297 = !DILocation(line: 56, column: 7, scope: !4225)
!4298 = !DILocation(line: 57, column: 3, scope: !4225)
!4299 = !DILocation(line: 58, column: 17, scope: !4225)
!4300 = !DILocation(line: 59, column: 1, scope: !4225)
!4301 = distinct !DISubprogram(name: "BM_quickSort", linkageName: "_Z12BM_quickSortRN9benchmark5StateE", scope: !3, file: !3, line: 61, type: !2436, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4302)
!4302 = !{!4303, !4304, !4305, !4306, !4307, !4309}
!4303 = !DILocalVariable(name: "state", arg: 1, scope: !4301, file: !3, line: 61, type: !2438)
!4304 = !DILocalVariable(name: "nums", scope: !4301, file: !3, line: 62, type: !402)
!4305 = !DILocalVariable(name: "g", scope: !4301, file: !3, line: 63, type: !3549)
!4306 = !DILocalVariable(name: "r", scope: !4301, file: !3, line: 65, type: !385)
!4307 = !DILocalVariable(name: "v", scope: !4308, file: !3, line: 67, type: !402)
!4308 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 66, column: 31)
!4309 = !DILocalVariable(name: "i", scope: !4310, file: !3, line: 69, type: !385)
!4310 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 69, column: 5)
!4311 = !DILocation(line: 61, column: 37, scope: !4301)
!4312 = !DILocation(line: 62, column: 3, scope: !4301)
!4313 = !DILocation(line: 0, scope: !3555, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 62, column: 27, scope: !4301)
!4315 = !DILocation(line: 447, column: 25, scope: !3555, inlinedAt: !4314)
!4316 = !DILocation(line: 0, scope: !3563, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !4314)
!4318 = !DILocation(line: 785, column: 28, scope: !3563, inlinedAt: !4317)
!4319 = !DILocation(line: 786, column: 32, scope: !3563, inlinedAt: !4317)
!4320 = !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !4314)
!4321 = !DILocation(line: 62, column: 8, scope: !4301)
!4322 = !DILocation(line: 62, column: 15, scope: !4301)
!4323 = !DILocation(line: 63, column: 3, scope: !4301)
!4324 = !DILocation(line: 63, column: 20, scope: !4301)
!4325 = !DILocation(line: 0, scope: !3585, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 64, column: 21, scope: !4301)
!4327 = !DILocation(line: 0, scope: !3590, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 539, column: 16, scope: !3585, inlinedAt: !4326)
!4329 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !4328)
!4330 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !4328)
!4331 = !DILocation(line: 0, scope: !3599, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 64, column: 35, scope: !4301)
!4333 = !DILocation(line: 557, column: 39, scope: !3599, inlinedAt: !4332)
!4334 = !DILocation(line: 0, scope: !3590, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 557, column: 16, scope: !3599, inlinedAt: !4332)
!4336 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !4335)
!4337 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !4335)
!4338 = !DILocation(line: 4368, column: 38, scope: !3609, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 64, column: 3, scope: !4301)
!4340 = !DILocation(line: 4367, column: 35, scope: !3609, inlinedAt: !4339)
!4341 = !DILocation(line: 4367, column: 66, scope: !3609, inlinedAt: !4339)
!4342 = !DILocation(line: 811, column: 64, scope: !3626, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 4375, column: 19, scope: !3634, inlinedAt: !4339)
!4344 = !DILocation(line: 812, column: 57, scope: !3626, inlinedAt: !4343)
!4345 = !DILocation(line: 813, column: 27, scope: !3626, inlinedAt: !4343)
!4346 = !DILocation(line: 4375, column: 11, scope: !3609, inlinedAt: !4339)
!4347 = !DILocation(line: 4384, column: 7, scope: !3609, inlinedAt: !4339)
!4348 = !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !4339)
!4349 = !DILocation(line: 0, scope: !3641, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !4339)
!4351 = !DILocation(line: 1709, column: 41, scope: !3641, inlinedAt: !4350)
!4352 = !DILocation(line: 1710, column: 16, scope: !3641, inlinedAt: !4350)
!4353 = !DILocation(line: 0, scope: !3650, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 1711, column: 9, scope: !3641, inlinedAt: !4350)
!4355 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !4354)
!4356 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !4354)
!4357 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !4354)
!4358 = !DILocation(line: 0, scope: !3661, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 4386, column: 48, scope: !3620, inlinedAt: !4339)
!4360 = !DILocation(line: 4386, column: 34, scope: !3620, inlinedAt: !4339)
!4361 = !DILocation(line: 823, column: 64, scope: !3669, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 4386, column: 57, scope: !3674, inlinedAt: !4339)
!4363 = !DILocation(line: 824, column: 57, scope: !3669, inlinedAt: !4362)
!4364 = !DILocation(line: 825, column: 27, scope: !3669, inlinedAt: !4362)
!4365 = !DILocation(line: 4386, column: 7, scope: !3620, inlinedAt: !4339)
!4366 = !DILocation(line: 4388, column: 5, scope: !3609, inlinedAt: !4339)
!4367 = !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !4339)
!4368 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 4387, column: 57, scope: !3674, inlinedAt: !4339)
!4370 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !4369)
!4371 = !DILocation(line: 898, column: 27, scope: !3846, inlinedAt: !4369)
!4372 = !DILocation(line: 0, scope: !3650, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !4339)
!4374 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !4373)
!4375 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !4373)
!4376 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !4373)
!4377 = !DILocation(line: 1682, column: 15, scope: !3650, inlinedAt: !4373)
!4378 = !DILocation(line: 4387, column: 32, scope: !3674, inlinedAt: !4339)
!4379 = !DILocation(line: 0, scope: !3661, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 4387, column: 30, scope: !3674, inlinedAt: !4339)
!4381 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !4380)
!4382 = !DILocation(line: 336, column: 22, scope: !3869, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !4339)
!4384 = !DILocation(line: 336, column: 31, scope: !3869, inlinedAt: !4383)
!4385 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 147, column: 7, scope: !3869, inlinedAt: !4383)
!4387 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !4386)
!4388 = !DILocation(line: 175, column: 19, scope: !3881, inlinedAt: !4386)
!4389 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !4386)
!4390 = !DILocation(line: 176, column: 13, scope: !3881, inlinedAt: !4386)
!4391 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !4386)
!4392 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !4386)
!4393 = !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !4339)
!4394 = !DILocation(line: 0, scope: !2040, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 65, column: 16, scope: !4301)
!4396 = !DILocation(line: 646, column: 50, scope: !2040, inlinedAt: !4395)
!4397 = !DILocation(line: 65, column: 23, scope: !4301)
!4398 = !DILocation(line: 65, column: 11, scope: !4301)
!4399 = !DILocation(line: 65, column: 7, scope: !4301)
!4400 = !DILocation(line: 66, column: 3, scope: !4301)
!4401 = !DILocation(line: 329, column: 9, scope: !3680, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 66, column: 16, scope: !4301)
!4403 = !DILocation(line: 0, scope: !3681, inlinedAt: !4402)
!4404 = !DILocation(line: 329, column: 9, scope: !3681, inlinedAt: !4402)
!4405 = !DILocation(line: 330, column: 7, scope: !3702, inlinedAt: !4402)
!4406 = !DILocation(line: 331, column: 5, scope: !3702, inlinedAt: !4402)
!4407 = !DILocation(line: 332, column: 39, scope: !3681, inlinedAt: !4402)
!4408 = !DILocation(line: 332, column: 44, scope: !3681, inlinedAt: !4402)
!4409 = !DILocation(line: 332, column: 42, scope: !3681, inlinedAt: !4402)
!4410 = !DILocation(line: 333, column: 9, scope: !3681, inlinedAt: !4402)
!4411 = !DILocation(line: 67, column: 5, scope: !4308)
!4412 = !DILocation(line: 67, column: 10, scope: !4308)
!4413 = !DILocation(line: 0, scope: !3712, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 67, column: 14, scope: !4308)
!4415 = !DILocation(line: 310, column: 28, scope: !3712, inlinedAt: !4414)
!4416 = !DILocation(line: 0, scope: !2040, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 311, column: 19, scope: !3712, inlinedAt: !4414)
!4418 = !DILocation(line: 0, scope: !3719, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 311, column: 9, scope: !3712, inlinedAt: !4414)
!4420 = !DILocation(line: 134, column: 27, scope: !3719, inlinedAt: !4419)
!4421 = !DILocation(line: 134, column: 54, scope: !3719, inlinedAt: !4419)
!4422 = !DILocalVariable(name: "this", arg: 1, scope: !4423, type: !4426, flags: DIFlagArtificial | DIFlagObjectPointer)
!4423 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_", scope: !76, file: !72, line: 90, type: !274, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !273, variables: !4424)
!4424 = !{!4422, !4425}
!4425 = !DILocalVariable(name: "__a", arg: 2, scope: !4423, file: !72, line: 90, type: !276)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!4427 = !DILocation(line: 0, scope: !4423, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 135, column: 9, scope: !3719, inlinedAt: !4419)
!4429 = !DILocation(line: 90, column: 37, scope: !4423, inlinedAt: !4428)
!4430 = !DILocation(line: 0, scope: !3728, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 136, column: 9, scope: !3733, inlinedAt: !4419)
!4432 = !DILocation(line: 179, column: 32, scope: !3728, inlinedAt: !4431)
!4433 = !DILocation(line: 0, scope: !2065, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 181, column: 33, scope: !3728, inlinedAt: !4431)
!4435 = !DILocation(line: 167, column: 26, scope: !2065, inlinedAt: !4434)
!4436 = !DILocation(line: 256, column: 43, scope: !3739, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 314, column: 4, scope: !3750, inlinedAt: !4414)
!4438 = !DILocation(line: 256, column: 67, scope: !3739, inlinedAt: !4437)
!4439 = !DILocation(line: 257, column: 24, scope: !3739, inlinedAt: !4437)
!4440 = !DILocation(line: 107, column: 39, scope: !3754, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 258, column: 14, scope: !3739, inlinedAt: !4437)
!4442 = !DILocation(line: 107, column: 63, scope: !3754, inlinedAt: !4441)
!4443 = !DILocation(line: 108, column: 27, scope: !3754, inlinedAt: !4441)
!4444 = !DILocation(line: 91, column: 38, scope: !3766, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 115, column: 14, scope: !3754, inlinedAt: !4441)
!4446 = !DILocation(line: 91, column: 62, scope: !3766, inlinedAt: !4445)
!4447 = !DILocation(line: 92, column: 26, scope: !3766, inlinedAt: !4445)
!4448 = !DILocation(line: 213, column: 16, scope: !3776, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 93, column: 18, scope: !3766, inlinedAt: !4445)
!4450 = !DILocation(line: 213, column: 24, scope: !3776, inlinedAt: !4449)
!4451 = !DILocation(line: 213, column: 32, scope: !3776, inlinedAt: !4449)
!4452 = !DILocation(line: 424, column: 24, scope: !3787, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 458, column: 15, scope: !3776, inlinedAt: !4449)
!4454 = !DILocation(line: 424, column: 37, scope: !3787, inlinedAt: !4453)
!4455 = !DILocation(line: 424, column: 49, scope: !3787, inlinedAt: !4453)
!4456 = !DILocation(line: 379, column: 23, scope: !3799, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 426, column: 18, scope: !3787, inlinedAt: !4453)
!4458 = !DILocation(line: 379, column: 36, scope: !3799, inlinedAt: !4457)
!4459 = !DILocation(line: 379, column: 48, scope: !3799, inlinedAt: !4457)
!4460 = !DILocation(line: 384, column: 18, scope: !3799, inlinedAt: !4457)
!4461 = !DILocation(line: 368, column: 29, scope: !3811, inlinedAt: !4462)
!4462 = distinct !DILocation(line: 389, column: 14, scope: !3799, inlinedAt: !4457)
!4463 = !DILocation(line: 368, column: 49, scope: !3811, inlinedAt: !4462)
!4464 = !DILocation(line: 368, column: 62, scope: !3811, inlinedAt: !4462)
!4465 = !DILocation(line: 370, column: 20, scope: !3811, inlinedAt: !4462)
!4466 = !DILocation(line: 181, column: 25, scope: !3728, inlinedAt: !4431)
!4467 = !DILocation(line: 313, column: 33, scope: !3750, inlinedAt: !4414)
!4468 = !DILocation(line: 68, column: 5, scope: !4308)
!4469 = !DILocation(line: 0, scope: !3825, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 72, column: 3, scope: !4301)
!4471 = !DILocation(line: 0, scope: !3830, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !4470)
!4473 = !DILocation(line: 160, column: 37, scope: !3837, inlinedAt: !4472)
!4474 = !DILocation(line: 0, scope: !2191, inlinedAt: !4475)
!4475 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !4472)
!4476 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !4475)
!4477 = !DILocation(line: 173, column: 6, scope: !2403, inlinedAt: !4475)
!4478 = !DILocation(line: 173, column: 6, scope: !2191, inlinedAt: !4475)
!4479 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !4475)
!4481 = !DILocation(line: 110, column: 27, scope: !2407, inlinedAt: !4480)
!4482 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !4480)
!4483 = !DILocation(line: 174, column: 4, scope: !2403, inlinedAt: !4475)
!4484 = !DILocation(line: 72, column: 3, scope: !4301)
!4485 = distinct !{!4485, !4400, !4484}
!4486 = !DILocation(line: 91, column: 38, scope: !4423, inlinedAt: !4428)
!4487 = !DILocation(line: 99, column: 26, scope: !2072, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 168, column: 35, scope: !2065, inlinedAt: !4434)
!4489 = !DILocation(line: 99, column: 43, scope: !2072, inlinedAt: !4488)
!4490 = !DILocation(line: 102, column: 4, scope: !2335, inlinedAt: !4488)
!4491 = !DILocation(line: 104, column: 27, scope: !2072, inlinedAt: !4488)
!4492 = !DILocation(line: 104, column: 9, scope: !2072, inlinedAt: !4488)
!4493 = !DILocation(line: 182, column: 26, scope: !3728, inlinedAt: !4431)
!4494 = !DILocation(line: 183, column: 59, scope: !3728, inlinedAt: !4431)
!4495 = !DILocation(line: 183, column: 34, scope: !3728, inlinedAt: !4431)
!4496 = !DILocation(line: 372, column: 6, scope: !3843, inlinedAt: !4462)
!4497 = !DILocation(line: 334, column: 7, scope: !3910, inlinedAt: !4402)
!4498 = !DILocation(line: 73, column: 1, scope: !4301)
!4499 = !DILocation(line: 0, scope: !3825, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 73, column: 1, scope: !4301)
!4501 = !DILocation(line: 0, scope: !3830, inlinedAt: !4502)
!4502 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !4500)
!4503 = !DILocation(line: 0, scope: !2191, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !4502)
!4505 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !4504)
!4506 = !DILocation(line: 173, column: 6, scope: !2403, inlinedAt: !4504)
!4507 = !DILocation(line: 173, column: 6, scope: !2191, inlinedAt: !4504)
!4508 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !4504)
!4510 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !4509)
!4511 = !DILocation(line: 174, column: 4, scope: !2403, inlinedAt: !4504)
!4512 = distinct !DISubprogram(name: "partition2", linkageName: "_Z10partition2RSt6vectorIlSaIlEEii", scope: !3, file: !3, line: 75, type: !4140, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4513)
!4513 = !{!4514, !4515, !4516, !4517, !4518, !4519}
!4514 = !DILocalVariable(name: "a", arg: 1, scope: !4512, file: !3, line: 75, type: !4142)
!4515 = !DILocalVariable(name: "l", arg: 2, scope: !4512, file: !3, line: 75, type: !385)
!4516 = !DILocalVariable(name: "r", arg: 3, scope: !4512, file: !3, line: 75, type: !385)
!4517 = !DILocalVariable(name: "p", scope: !4512, file: !3, line: 76, type: !385)
!4518 = !DILocalVariable(name: "i", scope: !4512, file: !3, line: 76, type: !385)
!4519 = !DILocalVariable(name: "j", scope: !4512, file: !3, line: 76, type: !385)
!4520 = !DILocation(line: 75, column: 20, scope: !4512)
!4521 = !DILocation(line: 75, column: 27, scope: !4512)
!4522 = !DILocation(line: 75, column: 34, scope: !4512)
!4523 = !DILocation(line: 76, column: 13, scope: !4512)
!4524 = !DILocation(line: 0, scope: !4155, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 76, column: 11, scope: !4512)
!4526 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4525)
!4527 = !DILocation(line: 771, column: 32, scope: !4155, inlinedAt: !4525)
!4528 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4525)
!4529 = !DILocation(line: 76, column: 11, scope: !4512)
!4530 = !DILocation(line: 76, column: 22, scope: !4512)
!4531 = !DILocation(line: 76, column: 17, scope: !4512)
!4532 = !DILocation(line: 76, column: 31, scope: !4512)
!4533 = !DILocation(line: 76, column: 26, scope: !4512)
!4534 = !DILocation(line: 77, column: 3, scope: !4512)
!4535 = !DILocation(line: 78, column: 5, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 77, column: 12)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 77, column: 3)
!4538 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 77, column: 3)
!4539 = distinct !{!4539, !4535, !4540}
!4540 = !DILocation(line: 78, column: 32, scope: !4536)
!4541 = !DILocation(line: 78, column: 11, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 78, column: 8)
!4543 = !DILocation(line: 0, scope: !4155, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 78, column: 24, scope: !4536)
!4545 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4544)
!4546 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4544)
!4547 = !DILocation(line: 78, column: 24, scope: !4536)
!4548 = !DILocation(line: 78, column: 29, scope: !4536)
!4549 = !DILocation(line: 78, column: 15, scope: !4542)
!4550 = distinct !{!4550, !4551, !4552}
!4551 = !DILocation(line: 79, column: 5, scope: !4536)
!4552 = !DILocation(line: 79, column: 32, scope: !4536)
!4553 = !DILocation(line: 79, column: 11, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 79, column: 8)
!4555 = !DILocation(line: 0, scope: !4155, inlinedAt: !4556)
!4556 = distinct !DILocation(line: 79, column: 24, scope: !4536)
!4557 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4556)
!4558 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4556)
!4559 = !DILocation(line: 79, column: 24, scope: !4536)
!4560 = !DILocation(line: 79, column: 29, scope: !4536)
!4561 = !DILocation(line: 79, column: 15, scope: !4554)
!4562 = !DILocation(line: 80, column: 11, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 80, column: 9)
!4564 = !DILocation(line: 80, column: 9, scope: !4536)
!4565 = !DILocation(line: 80, column: 17, scope: !4563)
!4566 = !DILocation(line: 0, scope: !4155, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 81, column: 15, scope: !4536)
!4568 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4567)
!4569 = !DILocation(line: 0, scope: !4155, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 81, column: 21, scope: !4536)
!4571 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4570)
!4572 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 81, column: 5, scope: !4536)
!4574 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !4573)
!4575 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !4573)
!4576 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !4573)
!4577 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !4573)
!4578 = !DILocation(line: 77, column: 3, scope: !4537)
!4579 = distinct !{!4579, !4580, !4581}
!4580 = !DILocation(line: 77, column: 3, scope: !4538)
!4581 = !DILocation(line: 82, column: 3, scope: !4538)
!4582 = distinct !DISubprogram(name: "quickSort2", linkageName: "_Z10quickSort2RSt6vectorIlSaIlEEii", scope: !3, file: !3, line: 86, type: !4226, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4583)
!4583 = !{!4584, !4585, !4586, !4587}
!4584 = !DILocalVariable(name: "a", arg: 1, scope: !4582, file: !3, line: 86, type: !4142)
!4585 = !DILocalVariable(name: "l", arg: 2, scope: !4582, file: !3, line: 86, type: !385)
!4586 = !DILocalVariable(name: "r", arg: 3, scope: !4582, file: !3, line: 86, type: !385)
!4587 = !DILocalVariable(name: "p", scope: !4582, file: !3, line: 88, type: !385)
!4588 = !DILocation(line: 86, column: 21, scope: !4582)
!4589 = !DILocation(line: 86, column: 28, scope: !4582)
!4590 = !DILocation(line: 86, column: 35, scope: !4582)
!4591 = !DILocation(line: 87, column: 9, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 87, column: 7)
!4593 = !DILocation(line: 87, column: 7, scope: !4582)
!4594 = !DILocation(line: 75, column: 20, scope: !4512, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 88, column: 11, scope: !4582)
!4596 = !DILocation(line: 75, column: 27, scope: !4512, inlinedAt: !4595)
!4597 = !DILocation(line: 75, column: 34, scope: !4512, inlinedAt: !4595)
!4598 = !DILocation(line: 0, scope: !4155, inlinedAt: !4599)
!4599 = distinct !DILocation(line: 76, column: 11, scope: !4512, inlinedAt: !4595)
!4600 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4599)
!4601 = !DILocation(line: 771, column: 32, scope: !4155, inlinedAt: !4599)
!4602 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4599)
!4603 = !DILocation(line: 76, column: 11, scope: !4512, inlinedAt: !4595)
!4604 = !DILocation(line: 76, column: 22, scope: !4512, inlinedAt: !4595)
!4605 = !DILocation(line: 76, column: 17, scope: !4512, inlinedAt: !4595)
!4606 = !DILocation(line: 76, column: 26, scope: !4512, inlinedAt: !4595)
!4607 = !DILocation(line: 77, column: 3, scope: !4512, inlinedAt: !4595)
!4608 = !DILocation(line: 78, column: 5, scope: !4536, inlinedAt: !4595)
!4609 = !DILocation(line: 78, column: 11, scope: !4542, inlinedAt: !4595)
!4610 = !DILocation(line: 0, scope: !4155, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 78, column: 24, scope: !4536, inlinedAt: !4595)
!4612 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4611)
!4613 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4611)
!4614 = !DILocation(line: 78, column: 24, scope: !4536, inlinedAt: !4595)
!4615 = !DILocation(line: 78, column: 29, scope: !4536, inlinedAt: !4595)
!4616 = !DILocation(line: 78, column: 15, scope: !4542, inlinedAt: !4595)
!4617 = !DILocation(line: 79, column: 11, scope: !4554, inlinedAt: !4595)
!4618 = !DILocation(line: 0, scope: !4155, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 79, column: 24, scope: !4536, inlinedAt: !4595)
!4620 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4619)
!4621 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4619)
!4622 = !DILocation(line: 79, column: 24, scope: !4536, inlinedAt: !4595)
!4623 = !DILocation(line: 79, column: 29, scope: !4536, inlinedAt: !4595)
!4624 = !DILocation(line: 79, column: 15, scope: !4554, inlinedAt: !4595)
!4625 = !DILocation(line: 80, column: 11, scope: !4563, inlinedAt: !4595)
!4626 = !DILocation(line: 80, column: 9, scope: !4536, inlinedAt: !4595)
!4627 = !DILocation(line: 0, scope: !4155, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 81, column: 15, scope: !4536, inlinedAt: !4595)
!4629 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4628)
!4630 = !DILocation(line: 0, scope: !4155, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 81, column: 21, scope: !4536, inlinedAt: !4595)
!4632 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4631)
!4633 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 81, column: 5, scope: !4536, inlinedAt: !4595)
!4635 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !4634)
!4636 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !4634)
!4637 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !4634)
!4638 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !4634)
!4639 = !DILocation(line: 77, column: 3, scope: !4537, inlinedAt: !4595)
!4640 = !DILocation(line: 88, column: 7, scope: !4582)
!4641 = !DILocation(line: 89, column: 21, scope: !4582)
!4642 = !DILocation(line: 89, column: 3, scope: !4582)
!4643 = !DILocation(line: 91, column: 1, scope: !4582)
!4644 = distinct !DISubprogram(name: "BM_quickSort2", linkageName: "_Z13BM_quickSort2RN9benchmark5StateE", scope: !3, file: !3, line: 93, type: !2436, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4645)
!4645 = !{!4646, !4647, !4648, !4649, !4650, !4652}
!4646 = !DILocalVariable(name: "state", arg: 1, scope: !4644, file: !3, line: 93, type: !2438)
!4647 = !DILocalVariable(name: "nums", scope: !4644, file: !3, line: 94, type: !402)
!4648 = !DILocalVariable(name: "g", scope: !4644, file: !3, line: 95, type: !3549)
!4649 = !DILocalVariable(name: "r", scope: !4644, file: !3, line: 97, type: !385)
!4650 = !DILocalVariable(name: "v", scope: !4651, file: !3, line: 99, type: !402)
!4651 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 98, column: 31)
!4652 = !DILocalVariable(name: "i", scope: !4653, file: !3, line: 101, type: !385)
!4653 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 101, column: 5)
!4654 = !DILocation(line: 93, column: 38, scope: !4644)
!4655 = !DILocation(line: 94, column: 3, scope: !4644)
!4656 = !DILocation(line: 0, scope: !3555, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 94, column: 27, scope: !4644)
!4658 = !DILocation(line: 447, column: 25, scope: !3555, inlinedAt: !4657)
!4659 = !DILocation(line: 0, scope: !3563, inlinedAt: !4660)
!4660 = distinct !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !4657)
!4661 = !DILocation(line: 785, column: 28, scope: !3563, inlinedAt: !4660)
!4662 = !DILocation(line: 786, column: 32, scope: !3563, inlinedAt: !4660)
!4663 = !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !4657)
!4664 = !DILocation(line: 94, column: 8, scope: !4644)
!4665 = !DILocation(line: 94, column: 15, scope: !4644)
!4666 = !DILocation(line: 95, column: 3, scope: !4644)
!4667 = !DILocation(line: 95, column: 20, scope: !4644)
!4668 = !DILocation(line: 0, scope: !3585, inlinedAt: !4669)
!4669 = distinct !DILocation(line: 96, column: 21, scope: !4644)
!4670 = !DILocation(line: 0, scope: !3590, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 539, column: 16, scope: !3585, inlinedAt: !4669)
!4672 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !4671)
!4673 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !4671)
!4674 = !DILocation(line: 0, scope: !3599, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 96, column: 35, scope: !4644)
!4676 = !DILocation(line: 557, column: 39, scope: !3599, inlinedAt: !4675)
!4677 = !DILocation(line: 0, scope: !3590, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 557, column: 16, scope: !3599, inlinedAt: !4675)
!4679 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !4678)
!4680 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !4678)
!4681 = !DILocation(line: 4368, column: 38, scope: !3609, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 96, column: 3, scope: !4644)
!4683 = !DILocation(line: 4367, column: 35, scope: !3609, inlinedAt: !4682)
!4684 = !DILocation(line: 4367, column: 66, scope: !3609, inlinedAt: !4682)
!4685 = !DILocation(line: 811, column: 64, scope: !3626, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 4375, column: 19, scope: !3634, inlinedAt: !4682)
!4687 = !DILocation(line: 812, column: 57, scope: !3626, inlinedAt: !4686)
!4688 = !DILocation(line: 813, column: 27, scope: !3626, inlinedAt: !4686)
!4689 = !DILocation(line: 4375, column: 11, scope: !3609, inlinedAt: !4682)
!4690 = !DILocation(line: 4384, column: 7, scope: !3609, inlinedAt: !4682)
!4691 = !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !4682)
!4692 = !DILocation(line: 0, scope: !3641, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !4682)
!4694 = !DILocation(line: 1709, column: 41, scope: !3641, inlinedAt: !4693)
!4695 = !DILocation(line: 1710, column: 16, scope: !3641, inlinedAt: !4693)
!4696 = !DILocation(line: 0, scope: !3650, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 1711, column: 9, scope: !3641, inlinedAt: !4693)
!4698 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !4697)
!4699 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !4697)
!4700 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !4697)
!4701 = !DILocation(line: 0, scope: !3661, inlinedAt: !4702)
!4702 = distinct !DILocation(line: 4386, column: 48, scope: !3620, inlinedAt: !4682)
!4703 = !DILocation(line: 4386, column: 34, scope: !3620, inlinedAt: !4682)
!4704 = !DILocation(line: 823, column: 64, scope: !3669, inlinedAt: !4705)
!4705 = distinct !DILocation(line: 4386, column: 57, scope: !3674, inlinedAt: !4682)
!4706 = !DILocation(line: 824, column: 57, scope: !3669, inlinedAt: !4705)
!4707 = !DILocation(line: 825, column: 27, scope: !3669, inlinedAt: !4705)
!4708 = !DILocation(line: 4386, column: 7, scope: !3620, inlinedAt: !4682)
!4709 = !DILocation(line: 4388, column: 5, scope: !3609, inlinedAt: !4682)
!4710 = !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !4682)
!4711 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 4387, column: 57, scope: !3674, inlinedAt: !4682)
!4713 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !4712)
!4714 = !DILocation(line: 898, column: 27, scope: !3846, inlinedAt: !4712)
!4715 = !DILocation(line: 0, scope: !3650, inlinedAt: !4716)
!4716 = distinct !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !4682)
!4717 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !4716)
!4718 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !4716)
!4719 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !4716)
!4720 = !DILocation(line: 1682, column: 15, scope: !3650, inlinedAt: !4716)
!4721 = !DILocation(line: 4387, column: 32, scope: !3674, inlinedAt: !4682)
!4722 = !DILocation(line: 0, scope: !3661, inlinedAt: !4723)
!4723 = distinct !DILocation(line: 4387, column: 30, scope: !3674, inlinedAt: !4682)
!4724 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !4723)
!4725 = !DILocation(line: 336, column: 22, scope: !3869, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !4682)
!4727 = !DILocation(line: 336, column: 31, scope: !3869, inlinedAt: !4726)
!4728 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 147, column: 7, scope: !3869, inlinedAt: !4726)
!4730 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !4729)
!4731 = !DILocation(line: 175, column: 19, scope: !3881, inlinedAt: !4729)
!4732 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !4729)
!4733 = !DILocation(line: 176, column: 13, scope: !3881, inlinedAt: !4729)
!4734 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !4729)
!4735 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !4729)
!4736 = !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !4682)
!4737 = !DILocation(line: 0, scope: !2040, inlinedAt: !4738)
!4738 = distinct !DILocation(line: 97, column: 16, scope: !4644)
!4739 = !DILocation(line: 646, column: 50, scope: !2040, inlinedAt: !4738)
!4740 = !DILocation(line: 97, column: 23, scope: !4644)
!4741 = !DILocation(line: 97, column: 11, scope: !4644)
!4742 = !DILocation(line: 97, column: 7, scope: !4644)
!4743 = !DILocation(line: 98, column: 3, scope: !4644)
!4744 = !DILocation(line: 329, column: 9, scope: !3680, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 98, column: 16, scope: !4644)
!4746 = !DILocation(line: 0, scope: !3681, inlinedAt: !4745)
!4747 = !DILocation(line: 329, column: 9, scope: !3681, inlinedAt: !4745)
!4748 = !DILocation(line: 330, column: 7, scope: !3702, inlinedAt: !4745)
!4749 = !DILocation(line: 331, column: 5, scope: !3702, inlinedAt: !4745)
!4750 = !DILocation(line: 332, column: 39, scope: !3681, inlinedAt: !4745)
!4751 = !DILocation(line: 332, column: 44, scope: !3681, inlinedAt: !4745)
!4752 = !DILocation(line: 332, column: 42, scope: !3681, inlinedAt: !4745)
!4753 = !DILocation(line: 333, column: 9, scope: !3681, inlinedAt: !4745)
!4754 = !DILocation(line: 99, column: 5, scope: !4651)
!4755 = !DILocation(line: 99, column: 10, scope: !4651)
!4756 = !DILocation(line: 0, scope: !3712, inlinedAt: !4757)
!4757 = distinct !DILocation(line: 99, column: 14, scope: !4651)
!4758 = !DILocation(line: 310, column: 28, scope: !3712, inlinedAt: !4757)
!4759 = !DILocation(line: 0, scope: !2040, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 311, column: 19, scope: !3712, inlinedAt: !4757)
!4761 = !DILocation(line: 0, scope: !3719, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 311, column: 9, scope: !3712, inlinedAt: !4757)
!4763 = !DILocation(line: 134, column: 27, scope: !3719, inlinedAt: !4762)
!4764 = !DILocation(line: 134, column: 54, scope: !3719, inlinedAt: !4762)
!4765 = !DILocation(line: 0, scope: !4423, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 135, column: 9, scope: !3719, inlinedAt: !4762)
!4767 = !DILocation(line: 90, column: 37, scope: !4423, inlinedAt: !4766)
!4768 = !DILocation(line: 0, scope: !3728, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 136, column: 9, scope: !3733, inlinedAt: !4762)
!4770 = !DILocation(line: 179, column: 32, scope: !3728, inlinedAt: !4769)
!4771 = !DILocation(line: 0, scope: !2065, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 181, column: 33, scope: !3728, inlinedAt: !4769)
!4773 = !DILocation(line: 167, column: 26, scope: !2065, inlinedAt: !4772)
!4774 = !DILocation(line: 256, column: 43, scope: !3739, inlinedAt: !4775)
!4775 = distinct !DILocation(line: 314, column: 4, scope: !3750, inlinedAt: !4757)
!4776 = !DILocation(line: 256, column: 67, scope: !3739, inlinedAt: !4775)
!4777 = !DILocation(line: 257, column: 24, scope: !3739, inlinedAt: !4775)
!4778 = !DILocation(line: 107, column: 39, scope: !3754, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 258, column: 14, scope: !3739, inlinedAt: !4775)
!4780 = !DILocation(line: 107, column: 63, scope: !3754, inlinedAt: !4779)
!4781 = !DILocation(line: 108, column: 27, scope: !3754, inlinedAt: !4779)
!4782 = !DILocation(line: 91, column: 38, scope: !3766, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 115, column: 14, scope: !3754, inlinedAt: !4779)
!4784 = !DILocation(line: 91, column: 62, scope: !3766, inlinedAt: !4783)
!4785 = !DILocation(line: 92, column: 26, scope: !3766, inlinedAt: !4783)
!4786 = !DILocation(line: 213, column: 16, scope: !3776, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 93, column: 18, scope: !3766, inlinedAt: !4783)
!4788 = !DILocation(line: 213, column: 24, scope: !3776, inlinedAt: !4787)
!4789 = !DILocation(line: 213, column: 32, scope: !3776, inlinedAt: !4787)
!4790 = !DILocation(line: 424, column: 24, scope: !3787, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 458, column: 15, scope: !3776, inlinedAt: !4787)
!4792 = !DILocation(line: 424, column: 37, scope: !3787, inlinedAt: !4791)
!4793 = !DILocation(line: 424, column: 49, scope: !3787, inlinedAt: !4791)
!4794 = !DILocation(line: 379, column: 23, scope: !3799, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 426, column: 18, scope: !3787, inlinedAt: !4791)
!4796 = !DILocation(line: 379, column: 36, scope: !3799, inlinedAt: !4795)
!4797 = !DILocation(line: 379, column: 48, scope: !3799, inlinedAt: !4795)
!4798 = !DILocation(line: 384, column: 18, scope: !3799, inlinedAt: !4795)
!4799 = !DILocation(line: 368, column: 29, scope: !3811, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 389, column: 14, scope: !3799, inlinedAt: !4795)
!4801 = !DILocation(line: 368, column: 49, scope: !3811, inlinedAt: !4800)
!4802 = !DILocation(line: 368, column: 62, scope: !3811, inlinedAt: !4800)
!4803 = !DILocation(line: 370, column: 20, scope: !3811, inlinedAt: !4800)
!4804 = !DILocation(line: 181, column: 25, scope: !3728, inlinedAt: !4769)
!4805 = !DILocation(line: 313, column: 33, scope: !3750, inlinedAt: !4757)
!4806 = !DILocation(line: 100, column: 5, scope: !4651)
!4807 = !DILocation(line: 0, scope: !3825, inlinedAt: !4808)
!4808 = distinct !DILocation(line: 104, column: 3, scope: !4644)
!4809 = !DILocation(line: 0, scope: !3830, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !4808)
!4811 = !DILocation(line: 160, column: 37, scope: !3837, inlinedAt: !4810)
!4812 = !DILocation(line: 0, scope: !2191, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !4810)
!4814 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !4813)
!4815 = !DILocation(line: 173, column: 6, scope: !2403, inlinedAt: !4813)
!4816 = !DILocation(line: 173, column: 6, scope: !2191, inlinedAt: !4813)
!4817 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !4818)
!4818 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !4813)
!4819 = !DILocation(line: 110, column: 27, scope: !2407, inlinedAt: !4818)
!4820 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !4818)
!4821 = !DILocation(line: 174, column: 4, scope: !2403, inlinedAt: !4813)
!4822 = !DILocation(line: 104, column: 3, scope: !4644)
!4823 = distinct !{!4823, !4743, !4822}
!4824 = !DILocation(line: 91, column: 38, scope: !4423, inlinedAt: !4766)
!4825 = !DILocation(line: 99, column: 26, scope: !2072, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 168, column: 35, scope: !2065, inlinedAt: !4772)
!4827 = !DILocation(line: 99, column: 43, scope: !2072, inlinedAt: !4826)
!4828 = !DILocation(line: 102, column: 4, scope: !2335, inlinedAt: !4826)
!4829 = !DILocation(line: 104, column: 27, scope: !2072, inlinedAt: !4826)
!4830 = !DILocation(line: 104, column: 9, scope: !2072, inlinedAt: !4826)
!4831 = !DILocation(line: 182, column: 26, scope: !3728, inlinedAt: !4769)
!4832 = !DILocation(line: 183, column: 59, scope: !3728, inlinedAt: !4769)
!4833 = !DILocation(line: 183, column: 34, scope: !3728, inlinedAt: !4769)
!4834 = !DILocation(line: 372, column: 6, scope: !3843, inlinedAt: !4800)
!4835 = !DILocation(line: 334, column: 7, scope: !3910, inlinedAt: !4745)
!4836 = !DILocation(line: 105, column: 1, scope: !4644)
!4837 = !DILocation(line: 0, scope: !3825, inlinedAt: !4838)
!4838 = distinct !DILocation(line: 105, column: 1, scope: !4644)
!4839 = !DILocation(line: 0, scope: !3830, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !4838)
!4841 = !DILocation(line: 0, scope: !2191, inlinedAt: !4842)
!4842 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !4840)
!4843 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !4842)
!4844 = !DILocation(line: 173, column: 6, scope: !2403, inlinedAt: !4842)
!4845 = !DILocation(line: 173, column: 6, scope: !2191, inlinedAt: !4842)
!4846 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !4842)
!4848 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !4847)
!4849 = !DILocation(line: 174, column: 4, scope: !2403, inlinedAt: !4842)
!4850 = distinct !DISubprogram(name: "insert", linkageName: "_Z6insertRSt6vectorIlSaIlEE", scope: !3, file: !3, line: 107, type: !4851, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4853)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{null, !4142}
!4853 = !{!4854, !4855, !4856, !4858, !4861}
!4854 = !DILocalVariable(name: "a", arg: 1, scope: !4850, file: !3, line: 107, type: !4142)
!4855 = !DILocalVariable(name: "r", scope: !4850, file: !3, line: 108, type: !385)
!4856 = !DILocalVariable(name: "i", scope: !4857, file: !3, line: 109, type: !385)
!4857 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 109, column: 3)
!4858 = !DILocalVariable(name: "x", scope: !4859, file: !3, line: 110, type: !385)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 109, column: 31)
!4860 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 109, column: 3)
!4861 = !DILocalVariable(name: "j", scope: !4859, file: !3, line: 111, type: !385)
!4862 = !DILocation(line: 107, column: 17, scope: !4850)
!4863 = !DILocation(line: 0, scope: !2040, inlinedAt: !4864)
!4864 = distinct !DILocation(line: 108, column: 13, scope: !4850)
!4865 = !DILocation(line: 646, column: 40, scope: !2040, inlinedAt: !4864)
!4866 = !DILocation(line: 646, column: 66, scope: !2040, inlinedAt: !4864)
!4867 = !DILocation(line: 646, column: 50, scope: !2040, inlinedAt: !4864)
!4868 = !DILocation(line: 108, column: 20, scope: !4850)
!4869 = !DILocation(line: 108, column: 11, scope: !4850)
!4870 = !DILocation(line: 108, column: 7, scope: !4850)
!4871 = !DILocation(line: 109, column: 12, scope: !4857)
!4872 = !DILocation(line: 109, column: 21, scope: !4860)
!4873 = !DILocation(line: 109, column: 3, scope: !4857)
!4874 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4875)
!4875 = distinct !DILocation(line: 110, column: 13, scope: !4859)
!4876 = !DILocation(line: 118, column: 1, scope: !4850)
!4877 = !DILocation(line: 0, scope: !4155, inlinedAt: !4875)
!4878 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4875)
!4879 = !DILocation(line: 110, column: 13, scope: !4859)
!4880 = !DILocation(line: 112, column: 29, scope: !4859)
!4881 = !DILocation(line: 0, scope: !4155, inlinedAt: !4882)
!4882 = distinct !DILocation(line: 112, column: 22, scope: !4859)
!4883 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4882)
!4884 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4882)
!4885 = !DILocation(line: 112, column: 22, scope: !4859)
!4886 = !DILocation(line: 112, column: 27, scope: !4859)
!4887 = !DILocation(line: 112, column: 5, scope: !4859)
!4888 = !DILocation(line: 0, scope: !4155, inlinedAt: !4889)
!4889 = distinct !DILocation(line: 113, column: 16, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 112, column: 32)
!4891 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4889)
!4892 = !DILocation(line: 0, scope: !4155, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 113, column: 7, scope: !4890)
!4894 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4893)
!4895 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4893)
!4896 = !DILocation(line: 113, column: 14, scope: !4890)
!4897 = !DILocation(line: 112, column: 14, scope: !4859)
!4898 = !DILocation(line: 112, column: 19, scope: !4859)
!4899 = distinct !{!4899, !4887, !4900}
!4900 = !DILocation(line: 115, column: 5, scope: !4859)
!4901 = !DILocation(line: 0, scope: !4155, inlinedAt: !4902)
!4902 = distinct !DILocation(line: 116, column: 5, scope: !4859)
!4903 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !4902)
!4904 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !4902)
!4905 = !DILocation(line: 116, column: 12, scope: !4859)
!4906 = !DILocation(line: 109, column: 27, scope: !4860)
!4907 = distinct !{!4907, !4873, !4908}
!4908 = !DILocation(line: 117, column: 3, scope: !4857)
!4909 = distinct !DISubprogram(name: "BM_insert", linkageName: "_Z9BM_insertRN9benchmark5StateE", scope: !3, file: !3, line: 120, type: !2436, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4910)
!4910 = !{!4911, !4912, !4913, !4914, !4915, !4917}
!4911 = !DILocalVariable(name: "state", arg: 1, scope: !4909, file: !3, line: 120, type: !2438)
!4912 = !DILocalVariable(name: "nums", scope: !4909, file: !3, line: 121, type: !402)
!4913 = !DILocalVariable(name: "g", scope: !4909, file: !3, line: 122, type: !3549)
!4914 = !DILocalVariable(name: "r", scope: !4909, file: !3, line: 124, type: !385)
!4915 = !DILocalVariable(name: "v", scope: !4916, file: !3, line: 126, type: !402)
!4916 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 125, column: 31)
!4917 = !DILocalVariable(name: "i", scope: !4918, file: !3, line: 128, type: !385)
!4918 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 128, column: 5)
!4919 = !DILocation(line: 120, column: 34, scope: !4909)
!4920 = !DILocation(line: 121, column: 3, scope: !4909)
!4921 = !DILocation(line: 0, scope: !3555, inlinedAt: !4922)
!4922 = distinct !DILocation(line: 121, column: 27, scope: !4909)
!4923 = !DILocation(line: 447, column: 25, scope: !3555, inlinedAt: !4922)
!4924 = !DILocation(line: 0, scope: !3563, inlinedAt: !4925)
!4925 = distinct !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !4922)
!4926 = !DILocation(line: 785, column: 28, scope: !3563, inlinedAt: !4925)
!4927 = !DILocation(line: 786, column: 32, scope: !3563, inlinedAt: !4925)
!4928 = !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !4922)
!4929 = !DILocation(line: 121, column: 8, scope: !4909)
!4930 = !DILocation(line: 121, column: 15, scope: !4909)
!4931 = !DILocation(line: 122, column: 3, scope: !4909)
!4932 = !DILocation(line: 122, column: 20, scope: !4909)
!4933 = !DILocation(line: 0, scope: !3585, inlinedAt: !4934)
!4934 = distinct !DILocation(line: 123, column: 21, scope: !4909)
!4935 = !DILocation(line: 0, scope: !3590, inlinedAt: !4936)
!4936 = distinct !DILocation(line: 539, column: 16, scope: !3585, inlinedAt: !4934)
!4937 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !4936)
!4938 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !4936)
!4939 = !DILocation(line: 0, scope: !3599, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 123, column: 35, scope: !4909)
!4941 = !DILocation(line: 557, column: 39, scope: !3599, inlinedAt: !4940)
!4942 = !DILocation(line: 0, scope: !3590, inlinedAt: !4943)
!4943 = distinct !DILocation(line: 557, column: 16, scope: !3599, inlinedAt: !4940)
!4944 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !4943)
!4945 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !4943)
!4946 = !DILocation(line: 4368, column: 38, scope: !3609, inlinedAt: !4947)
!4947 = distinct !DILocation(line: 123, column: 3, scope: !4909)
!4948 = !DILocation(line: 4367, column: 35, scope: !3609, inlinedAt: !4947)
!4949 = !DILocation(line: 4367, column: 66, scope: !3609, inlinedAt: !4947)
!4950 = !DILocation(line: 811, column: 64, scope: !3626, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 4375, column: 19, scope: !3634, inlinedAt: !4947)
!4952 = !DILocation(line: 812, column: 57, scope: !3626, inlinedAt: !4951)
!4953 = !DILocation(line: 813, column: 27, scope: !3626, inlinedAt: !4951)
!4954 = !DILocation(line: 4375, column: 11, scope: !3609, inlinedAt: !4947)
!4955 = !DILocation(line: 4384, column: 7, scope: !3609, inlinedAt: !4947)
!4956 = !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !4947)
!4957 = !DILocation(line: 0, scope: !3641, inlinedAt: !4958)
!4958 = distinct !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !4947)
!4959 = !DILocation(line: 1709, column: 41, scope: !3641, inlinedAt: !4958)
!4960 = !DILocation(line: 1710, column: 16, scope: !3641, inlinedAt: !4958)
!4961 = !DILocation(line: 0, scope: !3650, inlinedAt: !4962)
!4962 = distinct !DILocation(line: 1711, column: 9, scope: !3641, inlinedAt: !4958)
!4963 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !4962)
!4964 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !4962)
!4965 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !4962)
!4966 = !DILocation(line: 0, scope: !3661, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 4386, column: 48, scope: !3620, inlinedAt: !4947)
!4968 = !DILocation(line: 4386, column: 34, scope: !3620, inlinedAt: !4947)
!4969 = !DILocation(line: 823, column: 64, scope: !3669, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 4386, column: 57, scope: !3674, inlinedAt: !4947)
!4971 = !DILocation(line: 824, column: 57, scope: !3669, inlinedAt: !4970)
!4972 = !DILocation(line: 825, column: 27, scope: !3669, inlinedAt: !4970)
!4973 = !DILocation(line: 4386, column: 7, scope: !3620, inlinedAt: !4947)
!4974 = !DILocation(line: 4388, column: 5, scope: !3609, inlinedAt: !4947)
!4975 = !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !4947)
!4976 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !4977)
!4977 = distinct !DILocation(line: 4387, column: 57, scope: !3674, inlinedAt: !4947)
!4978 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !4977)
!4979 = !DILocation(line: 898, column: 27, scope: !3846, inlinedAt: !4977)
!4980 = !DILocation(line: 0, scope: !3650, inlinedAt: !4981)
!4981 = distinct !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !4947)
!4982 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !4981)
!4983 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !4981)
!4984 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !4981)
!4985 = !DILocation(line: 1682, column: 15, scope: !3650, inlinedAt: !4981)
!4986 = !DILocation(line: 4387, column: 32, scope: !3674, inlinedAt: !4947)
!4987 = !DILocation(line: 0, scope: !3661, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 4387, column: 30, scope: !3674, inlinedAt: !4947)
!4989 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !4988)
!4990 = !DILocation(line: 336, column: 22, scope: !3869, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !4947)
!4992 = !DILocation(line: 336, column: 31, scope: !3869, inlinedAt: !4991)
!4993 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !4994)
!4994 = distinct !DILocation(line: 147, column: 7, scope: !3869, inlinedAt: !4991)
!4995 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !4994)
!4996 = !DILocation(line: 175, column: 19, scope: !3881, inlinedAt: !4994)
!4997 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !4994)
!4998 = !DILocation(line: 176, column: 13, scope: !3881, inlinedAt: !4994)
!4999 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !4994)
!5000 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !4994)
!5001 = !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !4947)
!5002 = !DILocation(line: 0, scope: !2040, inlinedAt: !5003)
!5003 = distinct !DILocation(line: 124, column: 16, scope: !4909)
!5004 = !DILocation(line: 646, column: 50, scope: !2040, inlinedAt: !5003)
!5005 = !DILocation(line: 124, column: 23, scope: !4909)
!5006 = !DILocation(line: 124, column: 11, scope: !4909)
!5007 = !DILocation(line: 124, column: 7, scope: !4909)
!5008 = !DILocation(line: 125, column: 3, scope: !4909)
!5009 = !DILocation(line: 329, column: 9, scope: !3680, inlinedAt: !5010)
!5010 = distinct !DILocation(line: 125, column: 16, scope: !4909)
!5011 = !DILocation(line: 0, scope: !3681, inlinedAt: !5010)
!5012 = !DILocation(line: 329, column: 9, scope: !3681, inlinedAt: !5010)
!5013 = !DILocation(line: 330, column: 7, scope: !3702, inlinedAt: !5010)
!5014 = !DILocation(line: 331, column: 5, scope: !3702, inlinedAt: !5010)
!5015 = !DILocation(line: 332, column: 39, scope: !3681, inlinedAt: !5010)
!5016 = !DILocation(line: 332, column: 44, scope: !3681, inlinedAt: !5010)
!5017 = !DILocation(line: 332, column: 42, scope: !3681, inlinedAt: !5010)
!5018 = !DILocation(line: 333, column: 9, scope: !3681, inlinedAt: !5010)
!5019 = !DILocation(line: 126, column: 10, scope: !4916)
!5020 = !DILocation(line: 0, scope: !3712, inlinedAt: !5021)
!5021 = distinct !DILocation(line: 126, column: 14, scope: !4916)
!5022 = !DILocation(line: 310, column: 28, scope: !3712, inlinedAt: !5021)
!5023 = !DILocation(line: 0, scope: !2040, inlinedAt: !5024)
!5024 = distinct !DILocation(line: 311, column: 19, scope: !3712, inlinedAt: !5021)
!5025 = !DILocation(line: 0, scope: !3719, inlinedAt: !5026)
!5026 = distinct !DILocation(line: 311, column: 9, scope: !3712, inlinedAt: !5021)
!5027 = !DILocation(line: 134, column: 27, scope: !3719, inlinedAt: !5026)
!5028 = !DILocation(line: 134, column: 54, scope: !3719, inlinedAt: !5026)
!5029 = !DILocation(line: 0, scope: !3728, inlinedAt: !5030)
!5030 = distinct !DILocation(line: 136, column: 9, scope: !3733, inlinedAt: !5026)
!5031 = !DILocation(line: 179, column: 32, scope: !3728, inlinedAt: !5030)
!5032 = !DILocation(line: 0, scope: !2065, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 181, column: 33, scope: !3728, inlinedAt: !5030)
!5034 = !DILocation(line: 167, column: 26, scope: !2065, inlinedAt: !5033)
!5035 = !DILocation(line: 256, column: 67, scope: !3739, inlinedAt: !5036)
!5036 = distinct !DILocation(line: 314, column: 4, scope: !3750, inlinedAt: !5021)
!5037 = !DILocation(line: 256, column: 43, scope: !3739, inlinedAt: !5036)
!5038 = !DILocation(line: 257, column: 24, scope: !3739, inlinedAt: !5036)
!5039 = !DILocation(line: 107, column: 63, scope: !3754, inlinedAt: !5040)
!5040 = distinct !DILocation(line: 258, column: 14, scope: !3739, inlinedAt: !5036)
!5041 = !DILocation(line: 107, column: 39, scope: !3754, inlinedAt: !5040)
!5042 = !DILocation(line: 108, column: 27, scope: !3754, inlinedAt: !5040)
!5043 = !DILocation(line: 91, column: 62, scope: !3766, inlinedAt: !5044)
!5044 = distinct !DILocation(line: 115, column: 14, scope: !3754, inlinedAt: !5040)
!5045 = !DILocation(line: 91, column: 38, scope: !3766, inlinedAt: !5044)
!5046 = !DILocation(line: 92, column: 26, scope: !3766, inlinedAt: !5044)
!5047 = !DILocation(line: 213, column: 24, scope: !3776, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 93, column: 18, scope: !3766, inlinedAt: !5044)
!5049 = !DILocation(line: 213, column: 16, scope: !3776, inlinedAt: !5048)
!5050 = !DILocation(line: 213, column: 32, scope: !3776, inlinedAt: !5048)
!5051 = !DILocation(line: 424, column: 37, scope: !3787, inlinedAt: !5052)
!5052 = distinct !DILocation(line: 458, column: 15, scope: !3776, inlinedAt: !5048)
!5053 = !DILocation(line: 424, column: 24, scope: !3787, inlinedAt: !5052)
!5054 = !DILocation(line: 424, column: 49, scope: !3787, inlinedAt: !5052)
!5055 = !DILocation(line: 379, column: 36, scope: !3799, inlinedAt: !5056)
!5056 = distinct !DILocation(line: 426, column: 18, scope: !3787, inlinedAt: !5052)
!5057 = !DILocation(line: 379, column: 48, scope: !3799, inlinedAt: !5056)
!5058 = !DILocation(line: 384, column: 18, scope: !3799, inlinedAt: !5056)
!5059 = !DILocation(line: 368, column: 49, scope: !3811, inlinedAt: !5060)
!5060 = distinct !DILocation(line: 389, column: 14, scope: !3799, inlinedAt: !5056)
!5061 = !DILocation(line: 368, column: 62, scope: !3811, inlinedAt: !5060)
!5062 = !DILocation(line: 371, column: 8, scope: !3811, inlinedAt: !5060)
!5063 = !DILocation(line: 372, column: 6, scope: !3843, inlinedAt: !5060)
!5064 = !DILocation(line: 107, column: 17, scope: !4850, inlinedAt: !5065)
!5065 = distinct !DILocation(line: 127, column: 5, scope: !4916)
!5066 = !DILocation(line: 0, scope: !2040, inlinedAt: !5067)
!5067 = distinct !DILocation(line: 108, column: 13, scope: !4850, inlinedAt: !5065)
!5068 = !DILocation(line: 108, column: 7, scope: !4850, inlinedAt: !5065)
!5069 = !DILocation(line: 109, column: 12, scope: !4857, inlinedAt: !5065)
!5070 = !DILocation(line: 109, column: 3, scope: !4857, inlinedAt: !5065)
!5071 = distinct !{!5071, !5008, !5072}
!5072 = !DILocation(line: 131, column: 3, scope: !4909)
!5073 = !DILocation(line: 116, column: 12, scope: !4859, inlinedAt: !5065)
!5074 = !DILocation(line: 0, scope: !4155, inlinedAt: !5075)
!5075 = distinct !DILocation(line: 110, column: 13, scope: !4859, inlinedAt: !5065)
!5076 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5075)
!5077 = !DILocation(line: 0, scope: !4155, inlinedAt: !5078)
!5078 = distinct !DILocation(line: 112, column: 22, scope: !4859, inlinedAt: !5065)
!5079 = !DILocation(line: 99, column: 26, scope: !2072, inlinedAt: !5080)
!5080 = distinct !DILocation(line: 168, column: 35, scope: !2065, inlinedAt: !5033)
!5081 = !DILocation(line: 99, column: 43, scope: !2072, inlinedAt: !5080)
!5082 = !DILocation(line: 102, column: 4, scope: !2335, inlinedAt: !5080)
!5083 = !DILocation(line: 104, column: 27, scope: !2072, inlinedAt: !5080)
!5084 = !DILocation(line: 104, column: 9, scope: !2072, inlinedAt: !5080)
!5085 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !5075)
!5086 = !DILocation(line: 110, column: 13, scope: !4859, inlinedAt: !5065)
!5087 = !DILocation(line: 112, column: 29, scope: !4859, inlinedAt: !5065)
!5088 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5078)
!5089 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !5078)
!5090 = !DILocation(line: 112, column: 22, scope: !4859, inlinedAt: !5065)
!5091 = !DILocation(line: 112, column: 27, scope: !4859, inlinedAt: !5065)
!5092 = !DILocation(line: 112, column: 5, scope: !4859, inlinedAt: !5065)
!5093 = !DILocation(line: 0, scope: !4155, inlinedAt: !5094)
!5094 = distinct !DILocation(line: 113, column: 16, scope: !4890, inlinedAt: !5065)
!5095 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5094)
!5096 = !DILocation(line: 0, scope: !4155, inlinedAt: !5097)
!5097 = distinct !DILocation(line: 113, column: 7, scope: !4890, inlinedAt: !5065)
!5098 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5097)
!5099 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !5097)
!5100 = !DILocation(line: 113, column: 14, scope: !4890, inlinedAt: !5065)
!5101 = !DILocation(line: 112, column: 14, scope: !4859, inlinedAt: !5065)
!5102 = !DILocation(line: 112, column: 19, scope: !4859, inlinedAt: !5065)
!5103 = !DILocation(line: 0, scope: !4155, inlinedAt: !5104)
!5104 = distinct !DILocation(line: 116, column: 5, scope: !4859, inlinedAt: !5065)
!5105 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5104)
!5106 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !5104)
!5107 = !DILocation(line: 109, column: 27, scope: !4860, inlinedAt: !5065)
!5108 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !5109)
!5109 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !5110)
!5110 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !5111)
!5111 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !5112)
!5112 = distinct !DILocation(line: 131, column: 3, scope: !4909)
!5113 = !DILocation(line: 0, scope: !3825, inlinedAt: !5112)
!5114 = !DILocation(line: 0, scope: !3830, inlinedAt: !5111)
!5115 = !DILocation(line: 0, scope: !2191, inlinedAt: !5110)
!5116 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !5110)
!5117 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !5109)
!5118 = !DILocation(line: 334, column: 7, scope: !3910, inlinedAt: !5010)
!5119 = !DILocation(line: 132, column: 1, scope: !4909)
!5120 = !DILocation(line: 0, scope: !3825, inlinedAt: !5121)
!5121 = distinct !DILocation(line: 132, column: 1, scope: !4909)
!5122 = !DILocation(line: 0, scope: !3830, inlinedAt: !5123)
!5123 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !5121)
!5124 = !DILocation(line: 0, scope: !2191, inlinedAt: !5125)
!5125 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !5123)
!5126 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !5125)
!5127 = !DILocation(line: 173, column: 6, scope: !2403, inlinedAt: !5125)
!5128 = !DILocation(line: 173, column: 6, scope: !2191, inlinedAt: !5125)
!5129 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !5130)
!5130 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !5125)
!5131 = !DILocation(line: 110, column: 27, scope: !2407, inlinedAt: !5130)
!5132 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !5130)
!5133 = !DILocation(line: 174, column: 4, scope: !2403, inlinedAt: !5125)
!5134 = distinct !DISubprogram(name: "bubble", linkageName: "_Z6bubbleRSt6vectorIlSaIlEE", scope: !3, file: !3, line: 134, type: !4851, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5135)
!5135 = !{!5136, !5137, !5138, !5140}
!5136 = !DILocalVariable(name: "a", arg: 1, scope: !5134, file: !3, line: 134, type: !4142)
!5137 = !DILocalVariable(name: "n", scope: !5134, file: !3, line: 154, type: !385)
!5138 = !DILocalVariable(name: "new_n", scope: !5139, file: !3, line: 157, type: !385)
!5139 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 155, column: 6)
!5140 = !DILocalVariable(name: "i", scope: !5141, file: !3, line: 158, type: !385)
!5141 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 158, column: 5)
!5142 = !DILocation(line: 134, column: 17, scope: !5134)
!5143 = !DILocation(line: 0, scope: !2040, inlinedAt: !5144)
!5144 = distinct !DILocation(line: 154, column: 13, scope: !5134)
!5145 = !DILocation(line: 646, column: 40, scope: !2040, inlinedAt: !5144)
!5146 = !DILocation(line: 646, column: 66, scope: !2040, inlinedAt: !5144)
!5147 = !DILocation(line: 646, column: 50, scope: !2040, inlinedAt: !5144)
!5148 = !DILocation(line: 154, column: 11, scope: !5134)
!5149 = !DILocation(line: 154, column: 7, scope: !5134)
!5150 = !DILocation(line: 155, column: 3, scope: !5134)
!5151 = distinct !{!5151, !5150, !5152}
!5152 = !DILocation(line: 165, column: 17, scope: !5134)
!5153 = !DILocation(line: 157, column: 9, scope: !5139)
!5154 = !DILocation(line: 158, column: 14, scope: !5141)
!5155 = !DILocation(line: 158, column: 23, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 158, column: 5)
!5157 = !DILocation(line: 158, column: 5, scope: !5141)
!5158 = !DILocation(line: 159, column: 14, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 159, column: 11)
!5160 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 158, column: 33)
!5161 = !DILocation(line: 165, column: 14, scope: !5134)
!5162 = !DILocation(line: 0, scope: !4155, inlinedAt: !5163)
!5163 = distinct !DILocation(line: 159, column: 11, scope: !5159)
!5164 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5163)
!5165 = !DILocation(line: 0, scope: !4155, inlinedAt: !5166)
!5166 = distinct !DILocation(line: 159, column: 20, scope: !5159)
!5167 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5166)
!5168 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !5166)
!5169 = !DILocation(line: 159, column: 20, scope: !5159)
!5170 = !DILocation(line: 159, column: 18, scope: !5159)
!5171 = !DILocation(line: 159, column: 11, scope: !5160)
!5172 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !5163)
!5173 = !DILocation(line: 0, scope: !4155, inlinedAt: !5174)
!5174 = distinct !DILocation(line: 160, column: 19, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 159, column: 26)
!5176 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5174)
!5177 = !DILocation(line: 0, scope: !4155, inlinedAt: !5178)
!5178 = distinct !DILocation(line: 160, column: 27, scope: !5175)
!5179 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5178)
!5180 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !5181)
!5181 = distinct !DILocation(line: 160, column: 9, scope: !5175)
!5182 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !5181)
!5183 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !5181)
!5184 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !5181)
!5185 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !5181)
!5186 = !DILocation(line: 162, column: 7, scope: !5175)
!5187 = !DILocation(line: 165, column: 3, scope: !5139)
!5188 = !DILocation(line: 159, column: 11, scope: !5159)
!5189 = !DILocation(line: 158, column: 29, scope: !5156)
!5190 = !DILocation(line: 167, column: 1, scope: !5134)
!5191 = distinct !{!5191, !5157, !5192}
!5192 = !DILocation(line: 163, column: 5, scope: !5141)
!5193 = distinct !DISubprogram(name: "BM_bubble", linkageName: "_Z9BM_bubbleRN9benchmark5StateE", scope: !3, file: !3, line: 169, type: !2436, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5194)
!5194 = !{!5195, !5196, !5197, !5198, !5199, !5201}
!5195 = !DILocalVariable(name: "state", arg: 1, scope: !5193, file: !3, line: 169, type: !2438)
!5196 = !DILocalVariable(name: "nums", scope: !5193, file: !3, line: 170, type: !402)
!5197 = !DILocalVariable(name: "g", scope: !5193, file: !3, line: 171, type: !3549)
!5198 = !DILocalVariable(name: "r", scope: !5193, file: !3, line: 173, type: !385)
!5199 = !DILocalVariable(name: "v", scope: !5200, file: !3, line: 175, type: !402)
!5200 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 174, column: 31)
!5201 = !DILocalVariable(name: "i", scope: !5202, file: !3, line: 177, type: !385)
!5202 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 177, column: 5)
!5203 = !DILocation(line: 169, column: 34, scope: !5193)
!5204 = !DILocation(line: 170, column: 3, scope: !5193)
!5205 = !DILocation(line: 0, scope: !3555, inlinedAt: !5206)
!5206 = distinct !DILocation(line: 170, column: 27, scope: !5193)
!5207 = !DILocation(line: 447, column: 25, scope: !3555, inlinedAt: !5206)
!5208 = !DILocation(line: 0, scope: !3563, inlinedAt: !5209)
!5209 = distinct !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !5206)
!5210 = !DILocation(line: 785, column: 28, scope: !3563, inlinedAt: !5209)
!5211 = !DILocation(line: 786, column: 32, scope: !3563, inlinedAt: !5209)
!5212 = !DILocation(line: 449, column: 12, scope: !3555, inlinedAt: !5206)
!5213 = !DILocation(line: 170, column: 8, scope: !5193)
!5214 = !DILocation(line: 170, column: 15, scope: !5193)
!5215 = !DILocation(line: 171, column: 3, scope: !5193)
!5216 = !DILocation(line: 171, column: 20, scope: !5193)
!5217 = !DILocation(line: 0, scope: !3585, inlinedAt: !5218)
!5218 = distinct !DILocation(line: 172, column: 21, scope: !5193)
!5219 = !DILocation(line: 0, scope: !3590, inlinedAt: !5220)
!5220 = distinct !DILocation(line: 539, column: 16, scope: !3585, inlinedAt: !5218)
!5221 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !5220)
!5222 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !5220)
!5223 = !DILocation(line: 0, scope: !3599, inlinedAt: !5224)
!5224 = distinct !DILocation(line: 172, column: 35, scope: !5193)
!5225 = !DILocation(line: 557, column: 39, scope: !3599, inlinedAt: !5224)
!5226 = !DILocation(line: 0, scope: !3590, inlinedAt: !5227)
!5227 = distinct !DILocation(line: 557, column: 16, scope: !3599, inlinedAt: !5224)
!5228 = !DILocation(line: 726, column: 42, scope: !3590, inlinedAt: !5227)
!5229 = !DILocation(line: 726, column: 60, scope: !3590, inlinedAt: !5227)
!5230 = !DILocation(line: 4368, column: 38, scope: !3609, inlinedAt: !5231)
!5231 = distinct !DILocation(line: 172, column: 3, scope: !5193)
!5232 = !DILocation(line: 4367, column: 35, scope: !3609, inlinedAt: !5231)
!5233 = !DILocation(line: 4367, column: 66, scope: !3609, inlinedAt: !5231)
!5234 = !DILocation(line: 811, column: 64, scope: !3626, inlinedAt: !5235)
!5235 = distinct !DILocation(line: 4375, column: 19, scope: !3634, inlinedAt: !5231)
!5236 = !DILocation(line: 812, column: 57, scope: !3626, inlinedAt: !5235)
!5237 = !DILocation(line: 813, column: 27, scope: !3626, inlinedAt: !5235)
!5238 = !DILocation(line: 4375, column: 11, scope: !3609, inlinedAt: !5231)
!5239 = !DILocation(line: 4384, column: 7, scope: !3609, inlinedAt: !5231)
!5240 = !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !5231)
!5241 = !DILocation(line: 0, scope: !3641, inlinedAt: !5242)
!5242 = distinct !DILocation(line: 4384, column: 20, scope: !3609, inlinedAt: !5231)
!5243 = !DILocation(line: 1709, column: 41, scope: !3641, inlinedAt: !5242)
!5244 = !DILocation(line: 1710, column: 16, scope: !3641, inlinedAt: !5242)
!5245 = !DILocation(line: 0, scope: !3650, inlinedAt: !5246)
!5246 = distinct !DILocation(line: 1711, column: 9, scope: !3641, inlinedAt: !5242)
!5247 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !5246)
!5248 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !5246)
!5249 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !5246)
!5250 = !DILocation(line: 0, scope: !3661, inlinedAt: !5251)
!5251 = distinct !DILocation(line: 4386, column: 48, scope: !3620, inlinedAt: !5231)
!5252 = !DILocation(line: 4386, column: 34, scope: !3620, inlinedAt: !5231)
!5253 = !DILocation(line: 823, column: 64, scope: !3669, inlinedAt: !5254)
!5254 = distinct !DILocation(line: 4386, column: 57, scope: !3674, inlinedAt: !5231)
!5255 = !DILocation(line: 824, column: 57, scope: !3669, inlinedAt: !5254)
!5256 = !DILocation(line: 825, column: 27, scope: !3669, inlinedAt: !5254)
!5257 = !DILocation(line: 4386, column: 7, scope: !3620, inlinedAt: !5231)
!5258 = !DILocation(line: 4388, column: 5, scope: !3609, inlinedAt: !5231)
!5259 = !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !5231)
!5260 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !5261)
!5261 = distinct !DILocation(line: 4387, column: 57, scope: !3674, inlinedAt: !5231)
!5262 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !5261)
!5263 = !DILocation(line: 898, column: 27, scope: !3846, inlinedAt: !5261)
!5264 = !DILocation(line: 0, scope: !3650, inlinedAt: !5265)
!5265 = distinct !DILocation(line: 4387, column: 41, scope: !3674, inlinedAt: !5231)
!5266 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !5265)
!5267 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !5265)
!5268 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !5265)
!5269 = !DILocation(line: 1682, column: 15, scope: !3650, inlinedAt: !5265)
!5270 = !DILocation(line: 4387, column: 32, scope: !3674, inlinedAt: !5231)
!5271 = !DILocation(line: 0, scope: !3661, inlinedAt: !5272)
!5272 = distinct !DILocation(line: 4387, column: 30, scope: !3674, inlinedAt: !5231)
!5273 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5272)
!5274 = !DILocation(line: 336, column: 22, scope: !3869, inlinedAt: !5275)
!5275 = distinct !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !5231)
!5276 = !DILocation(line: 336, column: 31, scope: !3869, inlinedAt: !5275)
!5277 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !5278)
!5278 = distinct !DILocation(line: 147, column: 7, scope: !3869, inlinedAt: !5275)
!5279 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !5278)
!5280 = !DILocation(line: 175, column: 19, scope: !3881, inlinedAt: !5278)
!5281 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !5278)
!5282 = !DILocation(line: 176, column: 13, scope: !3881, inlinedAt: !5278)
!5283 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !5278)
!5284 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !5278)
!5285 = !DILocation(line: 4387, column: 2, scope: !3674, inlinedAt: !5231)
!5286 = !DILocation(line: 0, scope: !2040, inlinedAt: !5287)
!5287 = distinct !DILocation(line: 173, column: 16, scope: !5193)
!5288 = !DILocation(line: 646, column: 50, scope: !2040, inlinedAt: !5287)
!5289 = !DILocation(line: 174, column: 3, scope: !5193)
!5290 = !DILocation(line: 329, column: 9, scope: !3680, inlinedAt: !5291)
!5291 = distinct !DILocation(line: 174, column: 16, scope: !5193)
!5292 = !DILocation(line: 0, scope: !3681, inlinedAt: !5291)
!5293 = !DILocation(line: 329, column: 9, scope: !3681, inlinedAt: !5291)
!5294 = !DILocation(line: 330, column: 7, scope: !3702, inlinedAt: !5291)
!5295 = !DILocation(line: 331, column: 5, scope: !3702, inlinedAt: !5291)
!5296 = !DILocation(line: 332, column: 39, scope: !3681, inlinedAt: !5291)
!5297 = !DILocation(line: 332, column: 44, scope: !3681, inlinedAt: !5291)
!5298 = !DILocation(line: 332, column: 42, scope: !3681, inlinedAt: !5291)
!5299 = !DILocation(line: 333, column: 9, scope: !3681, inlinedAt: !5291)
!5300 = !DILocation(line: 175, column: 10, scope: !5200)
!5301 = !DILocation(line: 0, scope: !3712, inlinedAt: !5302)
!5302 = distinct !DILocation(line: 175, column: 14, scope: !5200)
!5303 = !DILocation(line: 310, column: 28, scope: !3712, inlinedAt: !5302)
!5304 = !DILocation(line: 0, scope: !2040, inlinedAt: !5305)
!5305 = distinct !DILocation(line: 311, column: 19, scope: !3712, inlinedAt: !5302)
!5306 = !DILocation(line: 0, scope: !3719, inlinedAt: !5307)
!5307 = distinct !DILocation(line: 311, column: 9, scope: !3712, inlinedAt: !5302)
!5308 = !DILocation(line: 134, column: 27, scope: !3719, inlinedAt: !5307)
!5309 = !DILocation(line: 134, column: 54, scope: !3719, inlinedAt: !5307)
!5310 = !DILocation(line: 0, scope: !3728, inlinedAt: !5311)
!5311 = distinct !DILocation(line: 136, column: 9, scope: !3733, inlinedAt: !5307)
!5312 = !DILocation(line: 179, column: 32, scope: !3728, inlinedAt: !5311)
!5313 = !DILocation(line: 0, scope: !2065, inlinedAt: !5314)
!5314 = distinct !DILocation(line: 181, column: 33, scope: !3728, inlinedAt: !5311)
!5315 = !DILocation(line: 167, column: 26, scope: !2065, inlinedAt: !5314)
!5316 = !DILocation(line: 256, column: 67, scope: !3739, inlinedAt: !5317)
!5317 = distinct !DILocation(line: 314, column: 4, scope: !3750, inlinedAt: !5302)
!5318 = !DILocation(line: 256, column: 43, scope: !3739, inlinedAt: !5317)
!5319 = !DILocation(line: 257, column: 24, scope: !3739, inlinedAt: !5317)
!5320 = !DILocation(line: 107, column: 63, scope: !3754, inlinedAt: !5321)
!5321 = distinct !DILocation(line: 258, column: 14, scope: !3739, inlinedAt: !5317)
!5322 = !DILocation(line: 107, column: 39, scope: !3754, inlinedAt: !5321)
!5323 = !DILocation(line: 108, column: 27, scope: !3754, inlinedAt: !5321)
!5324 = !DILocation(line: 91, column: 62, scope: !3766, inlinedAt: !5325)
!5325 = distinct !DILocation(line: 115, column: 14, scope: !3754, inlinedAt: !5321)
!5326 = !DILocation(line: 91, column: 38, scope: !3766, inlinedAt: !5325)
!5327 = !DILocation(line: 92, column: 26, scope: !3766, inlinedAt: !5325)
!5328 = !DILocation(line: 213, column: 24, scope: !3776, inlinedAt: !5329)
!5329 = distinct !DILocation(line: 93, column: 18, scope: !3766, inlinedAt: !5325)
!5330 = !DILocation(line: 213, column: 16, scope: !3776, inlinedAt: !5329)
!5331 = !DILocation(line: 213, column: 32, scope: !3776, inlinedAt: !5329)
!5332 = !DILocation(line: 424, column: 37, scope: !3787, inlinedAt: !5333)
!5333 = distinct !DILocation(line: 458, column: 15, scope: !3776, inlinedAt: !5329)
!5334 = !DILocation(line: 424, column: 24, scope: !3787, inlinedAt: !5333)
!5335 = !DILocation(line: 424, column: 49, scope: !3787, inlinedAt: !5333)
!5336 = !DILocation(line: 379, column: 36, scope: !3799, inlinedAt: !5337)
!5337 = distinct !DILocation(line: 426, column: 18, scope: !3787, inlinedAt: !5333)
!5338 = !DILocation(line: 379, column: 48, scope: !3799, inlinedAt: !5337)
!5339 = !DILocation(line: 384, column: 18, scope: !3799, inlinedAt: !5337)
!5340 = !DILocation(line: 368, column: 49, scope: !3811, inlinedAt: !5341)
!5341 = distinct !DILocation(line: 389, column: 14, scope: !3799, inlinedAt: !5337)
!5342 = !DILocation(line: 368, column: 62, scope: !3811, inlinedAt: !5341)
!5343 = !DILocation(line: 371, column: 8, scope: !3811, inlinedAt: !5341)
!5344 = !DILocation(line: 372, column: 6, scope: !3843, inlinedAt: !5341)
!5345 = !DILocation(line: 154, column: 7, scope: !5134, inlinedAt: !5346)
!5346 = distinct !DILocation(line: 176, column: 5, scope: !5200)
!5347 = !DILocation(line: 157, column: 9, scope: !5139, inlinedAt: !5346)
!5348 = !DILocation(line: 158, column: 14, scope: !5141, inlinedAt: !5346)
!5349 = !DILocation(line: 158, column: 5, scope: !5141, inlinedAt: !5346)
!5350 = distinct !{!5350, !5289, !5351}
!5351 = !DILocation(line: 180, column: 3, scope: !5193)
!5352 = !DILocation(line: 99, column: 26, scope: !2072, inlinedAt: !5353)
!5353 = distinct !DILocation(line: 168, column: 35, scope: !2065, inlinedAt: !5314)
!5354 = !DILocation(line: 99, column: 43, scope: !2072, inlinedAt: !5353)
!5355 = !DILocation(line: 102, column: 4, scope: !2335, inlinedAt: !5353)
!5356 = !DILocation(line: 104, column: 27, scope: !2072, inlinedAt: !5353)
!5357 = !DILocation(line: 104, column: 9, scope: !2072, inlinedAt: !5353)
!5358 = !DILocation(line: 158, column: 23, scope: !5156, inlinedAt: !5346)
!5359 = !DILocation(line: 159, column: 14, scope: !5159, inlinedAt: !5346)
!5360 = !DILocation(line: 165, column: 14, scope: !5134, inlinedAt: !5346)
!5361 = !DILocation(line: 0, scope: !4155, inlinedAt: !5362)
!5362 = distinct !DILocation(line: 159, column: 11, scope: !5159, inlinedAt: !5346)
!5363 = !DILocation(line: 0, scope: !4155, inlinedAt: !5364)
!5364 = distinct !DILocation(line: 159, column: 20, scope: !5159, inlinedAt: !5346)
!5365 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5364)
!5366 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !5364)
!5367 = !DILocation(line: 159, column: 20, scope: !5159, inlinedAt: !5346)
!5368 = !DILocation(line: 159, column: 18, scope: !5159, inlinedAt: !5346)
!5369 = !DILocation(line: 159, column: 11, scope: !5160, inlinedAt: !5346)
!5370 = !DILocation(line: 771, column: 41, scope: !4155, inlinedAt: !5362)
!5371 = !DILocation(line: 0, scope: !4155, inlinedAt: !5372)
!5372 = distinct !DILocation(line: 160, column: 19, scope: !5175, inlinedAt: !5346)
!5373 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5372)
!5374 = !DILocation(line: 0, scope: !4155, inlinedAt: !5375)
!5375 = distinct !DILocation(line: 160, column: 27, scope: !5175, inlinedAt: !5346)
!5376 = !DILocation(line: 770, column: 28, scope: !4155, inlinedAt: !5375)
!5377 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !5378)
!5378 = distinct !DILocation(line: 160, column: 9, scope: !5175, inlinedAt: !5346)
!5379 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !5378)
!5380 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !5378)
!5381 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !5378)
!5382 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !5378)
!5383 = !DILocation(line: 162, column: 7, scope: !5175, inlinedAt: !5346)
!5384 = !DILocation(line: 165, column: 3, scope: !5139, inlinedAt: !5346)
!5385 = !DILocation(line: 159, column: 11, scope: !5159, inlinedAt: !5346)
!5386 = !DILocation(line: 158, column: 29, scope: !5156, inlinedAt: !5346)
!5387 = !DILocation(line: 0, scope: !3825, inlinedAt: !5388)
!5388 = distinct !DILocation(line: 180, column: 3, scope: !5193)
!5389 = !DILocation(line: 0, scope: !3830, inlinedAt: !5390)
!5390 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !5388)
!5391 = !DILocation(line: 0, scope: !2191, inlinedAt: !5392)
!5392 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !5390)
!5393 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !5392)
!5394 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !5395)
!5395 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !5392)
!5396 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !5395)
!5397 = !DILocation(line: 334, column: 7, scope: !3910, inlinedAt: !5291)
!5398 = !DILocation(line: 181, column: 1, scope: !5193)
!5399 = !DILocation(line: 0, scope: !3825, inlinedAt: !5400)
!5400 = distinct !DILocation(line: 181, column: 1, scope: !5193)
!5401 = !DILocation(line: 0, scope: !3830, inlinedAt: !5402)
!5402 = distinct !DILocation(line: 416, column: 33, scope: !3834, inlinedAt: !5400)
!5403 = !DILocation(line: 0, scope: !2191, inlinedAt: !5404)
!5404 = distinct !DILocation(line: 160, column: 9, scope: !3837, inlinedAt: !5402)
!5405 = !DILocation(line: 171, column: 29, scope: !2191, inlinedAt: !5404)
!5406 = !DILocation(line: 173, column: 6, scope: !2403, inlinedAt: !5404)
!5407 = !DILocation(line: 173, column: 6, scope: !2191, inlinedAt: !5404)
!5408 = !DILocation(line: 109, column: 26, scope: !2407, inlinedAt: !5409)
!5409 = distinct !DILocation(line: 174, column: 12, scope: !2403, inlinedAt: !5404)
!5410 = !DILocation(line: 110, column: 27, scope: !2407, inlinedAt: !5409)
!5411 = !DILocation(line: 110, column: 9, scope: !2407, inlinedAt: !5409)
!5412 = !DILocation(line: 174, column: 4, scope: !2403, inlinedAt: !5404)
!5413 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 192, type: !5414, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5416)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!385, !385, !966}
!5416 = !{!5417, !5418}
!5417 = !DILocalVariable(name: "argc", arg: 1, scope: !5413, file: !3, line: 192, type: !385)
!5418 = !DILocalVariable(name: "argv", arg: 2, scope: !5413, file: !3, line: 192, type: !966)
!5419 = !DILocation(line: 192, column: 1, scope: !5413)
!5420 = !DILocation(line: 192, column: 1, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 192, column: 1)
!5422 = !DILocation(line: 0, scope: !710)
!5423 = !DILocation(line: 1774, column: 44, scope: !710)
!5424 = !DILocation(line: 1775, column: 24, scope: !710)
!5425 = !DILocation(line: 888, column: 17, scope: !710)
!5426 = !DILocation(line: 889, column: 17, scope: !710)
!5427 = !DILocation(line: 890, column: 17, scope: !710)
!5428 = !DILocalVariable(name: "this", arg: 1, scope: !5429, type: !5431, flags: DIFlagArtificial | DIFlagObjectPointer)
!5429 = distinct !DISubprogram(name: "b", linkageName: "_ZNKSt24uniform_int_distributionImE10param_type1bEv", scope: !715, file: !712, line: 1692, type: !724, isLocal: false, isDefinition: true, scopeLine: 1693, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !729, variables: !5430)
!5430 = !{!5428}
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!5432 = !DILocation(line: 0, scope: !5429, inlinedAt: !5433)
!5433 = distinct !DILocation(line: 892, column: 23, scope: !710)
!5434 = !DILocation(line: 1693, column: 11, scope: !5429, inlinedAt: !5433)
!5435 = !DILocalVariable(name: "this", arg: 1, scope: !5436, type: !5431, flags: DIFlagArtificial | DIFlagObjectPointer)
!5436 = distinct !DISubprogram(name: "a", linkageName: "_ZNKSt24uniform_int_distributionImE10param_type1aEv", scope: !715, file: !712, line: 1688, type: !724, isLocal: false, isDefinition: true, scopeLine: 1689, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !723, variables: !5437)
!5437 = !{!5435}
!5438 = !DILocation(line: 0, scope: !5436, inlinedAt: !5439)
!5439 = distinct !DILocation(line: 892, column: 47, scope: !710)
!5440 = !DILocation(line: 1689, column: 11, scope: !5436, inlinedAt: !5439)
!5441 = !DILocation(line: 892, column: 28, scope: !710)
!5442 = !DILocation(line: 891, column: 17, scope: !710)
!5443 = !DILocation(line: 896, column: 18, scope: !804)
!5444 = !DILocation(line: 896, column: 6, scope: !710)
!5445 = !DILocation(line: 899, column: 42, scope: !803)
!5446 = !DILocation(line: 899, column: 21, scope: !803)
!5447 = !DILocation(line: 900, column: 45, scope: !803)
!5448 = !DILocation(line: 900, column: 21, scope: !803)
!5449 = !DILocation(line: 901, column: 40, scope: !803)
!5450 = !DILocation(line: 901, column: 21, scope: !803)
!5451 = !DILocation(line: 337, column: 7, scope: !5452, inlinedAt: !5456)
!5452 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNSt26linear_congruential_engineImLm48271ELm0ELm2147483647EEclEv", scope: !758, file: !712, line: 335, type: !781, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !780, variables: !5453)
!5453 = !{!5454}
!5454 = !DILocalVariable(name: "this", arg: 1, scope: !5452, type: !5455, flags: DIFlagArtificial | DIFlagObjectPointer)
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!5456 = distinct !DILocation(line: 903, column: 25, scope: !803)
!5457 = !DILocation(line: 902, column: 6, scope: !803)
!5458 = distinct !{!5458, !5457, !5459}
!5459 = !DILocation(line: 904, column: 28, scope: !803)
!5460 = !DILocation(line: 0, scope: !5452, inlinedAt: !5456)
!5461 = !DILocalVariable(name: "__x", arg: 1, scope: !5462, file: !712, line: 149, type: !136)
!5462 = distinct !DISubprogram(name: "__mod<unsigned long, 2147483647, 48271, 0>", linkageName: "_ZNSt8__detail5__modImLm2147483647ELm48271ELm0EEET_S1_", scope: !5463, file: !712, line: 149, type: !5464, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5466, variables: !5467)
!5463 = !DINamespace(name: "__detail", scope: !7, file: !712, line: 65)
!5464 = !DISubroutineType(types: !5465)
!5465 = !{!136, !136}
!5466 = !{!815, !787, !785, !786}
!5467 = !{!5461}
!5468 = !DILocation(line: 149, column: 17, scope: !5462, inlinedAt: !5469)
!5469 = distinct !DILocation(line: 337, column: 9, scope: !5452, inlinedAt: !5456)
!5470 = !DILocalVariable(name: "__x", arg: 1, scope: !5471, file: !712, line: 138, type: !136)
!5471 = distinct !DISubprogram(name: "__calc", linkageName: "_ZNSt8__detail4_ModImLm2147483647ELm48271ELm0ELb1ELb1EE6__calcEm", scope: !5472, file: !712, line: 138, type: !5464, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5474, variables: !5478)
!5472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Mod<unsigned long, 2147483647, 48271, 0, true, true>", scope: !5463, file: !712, line: 135, size: 8, elements: !5473, templateParams: !5475, identifier: "_ZTSNSt8__detail4_ModImLm2147483647ELm48271ELm0ELb1ELb1EEE")
!5473 = !{!5474}
!5474 = !DISubprogram(name: "__calc", linkageName: "_ZNSt8__detail4_ModImLm2147483647ELm48271ELm0ELb1ELb1EE6__calcEm", scope: !5472, file: !712, line: 138, type: !5464, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true)
!5475 = !{!815, !787, !785, !786, !5476, !5477}
!5476 = !DITemplateValueParameter(name: "__big_enough", type: !198, value: i8 1)
!5477 = !DITemplateValueParameter(name: "__schrage_ok", type: !198, value: i8 1)
!5478 = !{!5470, !5479}
!5479 = !DILocalVariable(name: "__res", scope: !5471, file: !712, line: 140, type: !136)
!5480 = !DILocation(line: 138, column: 13, scope: !5471, inlinedAt: !5481)
!5481 = distinct !DILocation(line: 150, column: 16, scope: !5462, inlinedAt: !5469)
!5482 = !DILocation(line: 140, column: 20, scope: !5471, inlinedAt: !5481)
!5483 = !DILocation(line: 140, column: 8, scope: !5471, inlinedAt: !5481)
!5484 = !DILocation(line: 142, column: 12, scope: !5485, inlinedAt: !5481)
!5485 = distinct !DILexicalBlock(scope: !5471, file: !712, line: 141, column: 8)
!5486 = !DILocation(line: 903, column: 35, scope: !803)
!5487 = !DILocation(line: 894, column: 11, scope: !710)
!5488 = !DILocation(line: 904, column: 19, scope: !803)
!5489 = !DILocation(line: 903, column: 8, scope: !803)
!5490 = !DILocation(line: 905, column: 12, scope: !803)
!5491 = !DILocation(line: 906, column: 4, scope: !803)
!5492 = !DILocation(line: 907, column: 23, scope: !809)
!5493 = !DILocation(line: 907, column: 11, scope: !804)
!5494 = distinct !{!5494, !5495, !5496}
!5495 = !DILocation(line: 925, column: 6, scope: !808)
!5496 = !DILocation(line: 932, column: 46, scope: !808)
!5497 = !DILocation(line: 929, column: 14, scope: !811)
!5498 = !DILocation(line: 927, column: 18, scope: !811)
!5499 = !DILocation(line: 0, scope: !3650, inlinedAt: !5500)
!5500 = distinct !DILocation(line: 929, column: 14, scope: !811)
!5501 = !DILocation(line: 1680, column: 22, scope: !3650, inlinedAt: !5500)
!5502 = !DILocation(line: 1681, column: 15, scope: !3650, inlinedAt: !5500)
!5503 = !DILocation(line: 1682, column: 4, scope: !3650, inlinedAt: !5500)
!5504 = !DILocation(line: 1682, column: 15, scope: !3650, inlinedAt: !5500)
!5505 = !DILocation(line: 928, column: 27, scope: !811)
!5506 = !DILocation(line: 928, column: 25, scope: !811)
!5507 = !DILocation(line: 924, column: 15, scope: !808)
!5508 = !DILocation(line: 928, column: 3, scope: !811)
!5509 = !DILocation(line: 0, scope: !5452, inlinedAt: !5510)
!5510 = distinct !DILocation(line: 930, column: 29, scope: !811)
!5511 = !DILocation(line: 337, column: 51, scope: !5452, inlinedAt: !5510)
!5512 = !DILocation(line: 149, column: 17, scope: !5462, inlinedAt: !5513)
!5513 = distinct !DILocation(line: 337, column: 9, scope: !5452, inlinedAt: !5510)
!5514 = !DILocation(line: 138, column: 13, scope: !5471, inlinedAt: !5515)
!5515 = distinct !DILocation(line: 150, column: 16, scope: !5462, inlinedAt: !5513)
!5516 = !DILocation(line: 140, column: 20, scope: !5471, inlinedAt: !5515)
!5517 = !DILocation(line: 140, column: 8, scope: !5471, inlinedAt: !5515)
!5518 = !DILocation(line: 142, column: 12, scope: !5485, inlinedAt: !5515)
!5519 = !DILocation(line: 337, column: 7, scope: !5452, inlinedAt: !5510)
!5520 = !DILocation(line: 930, column: 39, scope: !811)
!5521 = !DILocation(line: 930, column: 17, scope: !811)
!5522 = !DILocation(line: 932, column: 19, scope: !808)
!5523 = !DILocation(line: 932, column: 39, scope: !808)
!5524 = !DILocation(line: 932, column: 30, scope: !808)
!5525 = !DILocation(line: 0, scope: !5452, inlinedAt: !5526)
!5526 = distinct !DILocation(line: 935, column: 21, scope: !809)
!5527 = !DILocation(line: 337, column: 51, scope: !5452, inlinedAt: !5526)
!5528 = !DILocation(line: 149, column: 17, scope: !5462, inlinedAt: !5529)
!5529 = distinct !DILocation(line: 337, column: 9, scope: !5452, inlinedAt: !5526)
!5530 = !DILocation(line: 138, column: 13, scope: !5471, inlinedAt: !5531)
!5531 = distinct !DILocation(line: 150, column: 16, scope: !5462, inlinedAt: !5529)
!5532 = !DILocation(line: 140, column: 20, scope: !5471, inlinedAt: !5531)
!5533 = !DILocation(line: 140, column: 8, scope: !5471, inlinedAt: !5531)
!5534 = !DILocation(line: 142, column: 12, scope: !5485, inlinedAt: !5531)
!5535 = !DILocation(line: 337, column: 7, scope: !5452, inlinedAt: !5526)
!5536 = !DILocation(line: 935, column: 31, scope: !809)
!5537 = !DILocation(line: 1689, column: 11, scope: !5436, inlinedAt: !5538)
!5538 = distinct !DILocation(line: 937, column: 25, scope: !710)
!5539 = !DILocation(line: 0, scope: !5436, inlinedAt: !5538)
!5540 = !DILocation(line: 937, column: 15, scope: !710)
!5541 = !DILocation(line: 937, column: 2, scope: !710)
!5542 = distinct !DISubprogram(name: "__introsort_loop<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > >, long>", linkageName: "_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_T0_", scope: !7, file: !63, line: 2302, type: !5543, isLocal: false, isDefinition: true, scopeLine: 2305, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5545, variables: !5547)
!5543 = !DISubroutineType(types: !5544)
!5544 = !{null, !657, !657, !46}
!5545 = !{!822, !5546}
!5546 = !DITemplateTypeParameter(name: "_Size", type: !46)
!5547 = !{!5548, !5549, !5550, !5551}
!5548 = !DILocalVariable(name: "__first", arg: 1, scope: !5542, file: !63, line: 2302, type: !657)
!5549 = !DILocalVariable(name: "__last", arg: 2, scope: !5542, file: !63, line: 2303, type: !657)
!5550 = !DILocalVariable(name: "__depth_limit", arg: 3, scope: !5542, file: !63, line: 2304, type: !46)
!5551 = !DILocalVariable(name: "__cut", scope: !5552, file: !63, line: 2314, type: !657)
!5552 = distinct !DILexicalBlock(scope: !5542, file: !63, line: 2307, column: 2)
!5553 = !DILocation(line: 2304, column: 14, scope: !5542)
!5554 = !DILocation(line: 2302, column: 44, scope: !5542)
!5555 = !DILocation(line: 2303, column: 30, scope: !5542)
!5556 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !5557)
!5557 = distinct !DILocation(line: 2306, column: 21, scope: !5542)
!5558 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !5557)
!5559 = !DILocation(line: 898, column: 27, scope: !3846, inlinedAt: !5557)
!5560 = !DILocation(line: 2306, column: 31, scope: !5542)
!5561 = !DILocation(line: 2306, column: 7, scope: !5542)
!5562 = !DILocation(line: 2308, column: 22, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5552, file: !63, line: 2308, column: 8)
!5564 = !DILocation(line: 2308, column: 8, scope: !5552)
!5565 = !DILocalVariable(name: "__first", arg: 1, scope: !5566, file: !2133, line: 700, type: !657)
!5566 = distinct !DISubprogram(name: "partial_sort<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_S7_", scope: !7, file: !63, line: 5294, type: !819, isLocal: false, isDefinition: true, scopeLine: 5297, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5567, variables: !5569)
!5567 = !{!5568}
!5568 = !DITemplateTypeParameter(name: "_RAIter", type: !657)
!5569 = !{!5565, !5570, !5571}
!5570 = !DILocalVariable(name: "__middle", arg: 2, scope: !5566, file: !2133, line: 700, type: !657)
!5571 = !DILocalVariable(name: "__last", arg: 3, scope: !5566, file: !2133, line: 700, type: !657)
!5572 = !DILocation(line: 700, column: 25, scope: !5566, inlinedAt: !5573)
!5573 = distinct !DILocation(line: 2310, column: 8, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5563, file: !63, line: 2309, column: 6)
!5575 = !DILocation(line: 700, column: 34, scope: !5566, inlinedAt: !5573)
!5576 = !DILocation(line: 700, column: 43, scope: !5566, inlinedAt: !5573)
!5577 = !DILocalVariable(name: "__middle", arg: 2, scope: !5578, file: !63, line: 1930, type: !657)
!5578 = distinct !DISubprogram(name: "__heap_select<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_S7_", scope: !7, file: !63, line: 1929, type: !819, isLocal: false, isDefinition: true, scopeLine: 1932, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !821, variables: !5579)
!5579 = !{!5580, !5577, !5581, !5582}
!5580 = !DILocalVariable(name: "__first", arg: 1, scope: !5578, file: !63, line: 1929, type: !657)
!5581 = !DILocalVariable(name: "__last", arg: 3, scope: !5578, file: !63, line: 1931, type: !657)
!5582 = !DILocalVariable(name: "__i", scope: !5583, file: !63, line: 1934, type: !657)
!5583 = distinct !DILexicalBlock(scope: !5578, file: !63, line: 1934, column: 7)
!5584 = !DILocation(line: 1930, column: 27, scope: !5578, inlinedAt: !5585)
!5585 = distinct !DILocation(line: 5308, column: 7, scope: !5566, inlinedAt: !5573)
!5586 = !DILocation(line: 1933, column: 7, scope: !5578, inlinedAt: !5585)
!5587 = !DILocation(line: 1931, column: 27, scope: !5578, inlinedAt: !5585)
!5588 = !DILocalVariable(name: "__lhs", arg: 1, scope: !5589, file: !347, line: 836, type: !3629)
!5589 = distinct !DISubprogram(name: "operator<<long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZN9__gnu_cxxltIPlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESA_", scope: !84, file: !347, line: 836, type: !3627, isLocal: false, isDefinition: true, scopeLine: 838, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !707, variables: !5590)
!5590 = !{!5588, !5591}
!5591 = !DILocalVariable(name: "__rhs", arg: 2, scope: !5589, file: !347, line: 837, type: !3629)
!5592 = !DILocation(line: 836, column: 63, scope: !5589, inlinedAt: !5593)
!5593 = distinct !DILocation(line: 1934, column: 54, scope: !5594, inlinedAt: !5585)
!5594 = distinct !DILexicalBlock(scope: !5583, file: !63, line: 1934, column: 7)
!5595 = !DILocation(line: 837, column: 56, scope: !5589, inlinedAt: !5593)
!5596 = !DILocalVariable(name: "__first", arg: 1, scope: !5597, file: !817, line: 465, type: !657)
!5597 = distinct !DISubprogram(name: "sort_heap<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt9sort_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_", scope: !7, file: !817, line: 465, type: !3870, isLocal: false, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !821, variables: !5598)
!5598 = !{!5596, !5599}
!5599 = !DILocalVariable(name: "__last", arg: 2, scope: !5597, file: !817, line: 465, type: !657)
!5600 = !DILocation(line: 465, column: 37, scope: !5597, inlinedAt: !5601)
!5601 = distinct !DILocation(line: 5309, column: 7, scope: !5566, inlinedAt: !5573)
!5602 = !DILocation(line: 465, column: 68, scope: !5597, inlinedAt: !5601)
!5603 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !5604)
!5604 = distinct !DILocation(line: 475, column: 21, scope: !5597, inlinedAt: !5601)
!5605 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !5604)
!5606 = !DILocation(line: 760, column: 2, scope: !5607, inlinedAt: !5610)
!5607 = distinct !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmmEv", scope: !657, file: !347, line: 758, type: !682, isLocal: false, isDefinition: true, scopeLine: 759, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !688, variables: !5608)
!5608 = !{!5609}
!5609 = !DILocalVariable(name: "this", arg: 1, scope: !5607, type: !3593, flags: DIFlagArtificial | DIFlagObjectPointer)
!5610 = distinct !DILocation(line: 477, column: 4, scope: !5611, inlinedAt: !5601)
!5611 = distinct !DILexicalBlock(scope: !5597, file: !817, line: 476, column: 2)
!5612 = !DILocation(line: 0, scope: !5607, inlinedAt: !5610)
!5613 = !DILocation(line: 254, column: 31, scope: !818, inlinedAt: !5614)
!5614 = distinct !DILocation(line: 478, column: 4, scope: !5611, inlinedAt: !5601)
!5615 = !DILocation(line: 261, column: 28, scope: !818, inlinedAt: !5614)
!5616 = !DILocation(line: 261, column: 18, scope: !818, inlinedAt: !5614)
!5617 = !DILocation(line: 253, column: 38, scope: !818, inlinedAt: !5614)
!5618 = !DILocation(line: 262, column: 19, scope: !818, inlinedAt: !5614)
!5619 = !DILocation(line: 262, column: 17, scope: !818, inlinedAt: !5614)
!5620 = !DILocation(line: 253, column: 69, scope: !818, inlinedAt: !5614)
!5621 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !5622)
!5622 = distinct !DILocation(line: 264, column: 26, scope: !818, inlinedAt: !5614)
!5623 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !5622)
!5624 = !DILocation(line: 898, column: 27, scope: !3846, inlinedAt: !5622)
!5625 = !DILocalVariable(name: "__holeIndex", arg: 2, scope: !5626, file: !817, line: 227, type: !46)
!5626 = distinct !DISubprogram(name: "__adjust_heap<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > >, long, long>", linkageName: "_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllEvT_T0_S8_T1_", scope: !7, file: !817, line: 227, type: !5627, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5629, variables: !5631)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{null, !657, !46, !46, !46}
!5629 = !{!822, !5630, !146}
!5630 = !DITemplateTypeParameter(name: "_Distance", type: !46)
!5631 = !{!5632, !5625, !5633, !5634, !5635, !5636}
!5632 = !DILocalVariable(name: "__first", arg: 1, scope: !5626, file: !817, line: 227, type: !657)
!5633 = !DILocalVariable(name: "__len", arg: 3, scope: !5626, file: !817, line: 228, type: !46)
!5634 = !DILocalVariable(name: "__value", arg: 4, scope: !5626, file: !817, line: 228, type: !46)
!5635 = !DILocalVariable(name: "__topIndex", scope: !5626, file: !817, line: 230, type: !128)
!5636 = !DILocalVariable(name: "__secondChild", scope: !5626, file: !817, line: 231, type: !46)
!5637 = !DILocation(line: 227, column: 60, scope: !5626, inlinedAt: !5638)
!5638 = distinct !DILocation(line: 263, column: 7, scope: !818, inlinedAt: !5614)
!5639 = !DILocation(line: 228, column: 15, scope: !5626, inlinedAt: !5638)
!5640 = !DILocation(line: 228, column: 26, scope: !5626, inlinedAt: !5638)
!5641 = !DILocation(line: 230, column: 23, scope: !5626, inlinedAt: !5638)
!5642 = !DILocation(line: 231, column: 17, scope: !5626, inlinedAt: !5638)
!5643 = !DILocation(line: 232, column: 37, scope: !5626, inlinedAt: !5638)
!5644 = !DILocation(line: 232, column: 42, scope: !5626, inlinedAt: !5638)
!5645 = !DILocation(line: 232, column: 28, scope: !5626, inlinedAt: !5638)
!5646 = !DILocation(line: 232, column: 7, scope: !5626, inlinedAt: !5638)
!5647 = !DILocation(line: 234, column: 22, scope: !5648, inlinedAt: !5638)
!5648 = distinct !DILexicalBlock(scope: !5626, file: !817, line: 233, column: 2)
!5649 = !DILocation(line: 227, column: 41, scope: !5626, inlinedAt: !5638)
!5650 = !DILocation(line: 0, scope: !3661, inlinedAt: !5651)
!5651 = distinct !DILocation(line: 235, column: 18, scope: !5652, inlinedAt: !5638)
!5652 = distinct !DILexicalBlock(scope: !5648, file: !817, line: 235, column: 8)
!5653 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5651)
!5654 = !DILocation(line: 235, column: 8, scope: !5652, inlinedAt: !5638)
!5655 = !DILocation(line: 235, column: 64, scope: !5652, inlinedAt: !5638)
!5656 = !DILocation(line: 0, scope: !3661, inlinedAt: !5657)
!5657 = distinct !DILocation(line: 235, column: 47, scope: !5652, inlinedAt: !5638)
!5658 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5657)
!5659 = !DILocation(line: 235, column: 37, scope: !5652, inlinedAt: !5638)
!5660 = !DILocation(line: 235, column: 35, scope: !5652, inlinedAt: !5638)
!5661 = !DILocation(line: 235, column: 8, scope: !5648, inlinedAt: !5638)
!5662 = !DILocation(line: 0, scope: !3661, inlinedAt: !5663)
!5663 = distinct !DILocation(line: 237, column: 31, scope: !5648, inlinedAt: !5638)
!5664 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5663)
!5665 = !DILocation(line: 237, column: 31, scope: !5648, inlinedAt: !5638)
!5666 = !DILocation(line: 0, scope: !3661, inlinedAt: !5667)
!5667 = distinct !DILocation(line: 237, column: 14, scope: !5648, inlinedAt: !5638)
!5668 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5667)
!5669 = !DILocation(line: 237, column: 29, scope: !5648, inlinedAt: !5638)
!5670 = distinct !{!5670, !5671, !5672}
!5671 = !DILocation(line: 232, column: 7, scope: !5626)
!5672 = !DILocation(line: 239, column: 2, scope: !5626)
!5673 = !DILocation(line: 240, column: 18, scope: !5674, inlinedAt: !5638)
!5674 = distinct !DILexicalBlock(scope: !5626, file: !817, line: 240, column: 11)
!5675 = !DILocation(line: 240, column: 23, scope: !5674, inlinedAt: !5638)
!5676 = !DILocation(line: 240, column: 28, scope: !5674, inlinedAt: !5638)
!5677 = !DILocation(line: 240, column: 55, scope: !5674, inlinedAt: !5638)
!5678 = !DILocation(line: 240, column: 60, scope: !5674, inlinedAt: !5638)
!5679 = !DILocation(line: 240, column: 45, scope: !5674, inlinedAt: !5638)
!5680 = !DILocation(line: 240, column: 11, scope: !5626, inlinedAt: !5638)
!5681 = !DILocation(line: 242, column: 22, scope: !5682, inlinedAt: !5638)
!5682 = distinct !DILexicalBlock(scope: !5674, file: !817, line: 241, column: 2)
!5683 = !DILocation(line: 243, column: 31, scope: !5682, inlinedAt: !5638)
!5684 = !DILocation(line: 0, scope: !3661, inlinedAt: !5685)
!5685 = distinct !DILocation(line: 243, column: 31, scope: !5682, inlinedAt: !5638)
!5686 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5685)
!5687 = !DILocation(line: 0, scope: !3661, inlinedAt: !5688)
!5688 = distinct !DILocation(line: 243, column: 14, scope: !5682, inlinedAt: !5638)
!5689 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5688)
!5690 = !DILocation(line: 243, column: 29, scope: !5682, inlinedAt: !5638)
!5691 = !DILocation(line: 246, column: 2, scope: !5682, inlinedAt: !5638)
!5692 = !DILocalVariable(name: "__holeIndex", arg: 2, scope: !5693, file: !817, line: 132, type: !46)
!5693 = distinct !DISubprogram(name: "__push_heap<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > >, long, long>", linkageName: "_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllEvT_T0_S8_T1_", scope: !7, file: !817, line: 131, type: !5627, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5629, variables: !5694)
!5694 = !{!5695, !5692, !5696, !5697, !5698}
!5695 = !DILocalVariable(name: "__first", arg: 1, scope: !5693, file: !817, line: 131, type: !657)
!5696 = !DILocalVariable(name: "__topIndex", arg: 3, scope: !5693, file: !817, line: 132, type: !46)
!5697 = !DILocalVariable(name: "__value", arg: 4, scope: !5693, file: !817, line: 132, type: !46)
!5698 = !DILocalVariable(name: "__parent", scope: !5693, file: !817, line: 134, type: !46)
!5699 = !DILocation(line: 132, column: 13, scope: !5693, inlinedAt: !5700)
!5700 = distinct !DILocation(line: 247, column: 7, scope: !5626, inlinedAt: !5638)
!5701 = !DILocation(line: 132, column: 36, scope: !5693, inlinedAt: !5700)
!5702 = !DILocation(line: 132, column: 52, scope: !5693, inlinedAt: !5700)
!5703 = !DILocation(line: 135, column: 26, scope: !5693, inlinedAt: !5700)
!5704 = !DILocation(line: 135, column: 39, scope: !5693, inlinedAt: !5700)
!5705 = !DILocation(line: 131, column: 39, scope: !5693, inlinedAt: !5700)
!5706 = !DILocation(line: 0, scope: !3661, inlinedAt: !5707)
!5707 = distinct !DILocation(line: 135, column: 52, scope: !5693, inlinedAt: !5700)
!5708 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5707)
!5709 = !DILocation(line: 135, column: 42, scope: !5693, inlinedAt: !5700)
!5710 = !DILocation(line: 135, column: 64, scope: !5693, inlinedAt: !5700)
!5711 = !DILocation(line: 135, column: 7, scope: !5693, inlinedAt: !5700)
!5712 = !DILocation(line: 0, scope: !3661, inlinedAt: !5713)
!5713 = distinct !DILocation(line: 137, column: 31, scope: !5714, inlinedAt: !5700)
!5714 = distinct !DILexicalBlock(scope: !5693, file: !817, line: 136, column: 2)
!5715 = !DILocation(line: 0, scope: !3661, inlinedAt: !5716)
!5716 = distinct !DILocation(line: 137, column: 14, scope: !5714, inlinedAt: !5700)
!5717 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5716)
!5718 = !DILocation(line: 137, column: 29, scope: !5714, inlinedAt: !5700)
!5719 = !DILocation(line: 134, column: 17, scope: !5693, inlinedAt: !5700)
!5720 = distinct !{!5720, !5721, !5722}
!5721 = !DILocation(line: 135, column: 7, scope: !5693)
!5722 = !DILocation(line: 140, column: 2, scope: !5693)
!5723 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5724)
!5724 = distinct !DILocation(line: 141, column: 17, scope: !5693, inlinedAt: !5700)
!5725 = !DILocation(line: 0, scope: !3661, inlinedAt: !5724)
!5726 = !DILocation(line: 141, column: 32, scope: !5693, inlinedAt: !5700)
!5727 = !DILocation(line: 475, column: 31, scope: !5597, inlinedAt: !5601)
!5728 = !DILocation(line: 475, column: 7, scope: !5597, inlinedAt: !5601)
!5729 = distinct !{!5729, !5730, !5731}
!5730 = !DILocation(line: 475, column: 7, scope: !5597)
!5731 = !DILocation(line: 479, column: 2, scope: !5597)
!5732 = !DILocation(line: 2313, column: 4, scope: !5552)
!5733 = !DILocation(line: 2314, column: 26, scope: !5552)
!5734 = !DILocalVariable(name: "__mid", scope: !5735, file: !63, line: 2281, type: !657)
!5735 = distinct !DISubprogram(name: "__unguarded_partition_pivot<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET_S7_S7_", scope: !7, file: !63, line: 2278, type: !5736, isLocal: false, isDefinition: true, scopeLine: 2280, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !821, variables: !5738)
!5736 = !DISubroutineType(types: !5737)
!5737 = !{!657, !657, !657}
!5738 = !{!5739, !5740, !5734}
!5739 = !DILocalVariable(name: "__first", arg: 1, scope: !5735, file: !63, line: 2278, type: !657)
!5740 = !DILocalVariable(name: "__last", arg: 2, scope: !5735, file: !63, line: 2279, type: !657)
!5741 = !DILocation(line: 2281, column: 29, scope: !5735, inlinedAt: !5742)
!5742 = distinct !DILocation(line: 2315, column: 6, scope: !5552)
!5743 = !DILocation(line: 2278, column: 55, scope: !5735, inlinedAt: !5742)
!5744 = !DILocation(line: 2279, column: 27, scope: !5735, inlinedAt: !5742)
!5745 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !5746)
!5746 = distinct !DILocation(line: 2281, column: 55, scope: !5735, inlinedAt: !5742)
!5747 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !5746)
!5748 = !DILocation(line: 0, scope: !3661, inlinedAt: !5749)
!5749 = distinct !DILocation(line: 2281, column: 45, scope: !5735, inlinedAt: !5742)
!5750 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5749)
!5751 = !DILocation(line: 0, scope: !3661, inlinedAt: !5752)
!5752 = distinct !DILocation(line: 2282, column: 52, scope: !5735, inlinedAt: !5742)
!5753 = !DILocalVariable(name: "this", arg: 1, scope: !5754, type: !3664, flags: DIFlagArtificial | DIFlagObjectPointer)
!5754 = distinct !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmiERKl", scope: !657, file: !347, line: 786, type: !700, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !703, variables: !5755)
!5755 = !{!5753, !5756}
!5756 = !DILocalVariable(name: "__n", arg: 2, scope: !5754, file: !347, line: 786, type: !693)
!5757 = !DILocation(line: 0, scope: !5754, inlinedAt: !5758)
!5758 = distinct !DILocation(line: 2282, column: 71, scope: !5735, inlinedAt: !5742)
!5759 = !DILocation(line: 787, column: 45, scope: !5754, inlinedAt: !5758)
!5760 = !DILocalVariable(name: "__result", arg: 1, scope: !5761, file: !63, line: 78, type: !657)
!5761 = distinct !DISubprogram(name: "__move_median_to_first<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_S7_S7_", scope: !7, file: !63, line: 78, type: !5762, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5764, variables: !5765)
!5762 = !DISubroutineType(types: !5763)
!5763 = !{null, !657, !657, !657, !657}
!5764 = !{!832}
!5765 = !{!5760, !5766, !5767, !5768}
!5766 = !DILocalVariable(name: "__a", arg: 2, scope: !5761, file: !63, line: 78, type: !657)
!5767 = !DILocalVariable(name: "__b", arg: 3, scope: !5761, file: !63, line: 79, type: !657)
!5768 = !DILocalVariable(name: "__c", arg: 4, scope: !5761, file: !63, line: 79, type: !657)
!5769 = !DILocation(line: 78, column: 38, scope: !5761, inlinedAt: !5770)
!5770 = distinct !DILocation(line: 2282, column: 7, scope: !5735, inlinedAt: !5742)
!5771 = !DILocation(line: 78, column: 58, scope: !5761, inlinedAt: !5770)
!5772 = !DILocation(line: 85, column: 11, scope: !5773, inlinedAt: !5770)
!5773 = distinct !DILexicalBlock(scope: !5761, file: !63, line: 85, column: 11)
!5774 = !DILocation(line: 79, column: 17, scope: !5761, inlinedAt: !5770)
!5775 = !DILocation(line: 85, column: 18, scope: !5773, inlinedAt: !5770)
!5776 = !DILocation(line: 85, column: 16, scope: !5773, inlinedAt: !5770)
!5777 = !DILocation(line: 87, column: 15, scope: !5778, inlinedAt: !5770)
!5778 = distinct !DILexicalBlock(scope: !5779, file: !63, line: 87, column: 8)
!5779 = distinct !DILexicalBlock(scope: !5773, file: !63, line: 86, column: 2)
!5780 = !DILocation(line: 175, column: 19, scope: !3881, inlinedAt: !5781)
!5781 = distinct !DILocation(line: 147, column: 7, scope: !3869, inlinedAt: !5782)
!5782 = distinct !DILocation(line: 88, column: 6, scope: !5778, inlinedAt: !5770)
!5783 = !DILocation(line: 85, column: 11, scope: !5761, inlinedAt: !5770)
!5784 = !DILocation(line: 79, column: 32, scope: !5761, inlinedAt: !5770)
!5785 = !DILocation(line: 87, column: 13, scope: !5778, inlinedAt: !5770)
!5786 = !DILocation(line: 87, column: 8, scope: !5779, inlinedAt: !5770)
!5787 = !DILocation(line: 89, column: 18, scope: !5788, inlinedAt: !5770)
!5788 = distinct !DILexicalBlock(scope: !5778, file: !63, line: 89, column: 13)
!5789 = !DILocation(line: 336, column: 22, scope: !3869, inlinedAt: !5790)
!5790 = distinct !DILocation(line: 90, column: 6, scope: !5788, inlinedAt: !5770)
!5791 = !DILocation(line: 336, column: 31, scope: !3869, inlinedAt: !5790)
!5792 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !5793)
!5793 = distinct !DILocation(line: 147, column: 7, scope: !3869, inlinedAt: !5790)
!5794 = !DILocation(line: 90, column: 6, scope: !5788, inlinedAt: !5770)
!5795 = !DILocation(line: 94, column: 21, scope: !5796, inlinedAt: !5770)
!5796 = distinct !DILexicalBlock(scope: !5773, file: !63, line: 94, column: 16)
!5797 = !DILocation(line: 94, column: 16, scope: !5773, inlinedAt: !5770)
!5798 = !DILocation(line: 96, column: 21, scope: !5799, inlinedAt: !5770)
!5799 = distinct !DILexicalBlock(scope: !5796, file: !63, line: 96, column: 16)
!5800 = !DILocation(line: 336, column: 22, scope: !3869, inlinedAt: !5801)
!5801 = distinct !DILocation(line: 97, column: 2, scope: !5799, inlinedAt: !5770)
!5802 = !DILocation(line: 336, column: 31, scope: !3869, inlinedAt: !5801)
!5803 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !5804)
!5804 = distinct !DILocation(line: 147, column: 7, scope: !3869, inlinedAt: !5801)
!5805 = !DILocation(line: 97, column: 2, scope: !5799, inlinedAt: !5770)
!5806 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !5807)
!5807 = distinct !DILocation(line: 147, column: 7, scope: !3869, inlinedAt: !5808)
!5808 = distinct !DILocation(line: 95, column: 8, scope: !5796, inlinedAt: !5770)
!5809 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !5807)
!5810 = !DILocation(line: 0, scope: !3661, inlinedAt: !5811)
!5811 = distinct !DILocation(line: 2283, column: 49, scope: !5735, inlinedAt: !5742)
!5812 = !DILocalVariable(name: "__pivot", arg: 3, scope: !5813, file: !63, line: 2238, type: !130)
!5813 = distinct !DISubprogram(name: "__unguarded_partition<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > >, long>", linkageName: "_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElET_S7_S7_RKT0_", scope: !7, file: !63, line: 2237, type: !5814, isLocal: false, isDefinition: true, scopeLine: 2239, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5816, variables: !5817)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!657, !657, !657, !130}
!5816 = !{!822, !146}
!5817 = !{!5818, !5819, !5812}
!5818 = !DILocalVariable(name: "__first", arg: 1, scope: !5813, file: !63, line: 2237, type: !657)
!5819 = !DILocalVariable(name: "__last", arg: 2, scope: !5813, file: !63, line: 2238, type: !657)
!5820 = !DILocation(line: 2238, column: 47, scope: !5813, inlinedAt: !5821)
!5821 = distinct !DILocation(line: 2283, column: 14, scope: !5735, inlinedAt: !5742)
!5822 = !DILocation(line: 2240, column: 7, scope: !5813, inlinedAt: !5821)
!5823 = !DILocation(line: 2242, column: 4, scope: !5824, inlinedAt: !5821)
!5824 = distinct !DILexicalBlock(scope: !5813, file: !63, line: 2241, column: 2)
!5825 = !DILocation(line: 2237, column: 49, scope: !5813, inlinedAt: !5821)
!5826 = !DILocation(line: 2242, column: 11, scope: !5824, inlinedAt: !5821)
!5827 = !DILocation(line: 2242, column: 20, scope: !5824, inlinedAt: !5821)
!5828 = !DILocalVariable(name: "this", arg: 1, scope: !5829, type: !3593, flags: DIFlagArtificial | DIFlagObjectPointer)
!5829 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEv", scope: !657, file: !347, line: 746, type: !682, isLocal: false, isDefinition: true, scopeLine: 747, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !681, variables: !5830)
!5830 = !{!5828}
!5831 = !DILocation(line: 0, scope: !5829, inlinedAt: !5832)
!5832 = distinct !DILocation(line: 2243, column: 6, scope: !5824, inlinedAt: !5821)
!5833 = !DILocation(line: 748, column: 2, scope: !5829, inlinedAt: !5832)
!5834 = distinct !{!5834, !5835, !5836}
!5835 = !DILocation(line: 2242, column: 4, scope: !5824)
!5836 = !DILocation(line: 2243, column: 8, scope: !5824)
!5837 = !DILocation(line: 760, column: 2, scope: !5607, inlinedAt: !5838)
!5838 = distinct !DILocation(line: 2246, column: 6, scope: !5824, inlinedAt: !5821)
!5839 = !DILocation(line: 2238, column: 28, scope: !5813, inlinedAt: !5821)
!5840 = !DILocation(line: 2245, column: 21, scope: !5824, inlinedAt: !5821)
!5841 = !DILocation(line: 2245, column: 19, scope: !5824, inlinedAt: !5821)
!5842 = !DILocation(line: 2245, column: 4, scope: !5824, inlinedAt: !5821)
!5843 = distinct !{!5843, !5844, !5845}
!5844 = !DILocation(line: 2245, column: 4, scope: !5824)
!5845 = !DILocation(line: 2246, column: 8, scope: !5824)
!5846 = !DILocation(line: 836, column: 63, scope: !5589, inlinedAt: !5847)
!5847 = distinct !DILocation(line: 2247, column: 18, scope: !5848, inlinedAt: !5821)
!5848 = distinct !DILexicalBlock(scope: !5824, file: !63, line: 2247, column: 8)
!5849 = !DILocation(line: 837, column: 56, scope: !5589, inlinedAt: !5847)
!5850 = !DILocation(line: 838, column: 27, scope: !5589, inlinedAt: !5847)
!5851 = !DILocation(line: 2247, column: 8, scope: !5824, inlinedAt: !5821)
!5852 = !DILocation(line: 336, column: 22, scope: !3869, inlinedAt: !5853)
!5853 = distinct !DILocation(line: 2249, column: 4, scope: !5824, inlinedAt: !5821)
!5854 = !DILocation(line: 336, column: 31, scope: !3869, inlinedAt: !5853)
!5855 = !DILocation(line: 554, column: 14, scope: !3881, inlinedAt: !5856)
!5856 = distinct !DILocation(line: 147, column: 7, scope: !3869, inlinedAt: !5853)
!5857 = !DILocation(line: 554, column: 20, scope: !3881, inlinedAt: !5856)
!5858 = !DILocation(line: 175, column: 11, scope: !3881, inlinedAt: !5856)
!5859 = !DILocation(line: 176, column: 11, scope: !3881, inlinedAt: !5856)
!5860 = !DILocation(line: 177, column: 11, scope: !3881, inlinedAt: !5856)
!5861 = !DILocation(line: 0, scope: !5829, inlinedAt: !5862)
!5862 = distinct !DILocation(line: 2250, column: 4, scope: !5824, inlinedAt: !5821)
!5863 = distinct !{!5863, !5864, !5865}
!5864 = !DILocation(line: 2240, column: 7, scope: !5813)
!5865 = !DILocation(line: 2251, column: 2, scope: !5813)
!5866 = !DILocation(line: 2316, column: 4, scope: !5552)
!5867 = distinct !{!5867, !5561, !5868}
!5868 = !DILocation(line: 2318, column: 2, scope: !5542)
!5869 = !DILocation(line: 2319, column: 5, scope: !5542)
!5870 = distinct !DISubprogram(name: "__final_insertion_sort<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_", scope: !7, file: !63, line: 2206, type: !3870, isLocal: false, isDefinition: true, scopeLine: 2208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !821, variables: !5871)
!5871 = !{!5872, !5873}
!5872 = !DILocalVariable(name: "__first", arg: 1, scope: !5870, file: !63, line: 2206, type: !657)
!5873 = !DILocalVariable(name: "__last", arg: 2, scope: !5870, file: !63, line: 2207, type: !657)
!5874 = !DILocation(line: 2206, column: 50, scope: !5870)
!5875 = !DILocation(line: 2207, column: 29, scope: !5870)
!5876 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !5877)
!5877 = distinct !DILocation(line: 2209, column: 18, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5870, file: !63, line: 2209, column: 11)
!5879 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !5877)
!5880 = !DILocation(line: 898, column: 27, scope: !3846, inlinedAt: !5877)
!5881 = !DILocation(line: 2209, column: 28, scope: !5878)
!5882 = !DILocation(line: 2209, column: 11, scope: !5870)
!5883 = !DILocation(line: 0, scope: !3661, inlinedAt: !5884)
!5884 = distinct !DILocation(line: 2211, column: 43, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5878, file: !63, line: 2210, column: 2)
!5886 = !DILocalVariable(name: "__first", arg: 1, scope: !5887, file: !63, line: 2129, type: !657)
!5887 = distinct !DISubprogram(name: "__insertion_sort<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_", scope: !7, file: !63, line: 2129, type: !3870, isLocal: false, isDefinition: true, scopeLine: 2131, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !821, variables: !5888)
!5888 = !{!5886, !5889, !5890, !5892}
!5889 = !DILocalVariable(name: "__last", arg: 2, scope: !5887, file: !63, line: 2130, type: !657)
!5890 = !DILocalVariable(name: "__i", scope: !5891, file: !63, line: 2135, type: !657)
!5891 = distinct !DILexicalBlock(scope: !5887, file: !63, line: 2135, column: 7)
!5892 = !DILocalVariable(name: "__val", scope: !5893, file: !63, line: 2140, type: !829)
!5893 = distinct !DILexicalBlock(scope: !5894, file: !63, line: 2138, column: 6)
!5894 = distinct !DILexicalBlock(scope: !5895, file: !63, line: 2137, column: 8)
!5895 = distinct !DILexicalBlock(scope: !5896, file: !63, line: 2136, column: 2)
!5896 = distinct !DILexicalBlock(scope: !5891, file: !63, line: 2135, column: 7)
!5897 = !DILocation(line: 2129, column: 44, scope: !5887, inlinedAt: !5898)
!5898 = distinct !DILocation(line: 2211, column: 4, scope: !5885)
!5899 = !DILocation(line: 2130, column: 30, scope: !5887, inlinedAt: !5898)
!5900 = !DILocation(line: 811, column: 64, scope: !3626, inlinedAt: !5901)
!5901 = distinct !DILocation(line: 2132, column: 19, scope: !5902, inlinedAt: !5898)
!5902 = distinct !DILexicalBlock(scope: !5887, file: !63, line: 2132, column: 11)
!5903 = !DILocation(line: 812, column: 57, scope: !3626, inlinedAt: !5901)
!5904 = !DILocation(line: 2135, column: 34, scope: !5891, inlinedAt: !5898)
!5905 = !DILocation(line: 823, column: 64, scope: !3669, inlinedAt: !5906)
!5906 = distinct !DILocation(line: 2135, column: 57, scope: !5896, inlinedAt: !5898)
!5907 = !DILocation(line: 824, column: 57, scope: !3669, inlinedAt: !5906)
!5908 = !DILocation(line: 2135, column: 7, scope: !5891, inlinedAt: !5898)
!5909 = !DILocation(line: 2137, column: 8, scope: !5894, inlinedAt: !5898)
!5910 = !DILocation(line: 2137, column: 15, scope: !5894, inlinedAt: !5898)
!5911 = !DILocation(line: 2137, column: 13, scope: !5894, inlinedAt: !5898)
!5912 = !DILocation(line: 2137, column: 8, scope: !5895, inlinedAt: !5898)
!5913 = !DILocation(line: 2140, column: 3, scope: !5893, inlinedAt: !5898)
!5914 = !DILocation(line: 0, scope: !3661, inlinedAt: !5915)
!5915 = distinct !DILocation(line: 2141, column: 8, scope: !5893, inlinedAt: !5898)
!5916 = !DILocalVariable(name: "__first", arg: 1, scope: !5917, file: !2127, line: 655, type: !657)
!5917 = distinct !DISubprogram(name: "move_backward<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > >, __gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_", scope: !7, file: !2127, line: 655, type: !5918, isLocal: false, isDefinition: true, scopeLine: 656, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5920, variables: !5923)
!5918 = !DISubroutineType(types: !5919)
!5919 = !{!657, !657, !657, !657}
!5920 = !{!5921, !5922}
!5921 = !DITemplateTypeParameter(name: "_BI1", type: !657)
!5922 = !DITemplateTypeParameter(name: "_BI2", type: !657)
!5923 = !{!5916, !5924, !5925}
!5924 = !DILocalVariable(name: "__last", arg: 2, scope: !5917, file: !2127, line: 655, type: !657)
!5925 = !DILocalVariable(name: "__result", arg: 3, scope: !5917, file: !2127, line: 655, type: !657)
!5926 = !DILocation(line: 655, column: 24, scope: !5917, inlinedAt: !5927)
!5927 = distinct !DILocation(line: 2141, column: 8, scope: !5893, inlinedAt: !5898)
!5928 = !DILocation(line: 655, column: 38, scope: !5917, inlinedAt: !5927)
!5929 = !DILocation(line: 655, column: 51, scope: !5917, inlinedAt: !5927)
!5930 = !DILocalVariable(name: "__first", arg: 1, scope: !5931, file: !2127, line: 592, type: !657)
!5931 = distinct !DISubprogram(name: "__copy_move_backward_a2<true, __gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > >, __gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt23__copy_move_backward_a2ILb1EN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET1_T0_S8_S7_", scope: !7, file: !2127, line: 592, type: !5918, isLocal: false, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5932, variables: !5933)
!5932 = !{!2144, !5921, !5922}
!5933 = !{!5930, !5934, !5935}
!5934 = !DILocalVariable(name: "__last", arg: 2, scope: !5931, file: !2127, line: 592, type: !657)
!5935 = !DILocalVariable(name: "__result", arg: 3, scope: !5931, file: !2127, line: 592, type: !657)
!5936 = !DILocation(line: 592, column: 34, scope: !5931, inlinedAt: !5937)
!5937 = distinct !DILocation(line: 665, column: 14, scope: !5917, inlinedAt: !5927)
!5938 = !DILocation(line: 592, column: 48, scope: !5931, inlinedAt: !5937)
!5939 = !DILocation(line: 592, column: 61, scope: !5931, inlinedAt: !5937)
!5940 = !DILocalVariable(name: "__first", arg: 1, scope: !5941, file: !2127, line: 574, type: !119)
!5941 = distinct !DISubprogram(name: "__copy_move_backward_a<true, long *, long *>", linkageName: "_ZSt22__copy_move_backward_aILb1EPlS0_ET1_T0_S2_S1_", scope: !7, file: !2127, line: 574, type: !2141, isLocal: false, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5942, variables: !5945)
!5942 = !{!2144, !5943, !5944}
!5943 = !DITemplateTypeParameter(name: "_BI1", type: !119)
!5944 = !DITemplateTypeParameter(name: "_BI2", type: !119)
!5945 = !{!5940, !5946, !5947, !5948}
!5946 = !DILocalVariable(name: "__last", arg: 2, scope: !5941, file: !2127, line: 574, type: !119)
!5947 = !DILocalVariable(name: "__result", arg: 3, scope: !5941, file: !2127, line: 574, type: !119)
!5948 = !DILocalVariable(name: "__simple", scope: !5941, file: !2127, line: 579, type: !217)
!5949 = !DILocation(line: 574, column: 33, scope: !5941, inlinedAt: !5950)
!5950 = distinct !DILocation(line: 594, column: 19, scope: !5931, inlinedAt: !5937)
!5951 = !DILocation(line: 574, column: 47, scope: !5941, inlinedAt: !5950)
!5952 = !DILocation(line: 579, column: 18, scope: !5941, inlinedAt: !5950)
!5953 = !DILocalVariable(name: "__first", arg: 1, scope: !5954, file: !2127, line: 563, type: !127)
!5954 = distinct !DISubprogram(name: "__copy_move_b<long>", linkageName: "_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIlEEPT_PKS3_S6_S4_", scope: !5955, file: !2127, line: 563, type: !2178, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !145, declaration: !5956, variables: !5957)
!5955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__copy_move_backward<true, true, std::random_access_iterator_tag>", scope: !7, file: !2127, line: 559, size: 8, elements: !43, templateParams: !2166, identifier: "_ZTSSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE")
!5956 = !DISubprogram(name: "__copy_move_b<long>", linkageName: "_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIlEEPT_PKS3_S6_S4_", scope: !5955, file: !2127, line: 563, type: !2178, isLocal: false, isDefinition: false, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, templateParams: !145)
!5957 = !{!5953, !5958, !5959, !5960}
!5958 = !DILocalVariable(name: "__last", arg: 2, scope: !5954, file: !2127, line: 563, type: !127)
!5959 = !DILocalVariable(name: "__result", arg: 3, scope: !5954, file: !2127, line: 563, type: !119)
!5960 = !DILocalVariable(name: "_Num", scope: !5954, file: !2127, line: 565, type: !2185)
!5961 = !DILocation(line: 563, column: 34, scope: !5954, inlinedAt: !5962)
!5962 = distinct !DILocation(line: 584, column: 14, scope: !5941, inlinedAt: !5950)
!5963 = !DILocation(line: 563, column: 54, scope: !5954, inlinedAt: !5962)
!5964 = !DILocation(line: 565, column: 34, scope: !5954, inlinedAt: !5962)
!5965 = !DILocation(line: 565, column: 20, scope: !5954, inlinedAt: !5962)
!5966 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5915)
!5967 = !DILocation(line: 568, column: 20, scope: !5954, inlinedAt: !5962)
!5968 = !DILocation(line: 567, column: 6, scope: !5969, inlinedAt: !5962)
!5969 = distinct !DILexicalBlock(scope: !5954, file: !2127, line: 566, column: 8)
!5970 = !DILocalVariable(name: "__last", arg: 1, scope: !5971, file: !63, line: 2092, type: !657)
!5971 = distinct !DISubprogram(name: "__unguarded_linear_insert<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_", scope: !7, file: !63, line: 2092, type: !5972, isLocal: false, isDefinition: true, scopeLine: 2093, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !821, variables: !5974)
!5972 = !DISubroutineType(types: !5973)
!5973 = !{null, !657}
!5974 = !{!5970, !5975, !5976}
!5975 = !DILocalVariable(name: "__val", scope: !5971, file: !63, line: 2095, type: !829)
!5976 = !DILocalVariable(name: "__next", scope: !5971, file: !63, line: 2096, type: !657)
!5977 = !DILocation(line: 2092, column: 53, scope: !5971, inlinedAt: !5978)
!5978 = distinct !DILocation(line: 2145, column: 6, scope: !5894, inlinedAt: !5898)
!5979 = !DILocation(line: 2095, column: 2, scope: !5971, inlinedAt: !5978)
!5980 = !DILocation(line: 2096, column: 29, scope: !5971, inlinedAt: !5978)
!5981 = !DILocation(line: 0, scope: !5607, inlinedAt: !5982)
!5982 = distinct !DILocation(line: 2097, column: 7, scope: !5971, inlinedAt: !5978)
!5983 = !DILocation(line: 2098, column: 22, scope: !5971, inlinedAt: !5978)
!5984 = !DILocation(line: 2098, column: 20, scope: !5971, inlinedAt: !5978)
!5985 = !DILocation(line: 2098, column: 7, scope: !5971, inlinedAt: !5978)
!5986 = !DILocation(line: 2100, column: 12, scope: !5987, inlinedAt: !5978)
!5987 = distinct !DILexicalBlock(scope: !5971, file: !63, line: 2099, column: 2)
!5988 = !DILocation(line: 0, scope: !5607, inlinedAt: !5989)
!5989 = distinct !DILocation(line: 2102, column: 4, scope: !5987, inlinedAt: !5978)
!5990 = !DILocation(line: 760, column: 2, scope: !5607, inlinedAt: !5989)
!5991 = distinct !{!5991, !5992, !5993}
!5992 = !DILocation(line: 2098, column: 7, scope: !5971)
!5993 = !DILocation(line: 2103, column: 2, scope: !5971)
!5994 = !DILocation(line: 825, column: 27, scope: !3669, inlinedAt: !5906)
!5995 = distinct !{!5995, !5996, !5997}
!5996 = !DILocation(line: 2135, column: 7, scope: !5891)
!5997 = !DILocation(line: 2146, column: 2, scope: !5891)
!5998 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !5884)
!5999 = !DILocation(line: 0, scope: !3661, inlinedAt: !6000)
!6000 = distinct !DILocation(line: 2212, column: 44, scope: !5885)
!6001 = !DILocalVariable(name: "__first", arg: 1, scope: !6002, file: !63, line: 2174, type: !657)
!6002 = distinct !DISubprogram(name: "__unguarded_insertion_sort<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_", scope: !7, file: !63, line: 2174, type: !3870, isLocal: false, isDefinition: true, scopeLine: 2176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !821, variables: !6003)
!6003 = !{!6001, !6004, !6005}
!6004 = !DILocalVariable(name: "__last", arg: 2, scope: !6002, file: !63, line: 2175, type: !657)
!6005 = !DILocalVariable(name: "__i", scope: !6006, file: !63, line: 2180, type: !657)
!6006 = distinct !DILexicalBlock(scope: !6002, file: !63, line: 2180, column: 7)
!6007 = !DILocation(line: 2174, column: 54, scope: !6002, inlinedAt: !6008)
!6008 = distinct !DILocation(line: 2212, column: 4, scope: !5885)
!6009 = !DILocation(line: 2175, column: 33, scope: !6002, inlinedAt: !6008)
!6010 = !DILocation(line: 2180, column: 34, scope: !6006, inlinedAt: !6008)
!6011 = !DILocation(line: 823, column: 64, scope: !3669, inlinedAt: !6012)
!6012 = distinct !DILocation(line: 2180, column: 53, scope: !6013, inlinedAt: !6008)
!6013 = distinct !DILexicalBlock(scope: !6006, file: !63, line: 2180, column: 7)
!6014 = !DILocation(line: 824, column: 57, scope: !3669, inlinedAt: !6012)
!6015 = !DILocation(line: 825, column: 27, scope: !3669, inlinedAt: !6012)
!6016 = !DILocation(line: 2180, column: 7, scope: !6006, inlinedAt: !6008)
!6017 = !DILocation(line: 2095, column: 10, scope: !5971, inlinedAt: !6018)
!6018 = distinct !DILocation(line: 2181, column: 2, scope: !6013, inlinedAt: !6008)
!6019 = !DILocation(line: 2092, column: 53, scope: !5971, inlinedAt: !6018)
!6020 = !DILocation(line: 2095, column: 2, scope: !5971, inlinedAt: !6018)
!6021 = !DILocation(line: 2096, column: 29, scope: !5971, inlinedAt: !6018)
!6022 = !DILocation(line: 0, scope: !5607, inlinedAt: !6023)
!6023 = distinct !DILocation(line: 2097, column: 7, scope: !5971, inlinedAt: !6018)
!6024 = !DILocation(line: 760, column: 2, scope: !5607, inlinedAt: !6025)
!6025 = distinct !DILocation(line: 2102, column: 4, scope: !5987, inlinedAt: !6018)
!6026 = !DILocation(line: 2098, column: 22, scope: !5971, inlinedAt: !6018)
!6027 = !DILocation(line: 2098, column: 20, scope: !5971, inlinedAt: !6018)
!6028 = !DILocation(line: 2098, column: 7, scope: !5971, inlinedAt: !6018)
!6029 = !DILocation(line: 2100, column: 12, scope: !5987, inlinedAt: !6018)
!6030 = !DILocation(line: 0, scope: !5607, inlinedAt: !6025)
!6031 = !DILocation(line: 2104, column: 15, scope: !5971, inlinedAt: !6018)
!6032 = !DILocation(line: 0, scope: !5829, inlinedAt: !6033)
!6033 = distinct !DILocation(line: 2180, column: 64, scope: !6013, inlinedAt: !6008)
!6034 = !DILocation(line: 748, column: 2, scope: !5829, inlinedAt: !6033)
!6035 = !DILocation(line: 2129, column: 44, scope: !5887, inlinedAt: !6036)
!6036 = distinct !DILocation(line: 2215, column: 2, scope: !5878)
!6037 = !DILocation(line: 2130, column: 30, scope: !5887, inlinedAt: !6036)
!6038 = !DILocation(line: 811, column: 64, scope: !3626, inlinedAt: !6039)
!6039 = distinct !DILocation(line: 2132, column: 19, scope: !5902, inlinedAt: !6036)
!6040 = !DILocation(line: 812, column: 57, scope: !3626, inlinedAt: !6039)
!6041 = !DILocation(line: 813, column: 27, scope: !3626, inlinedAt: !6039)
!6042 = !DILocation(line: 2132, column: 11, scope: !5887, inlinedAt: !6036)
!6043 = !DILocation(line: 2135, column: 34, scope: !5891, inlinedAt: !6036)
!6044 = !DILocation(line: 823, column: 64, scope: !3669, inlinedAt: !6045)
!6045 = distinct !DILocation(line: 2135, column: 57, scope: !5896, inlinedAt: !6036)
!6046 = !DILocation(line: 824, column: 57, scope: !3669, inlinedAt: !6045)
!6047 = !DILocation(line: 825, column: 27, scope: !3669, inlinedAt: !6045)
!6048 = !DILocation(line: 2135, column: 7, scope: !5891, inlinedAt: !6036)
!6049 = !DILocation(line: 2137, column: 8, scope: !5894, inlinedAt: !6036)
!6050 = !DILocation(line: 2137, column: 15, scope: !5894, inlinedAt: !6036)
!6051 = !DILocation(line: 2137, column: 13, scope: !5894, inlinedAt: !6036)
!6052 = !DILocation(line: 2137, column: 8, scope: !5895, inlinedAt: !6036)
!6053 = !DILocation(line: 2140, column: 3, scope: !5893, inlinedAt: !6036)
!6054 = !DILocation(line: 0, scope: !3661, inlinedAt: !6055)
!6055 = distinct !DILocation(line: 2141, column: 8, scope: !5893, inlinedAt: !6036)
!6056 = !DILocation(line: 655, column: 24, scope: !5917, inlinedAt: !6057)
!6057 = distinct !DILocation(line: 2141, column: 8, scope: !5893, inlinedAt: !6036)
!6058 = !DILocation(line: 655, column: 38, scope: !5917, inlinedAt: !6057)
!6059 = !DILocation(line: 655, column: 51, scope: !5917, inlinedAt: !6057)
!6060 = !DILocation(line: 592, column: 34, scope: !5931, inlinedAt: !6061)
!6061 = distinct !DILocation(line: 665, column: 14, scope: !5917, inlinedAt: !6057)
!6062 = !DILocation(line: 592, column: 48, scope: !5931, inlinedAt: !6061)
!6063 = !DILocation(line: 592, column: 61, scope: !5931, inlinedAt: !6061)
!6064 = !DILocation(line: 574, column: 33, scope: !5941, inlinedAt: !6065)
!6065 = distinct !DILocation(line: 594, column: 19, scope: !5931, inlinedAt: !6061)
!6066 = !DILocation(line: 574, column: 47, scope: !5941, inlinedAt: !6065)
!6067 = !DILocation(line: 579, column: 18, scope: !5941, inlinedAt: !6065)
!6068 = !DILocation(line: 563, column: 34, scope: !5954, inlinedAt: !6069)
!6069 = distinct !DILocation(line: 584, column: 14, scope: !5941, inlinedAt: !6065)
!6070 = !DILocation(line: 563, column: 54, scope: !5954, inlinedAt: !6069)
!6071 = !DILocation(line: 565, column: 34, scope: !5954, inlinedAt: !6069)
!6072 = !DILocation(line: 565, column: 20, scope: !5954, inlinedAt: !6069)
!6073 = !DILocation(line: 566, column: 8, scope: !5969, inlinedAt: !6069)
!6074 = !DILocation(line: 566, column: 8, scope: !5954, inlinedAt: !6069)
!6075 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !6055)
!6076 = !DILocation(line: 568, column: 20, scope: !5954, inlinedAt: !6069)
!6077 = !DILocation(line: 567, column: 6, scope: !5969, inlinedAt: !6069)
!6078 = !DILocation(line: 2092, column: 53, scope: !5971, inlinedAt: !6079)
!6079 = distinct !DILocation(line: 2145, column: 6, scope: !5894, inlinedAt: !6036)
!6080 = !DILocation(line: 2095, column: 2, scope: !5971, inlinedAt: !6079)
!6081 = !DILocation(line: 2096, column: 29, scope: !5971, inlinedAt: !6079)
!6082 = !DILocation(line: 0, scope: !5607, inlinedAt: !6083)
!6083 = distinct !DILocation(line: 2097, column: 7, scope: !5971, inlinedAt: !6079)
!6084 = !DILocation(line: 2098, column: 22, scope: !5971, inlinedAt: !6079)
!6085 = !DILocation(line: 2098, column: 20, scope: !5971, inlinedAt: !6079)
!6086 = !DILocation(line: 2098, column: 7, scope: !5971, inlinedAt: !6079)
!6087 = !DILocation(line: 2100, column: 12, scope: !5987, inlinedAt: !6079)
!6088 = !DILocation(line: 0, scope: !5607, inlinedAt: !6089)
!6089 = distinct !DILocation(line: 2102, column: 4, scope: !5987, inlinedAt: !6079)
!6090 = !DILocation(line: 760, column: 2, scope: !5607, inlinedAt: !6089)
!6091 = !DILocation(line: 2216, column: 5, scope: !5870)
!6092 = distinct !{!6092, !6093, !6094}
!6093 = !DILocation(line: 2180, column: 7, scope: !6006)
!6094 = !DILocation(line: 2181, column: 36, scope: !6006)
!6095 = distinct !DISubprogram(name: "make_heap<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_", scope: !7, file: !817, line: 386, type: !3870, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !821, variables: !6096)
!6096 = !{!6097, !6098, !6099, !6102, !6103}
!6097 = !DILocalVariable(name: "__first", arg: 1, scope: !6095, file: !817, line: 386, type: !657)
!6098 = !DILocalVariable(name: "__last", arg: 2, scope: !6095, file: !817, line: 386, type: !657)
!6099 = !DILocalVariable(name: "__len", scope: !6095, file: !817, line: 402, type: !6100)
!6100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6101)
!6101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_DistanceType", scope: !6095, file: !817, line: 391, baseType: !834)
!6102 = !DILocalVariable(name: "__parent", scope: !6095, file: !817, line: 403, type: !6101)
!6103 = !DILocalVariable(name: "__value", scope: !6104, file: !817, line: 406, type: !6105)
!6104 = distinct !DILexicalBlock(scope: !6095, file: !817, line: 405, column: 2)
!6105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ValueType", scope: !6095, file: !817, line: 389, baseType: !829)
!6106 = !DILocation(line: 386, column: 37, scope: !6095)
!6107 = !DILocation(line: 386, column: 68, scope: !6095)
!6108 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !6109)
!6109 = distinct !DILocation(line: 399, column: 18, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6095, file: !817, line: 399, column: 11)
!6111 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !6109)
!6112 = !DILocation(line: 898, column: 27, scope: !3846, inlinedAt: !6109)
!6113 = !DILocation(line: 399, column: 28, scope: !6110)
!6114 = !DILocation(line: 399, column: 11, scope: !6095)
!6115 = !DILocation(line: 896, column: 63, scope: !3846, inlinedAt: !6116)
!6116 = distinct !DILocation(line: 402, column: 42, scope: !6095)
!6117 = !DILocation(line: 897, column: 56, scope: !3846, inlinedAt: !6116)
!6118 = !DILocation(line: 402, column: 27, scope: !6095)
!6119 = !DILocation(line: 403, column: 39, scope: !6095)
!6120 = !DILocation(line: 403, column: 44, scope: !6095)
!6121 = !DILocation(line: 403, column: 21, scope: !6095)
!6122 = !DILocation(line: 404, column: 7, scope: !6095)
!6123 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !6124)
!6124 = distinct !DILocation(line: 406, column: 25, scope: !6104)
!6125 = !DILocation(line: 0, scope: !3661, inlinedAt: !6124)
!6126 = !DILocation(line: 406, column: 25, scope: !6104)
!6127 = !DILocation(line: 406, column: 15, scope: !6104)
!6128 = !DILocation(line: 227, column: 60, scope: !5626, inlinedAt: !6129)
!6129 = distinct !DILocation(line: 407, column: 4, scope: !6104)
!6130 = !DILocation(line: 228, column: 15, scope: !5626, inlinedAt: !6129)
!6131 = !DILocation(line: 228, column: 26, scope: !5626, inlinedAt: !6129)
!6132 = !DILocation(line: 230, column: 23, scope: !5626, inlinedAt: !6129)
!6133 = !DILocation(line: 231, column: 17, scope: !5626, inlinedAt: !6129)
!6134 = !DILocation(line: 232, column: 28, scope: !5626, inlinedAt: !6129)
!6135 = !DILocation(line: 232, column: 7, scope: !5626, inlinedAt: !6129)
!6136 = !DILocation(line: 234, column: 22, scope: !5648, inlinedAt: !6129)
!6137 = !DILocation(line: 227, column: 41, scope: !5626, inlinedAt: !6129)
!6138 = !DILocation(line: 0, scope: !3661, inlinedAt: !6139)
!6139 = distinct !DILocation(line: 235, column: 18, scope: !5652, inlinedAt: !6129)
!6140 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !6139)
!6141 = !DILocation(line: 235, column: 8, scope: !5652, inlinedAt: !6129)
!6142 = !DILocation(line: 235, column: 64, scope: !5652, inlinedAt: !6129)
!6143 = !DILocation(line: 0, scope: !3661, inlinedAt: !6144)
!6144 = distinct !DILocation(line: 235, column: 47, scope: !5652, inlinedAt: !6129)
!6145 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !6144)
!6146 = !DILocation(line: 235, column: 37, scope: !5652, inlinedAt: !6129)
!6147 = !DILocation(line: 235, column: 35, scope: !5652, inlinedAt: !6129)
!6148 = !DILocation(line: 235, column: 8, scope: !5648, inlinedAt: !6129)
!6149 = !DILocation(line: 0, scope: !3661, inlinedAt: !6150)
!6150 = distinct !DILocation(line: 237, column: 31, scope: !5648, inlinedAt: !6129)
!6151 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !6150)
!6152 = !DILocation(line: 237, column: 31, scope: !5648, inlinedAt: !6129)
!6153 = !DILocation(line: 0, scope: !3661, inlinedAt: !6154)
!6154 = distinct !DILocation(line: 237, column: 14, scope: !5648, inlinedAt: !6129)
!6155 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !6154)
!6156 = !DILocation(line: 237, column: 29, scope: !5648, inlinedAt: !6129)
!6157 = !DILocation(line: 240, column: 45, scope: !5674, inlinedAt: !6129)
!6158 = !DILocation(line: 240, column: 28, scope: !5674, inlinedAt: !6129)
!6159 = !DILocation(line: 0, scope: !3661, inlinedAt: !6160)
!6160 = distinct !DILocation(line: 243, column: 31, scope: !5682, inlinedAt: !6129)
!6161 = !DILocation(line: 243, column: 31, scope: !5682, inlinedAt: !6129)
!6162 = !DILocation(line: 0, scope: !3661, inlinedAt: !6163)
!6163 = distinct !DILocation(line: 243, column: 14, scope: !5682, inlinedAt: !6129)
!6164 = !DILocation(line: 243, column: 29, scope: !5682, inlinedAt: !6129)
!6165 = !DILocation(line: 246, column: 2, scope: !5682, inlinedAt: !6129)
!6166 = !DILocation(line: 132, column: 13, scope: !5693, inlinedAt: !6167)
!6167 = distinct !DILocation(line: 247, column: 7, scope: !5626, inlinedAt: !6129)
!6168 = !DILocation(line: 132, column: 36, scope: !5693, inlinedAt: !6167)
!6169 = !DILocation(line: 132, column: 52, scope: !5693, inlinedAt: !6167)
!6170 = !DILocation(line: 135, column: 26, scope: !5693, inlinedAt: !6167)
!6171 = !DILocation(line: 135, column: 39, scope: !5693, inlinedAt: !6167)
!6172 = !DILocation(line: 131, column: 39, scope: !5693, inlinedAt: !6167)
!6173 = !DILocation(line: 0, scope: !3661, inlinedAt: !6174)
!6174 = distinct !DILocation(line: 135, column: 52, scope: !5693, inlinedAt: !6167)
!6175 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !6174)
!6176 = !DILocation(line: 135, column: 42, scope: !5693, inlinedAt: !6167)
!6177 = !DILocation(line: 135, column: 64, scope: !5693, inlinedAt: !6167)
!6178 = !DILocation(line: 135, column: 7, scope: !5693, inlinedAt: !6167)
!6179 = !DILocation(line: 0, scope: !3661, inlinedAt: !6180)
!6180 = distinct !DILocation(line: 137, column: 31, scope: !5714, inlinedAt: !6167)
!6181 = !DILocation(line: 0, scope: !3661, inlinedAt: !6182)
!6182 = distinct !DILocation(line: 137, column: 14, scope: !5714, inlinedAt: !6167)
!6183 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !6182)
!6184 = !DILocation(line: 137, column: 29, scope: !5714, inlinedAt: !6167)
!6185 = !DILocation(line: 134, column: 17, scope: !5693, inlinedAt: !6167)
!6186 = !DILocation(line: 779, column: 45, scope: !3661, inlinedAt: !6187)
!6187 = distinct !DILocation(line: 141, column: 17, scope: !5693, inlinedAt: !6167)
!6188 = !DILocation(line: 0, scope: !3661, inlinedAt: !6187)
!6189 = !DILocation(line: 141, column: 32, scope: !5693, inlinedAt: !6167)
!6190 = !DILocation(line: 408, column: 17, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6104, file: !817, line: 408, column: 8)
!6192 = !DILocation(line: 410, column: 12, scope: !6104)
!6193 = !DILocation(line: 408, column: 8, scope: !6104)
!6194 = !DILocation(line: 412, column: 5, scope: !6095)
!6195 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_wordsort.cc", scope: !3, file: !3, type: !6196, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: true, unit: !2, variables: !43)
!6196 = !DISubroutineType(types: !43)
!6197 = !DILocation(line: 218, column: 50, scope: !6198, inlinedAt: !6199)
!6198 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !13, file: !13, line: 218, type: !856, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !43)
!6199 = distinct !DILocation(line: 0, scope: !6195)
!6200 = !DILocation(line: 189, column: 1, scope: !6201, inlinedAt: !6202)
!6201 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !3, file: !3, line: 189, type: !856, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !43)
!6202 = distinct !DILocation(line: 0, scope: !6195)
!6203 = !DILocalVariable(name: "this", arg: 1, scope: !6204, type: !6215, flags: DIFlagArtificial | DIFlagObjectPointer)
!6204 = distinct !DISubprogram(name: "FunctionBenchmark", linkageName: "_ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE", scope: !6205, file: !13, line: 709, type: !6206, isLocal: false, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !6211, variables: !6212)
!6205 = !DICompositeType(tag: DW_TAG_class_type, name: "FunctionBenchmark", scope: !838, file: !13, line: 707, flags: DIFlagFwdDecl, identifier: "_ZTSN9benchmark8internal17FunctionBenchmarkE")
!6206 = !DISubroutineType(types: !6207)
!6207 = !{null, !6208, !632, !6209}
!6208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6205, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!6209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6210, size: 64)
!6210 = !DIDerivedType(tag: DW_TAG_typedef, name: "Function", scope: !838, file: !13, line: 499, baseType: !2436)
!6211 = !DISubprogram(name: "FunctionBenchmark", scope: !6205, file: !13, line: 709, type: !6206, isLocal: false, isDefinition: false, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!6212 = !{!6203, !6213, !6214}
!6213 = !DILocalVariable(name: "name", arg: 2, scope: !6204, file: !13, line: 709, type: !632)
!6214 = !DILocalVariable(name: "func", arg: 3, scope: !6204, file: !13, line: 709, type: !6209)
!6215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6205, size: 64)
!6216 = !DILocation(line: 0, scope: !6204, inlinedAt: !6217)
!6217 = distinct !DILocation(line: 189, column: 1, scope: !6201, inlinedAt: !6202)
!6218 = !DILocation(line: 709, column: 33, scope: !6204, inlinedAt: !6217)
!6219 = !DILocation(line: 709, column: 49, scope: !6204, inlinedAt: !6217)
!6220 = !DILocation(line: 710, column: 38, scope: !6204, inlinedAt: !6217)
!6221 = !DILocation(line: 710, column: 9, scope: !6204, inlinedAt: !6217)
!6222 = !{!6223, !6223, i64 0}
!6223 = !{!"vtable pointer", !2203, i64 0}
!6224 = !DILocation(line: 710, column: 26, scope: !6204, inlinedAt: !6217)
!6225 = !{!6226, !2201, i64 144}
!6226 = !{!"_ZTSN9benchmark8internal17FunctionBenchmarkE", !2201, i64 144}
!6227 = !DILocation(line: 189, column: 23, scope: !6201, inlinedAt: !6202)
!6228 = !DILocation(line: 189, column: 43, scope: !6201, inlinedAt: !6202)
