#include <algorithm>
#include <functional>
#include <random>
#include <cstdlib>
#include <benchmark/benchmark.h>
#include <iacaMarks.h>

typedef int V;
typedef std::vector<V> vi;

vi range(int nNums) {
  vi r;
  r.reserve(100);
  for (int i = 0; i < nNums; i++)
    r.push_back(i);
  return r;
}

void BM_shuffle(benchmark::State& state) {
  auto nums = range(state.range(0));
  std::mt19937 g(200);
  while (state.KeepRunning()) {
    std::shuffle(nums.begin(), nums.end(), g);
  }
}

//int cmp(const void* l, const void* r) { return *((int64_t*)l) - *((int64_t*)r); }
//
//void BM_copy_qsort(benchmark::State& state) {
//  auto nums = range(state.range(0));
//  std::minstd_rand g(200);
//  std::shuffle(nums.begin(), nums.end(), g);
//  while (state.KeepRunning()) {
//    auto v = nums;
//    qsort(&v[0], v.size(), sizeof(v[0]), cmp);
//  }
//}
//
void BM_std_sort(benchmark::State& state) {
  auto nums = range(state.range(0));
  std::mt19937 g(200);
  while (state.KeepRunning()) {
    std::shuffle(nums.begin(), nums.end(), g);
    std::sort(nums.begin(), nums.end());
  }
}

//int partition(vi& a, int l, int r) {
//  int p = a[r], i = l-1, j = l;
//  for (; j < r; j++) {
//    if (a[j] <= p) {
//      i++;
//      if (i != j)
//        std::swap(a[i], a[j]);
//    }
//  }
//  std::swap(a[i+1], a[r]);
//  return i+1;
//}
//
//// start recursive, remove recursion
//void quickSort(vi& a, int l, int r) {
//  if (l >= r) return;
//  int p = partition(a, l, r);
//  quickSort(a, l, p-1);
//  quickSort(a, p+1, r);
//}
//
//void BM_quickSort(benchmark::State& state) {
//  auto nums = range(state.range(0));
//  std::minstd_rand g(200);
//  std::shuffle(nums.begin(), nums.end(), g);
//  int r = nums.size() - 1;
//  while (state.KeepRunning()) {
//    auto v = nums;
//    quickSort(v, 0, r);
//    for (int i = 0; i < r; i++) {
//      assert(v[i] < v[i+1]);
//    }
//  }
//}

//int partition2(vi& a, int l, int r) {
//  int p = a[r], i = l-1, j = r+1;
//  for (;;) {
//    do { i++; } while (a[i] < p);
//    do { j--; } while (a[j] > p);
//    if (i >= j) return j;
//    std::swap(a[i], a[j]);
//  }
//}
//
//// start recursive, remove recursion
//void quickSort2(vi& a, int l, int r) {
//  if (r <= l) return;
//  int p = partition2(a, l, r);
//  quickSort2(a, l, p-1);
//  quickSort2(a, p, r);
//}
//
//void BM_quickSort2(benchmark::State& state) {
//  auto nums = range(state.range(0));
//  std::minstd_rand g(200);
//  std::shuffle(nums.begin(), nums.end(), g);
//  int r = nums.size() - 1;
//  while (state.KeepRunning()) {
//    auto v = nums;
//    quickSort2(v, 0, r);
//    for (int i = 0; i < r; i++) {
//      assert(v[i] < v[i+1]);
//    }
//  }
//}

typedef void (*G)(const vi&, vi& v);
//void insert_c(const vi& a, vi& v) {
//  // first do the copy and ins, then try using an if statement
//  int r = a.size();
//  v.reserve(r);
//  v[0] = a[0];
////  if (a[0] < a[1]) {
////    v[0] = a[0];
////    v[1] = a[1];
////  } else {
////    v[0] = a[1];
////    v[1] = a[0];
////  }
//  for (int i = 1; i < r; i++) {
//    int64_t x = a[i];
//    int j = i - 1;
//    while (j >= 0 && v[j] > x) {
//      v[j+1] = v[j];
//      j--;
//    }
//    v[j+1] = x;
//  }
//}

/*
void ins_3(const vi& a, vi& v) {
  assert(a.size() >= 3);
  assert(v.size() >= 3);
#define S(a,b,c) v[0] = a; v[1] = b; v[2] = c;
#define Sbc(a,b,c) if (b<c) { S(a,b,c) } else { S(a,c,b) }
#define Sac(a,b,c) if (a<c) { Sbc(a,b,c) } else { Sbc(c,b,a) }
#define Sab(a,b,c) if (a<b) { Sac(a,b,c) } else { Sac(b,a,c) }
  Sab(a[0],a[1],a[2])
#undef S
#undef Sbc
#undef Sac
#undef Sab
  for (int i = 3; i < a.size(); i++) {
    int64_t x = a[i];
    int j = i-1;
    while (j >= 0 && v[j] > x) {
      v[j+1] = v[j];
      j--;
    }
    v[j+1] = x;
  }
}
*/

/*
inline void net_4(const vi& a, vi& v) {
  assert(a.size() >= 4);
  assert(v.size() >= 4);
  */
#define   S(a,b,c,d,v) v[0] = a; v[1] = b; v[2] = c; v[3] = d;
#define Sbc(a,b,c,d,v) if (b<c) {   S(a,b,c,d,v) } else {   S(a,c,b,d,v) }
#define Sbd(a,b,c,d,v) if (b<d) { Sbc(a,b,c,d,v) } else { Sbc(a,d,c,b,v) }
#define Sac(a,b,c,d,v) if (a<c) { Sbd(a,b,c,d,v) } else { Sbd(c,b,a,d,v) }
#define Scd(a,b,c,d,v) if (c<d) { Sac(a,b,c,d,v) } else { Sac(a,b,d,c,v) }
#define Sab(a,b,c,d,v) if (a<b) { Scd(a,b,c,d,v) } else { Scd(b,a,c,d,v) }
#define NET_4(a,v) Sab(a[0], a[1], a[2], a[3],v)
  /*
}
*/

//void ins_4(const vi& a, vi& v) {
//  NET_4(a,v)
#undef S
//  //net_4(a,v);
//  for (int i = 4; i < a.size(); i++) {
//    int64_t x = a[i];
//    int j = i-1;
//    while (j >= 0 && v[j] > x) {
//      v[j+1] = v[j];
//      j--;
//    }
//    v[j+1] = x;
//  }
//}


//void net_6(const vi& a, vi& v) {
//#define S(a,b,c,d,e,f) v[0] = a; v[1] = b; v[2] = c; v[3] = d; v[4] = e; v[5] = f;
//#define Scd11(a,b,c,d,e,f) if (c<d) { S(a,b,c,d,e,f) } else { S(a,b,d,c,e,f) }
//#define Sbd10(a,b,c,d,e,f) if (b<d) { Scd11(a,b,c,d,e,f) } else { Scd11(a,d,c,b,e,f) }
//#define Sce9(a,b,c,d,e,f) if (c<e) { Sbd10(a,b,c,d,e,f) } else { Sbd10(a,b,e,d,c,f) }
//#define Sbe8(a,b,c,d,e,f) if (b<e) { Sce9(a,b,c,d,e,f) } else { Sce9(a,e,c,d,b,f) }
//#define Sad7(a,b,c,d,e,f) if (a<d) { Sbe8(a,b,c,d,e,f) } else { Sbe8(d,b,c,a,e,f) }
//#define Scf6(a,b,c,d,e,f) if (c<f) { Sad7(a,b,c,d,e,f) } else { Sad7(a,b,f,d,e,c) }
//#define Sde5(a,b,c,d,e,f) if (d<e) { Scf6(a,b,c,d,e,f) } else { Scf6(a,b,c,e,d,f) }
//#define Sab4(a,b,c,d,e,f) if (a<b) { Sde5(a,b,c,d,e,f) } else { Sde5(b,a,c,d,e,f) }
//#define Sdf3(a,b,c,d,e,f) if (d<f) { Sab4(a,b,c,d,e,f) } else { Sab4(a,b,c,f,e,d) }
//#define Sac2(a,b,c,d,e,f) if (a<c) { Sdf3(a,b,c,d,e,f) } else { Sdf3(c,b,a,d,e,f) }
//#define Sef1(a,b,c,d,e,f) if (e<f) { Sac2(a,b,c,d,e,f) } else { Sac2(a,b,c,d,f,e) }
//#define Sbc0(a,b,c,d,e,f) if (b<c) { Sef1(a,b,c,d,e,f) } else { Sef1(a,c,b,d,e,f) }
//  const V a0=a[0],a1=a[1],a2=a[2],a3=a[3],a4=a[4],a5=a[5];
//  Sbc0(a0,a1,a2,a3,a4,a5)
////Sbc0(v[0],v[1],v[2],v[3],v[4],v[5])
//#undef Sbc0
//#undef Sef1
//#undef Sac2
//#undef Sdf3
//#undef Sab4
//#undef Sde5
//#undef Scf6
//#undef Sad7
//#undef Sbe8
//#undef Sce9
//#undef Sbd10
//#undef Scd11
//#undef S
//}
//
//void net_6_2(const vi& a, vi& v) {
//        V b0,b1,b2,b3,b4,b5;                                                 
//#define S(a,b,c,d,e,f) b0=a;b1=b;b2=c;b3=d;b4=e;b5=f;
//#define Scf6(a,b,c,d,e,f) if (c<f) { S(a,b,c,d,e,f) } else { S(a,b,f,d,e,c) }   
//#define Sde5(a,b,c,d,e,f) if (d<e) { Scf6(a,b,c,d,e,f) } else { Scf6(a,b,c,e,d,f) }
//#define Sab4(a,b,c,d,e,f) if (a<b) { Sde5(a,b,c,d,e,f) } else { Sde5(b,a,c,d,e,f) }
//#define Sdf3(a,b,c,d,e,f) if (d<f) { Sab4(a,b,c,d,e,f) } else { Sab4(a,b,c,f,e,d) }
//#define Sac2(a,b,c,d,e,f) if (a<c) { Sdf3(a,b,c,d,e,f) } else { Sdf3(c,b,a,d,e,f) }
//#define Sef1(a,b,c,d,e,f) if (e<f) { Sac2(a,b,c,d,e,f) } else { Sac2(a,b,c,d,f,e) }
//#define Sbc0(a,b,c,d,e,f) if (b<c) { Sef1(a,b,c,d,e,f) } else { Sef1(a,c,b,d,e,f) }
//        V a0 = a[0],a1 = a[1],a2 = a[2],a3 = a[3],a4 = a[4],a5 = a[5];               
//        Sbc0(a0,a1,a2,a3,a4,a5)                                                            
//#undef Sbc0                                                                        
//#undef Sef1                                                                        
//#undef Sac2                                                                        
//#undef Sdf3                                                                        
//#undef Sab4                                                                        
//#undef Sde5                                                                        
//#undef Scf6                                                                        
//#undef S                                                                           
//#define S(a,b,c,d,e,f) v[0] = a; v[1] = b; v[2] = c; v[3] = d; v[4] = e; v[5] = f;
//#define Scd4(a,b,c,d,e,f) if (c<d) { S(a,b,c,d,e,f) } else { S(a,b,d,c,e,f) }   
//#define Sbd3(a,b,c,d,e,f) if (b<d) { Scd4(a,b,c,d,e,f) } else { Scd4(a,d,c,b,e,f) }
//#define Sce2(a,b,c,d,e,f) if (c<e) { Sbd3(a,b,c,d,e,f) } else { Sbd3(a,b,e,d,c,f) }
//#define Sbe1(a,b,c,d,e,f) if (b<e) { Sce2(a,b,c,d,e,f) } else { Sce2(a,e,c,d,b,f) }
//#define Sad0(a,b,c,d,e,f) if (a<d) { Sbe1(a,b,c,d,e,f) } else { Sbe1(d,b,c,a,e,f) }                     
//          Sad0(b0,b1,b2,b3,b4,b5)                                                            
//#undef Sad0                                                                        
//#undef Sbe1                                                                        
//#undef Sce2                                                                        
//#undef Sbd3                                                                                                                                                                                                       
//#undef Scd4                                                                        
//#undef S                                                                           
//  }

static inline void rank_reg(const vi &a, vi& v) {
    V x0,x1,x2,x3,x4,x5;
    x0 = a[0]; x1 = a[1]; x2 = a[2]; x3 = a[3]; x4 = a[4]; x5 = a[5];
    V o0 = (x0>x1)+(x0>x2)+(x0>x3)+(x0>x4)+(x0>x5);
    V o1 = (x1>=x0)+(x1>x2)+(x1>x3)+(x1>x4)+(x1>x5);
    V o2 = (x2>=x0)+(x2>=x1)+(x2>x3)+(x2>x4)+(x2>x5);
    V o3 = (x3>=x0)+(x3>=x1)+(x3>=x2)+(x3>x4)+(x3>x5);
    V o4 = (x4>=x0)+(x4>=x1)+(x4>=x2)+(x4>=x3)+(x4>x5);
    V o5 = 15-(o0+o1+o2+o3+o4);
    v[o0]=x0; v[o1]=x1; v[o2]=x2; v[o3]=x3; v[o4]=x4; v[o5]=x5;
}

static inline void fast_network(const vi &a, vi& v) {
//#define SWAP(x,y) asm("mov %0, %2 ; cmp %1, %0 ; cmovg %1, %0 ; cmovg %2, %1" : "=r" (x), "=r" (y), "=r" (tmp) : "0" (x), "1" (y) : "cc");
//    register int x0,x1,x2,x3,x4,x5,tmp;
#define SWAP(x,y) { V dx = x, dy = y, tmp; tmp = x = dx < dy ? dx : dy; y ^= dx ^ tmp; }
//#define SWAP(x,y) { if (y<x) { V t = x; x=y; y=t; }

    V x0,x1,x2,x3,x4,x5;
    x1 = a[1];
    x2 = a[2];
    SWAP(x1, x2);
    x4 = a[4];
    x5 = a[5];
    SWAP(x4, x5);
    x0 = a[0];
    SWAP(x0, x2);
    x3 = a[3];
    SWAP(x3, x5);
    SWAP(x0, x1);
    SWAP(x3, x4);
    SWAP(x1, x4);
    SWAP(x0, x3);
    v[0] = x0;
    SWAP(x2, x5);
    v[5] = x5;
    SWAP(x1, x3);
    v[1] = x1;
    SWAP(x2, x4);
    v[4] = x4;
    SWAP(x2, x3);
    v[2] = x2;
    v[3] = x3;
 
#undef SWAP
}

static inline void fast_network_2(const vi &a, vi& v) {
//#define SWAP(x,y) asm("mov %0, %2 ; cmp %1, %0 ; cmovg %1, %0 ; cmovg %2, %1" : "=r" (x), "=r" (y), "=r" (tmp) : "0" (x), "1" (y) : "cc");
//    register int x0,x1,x2,x3,x4,x5,tmp;
//#define SWAP(x,y) { V dx = x, dy = y, tmp; tmp = x = dx < dy ? dx : dy; y ^= dx ^ tmp; }
#define SWAP(x,y) { if (y<x) { V t = x; x=y; y=t; } }
    V x0,x1,x2,x3,x4,x5;
    x1 = a[1];
    x2 = a[2];
    SWAP(x1, x2);
    x4 = a[4];
    x5 = a[5];
    SWAP(x4, x5);
    x0 = a[0];
    SWAP(x0, x2);
    x3 = a[3];
    SWAP(x3, x5);
    SWAP(x0, x1);
    SWAP(x3, x4);
    SWAP(x1, x4);
    SWAP(x0, x3);
    v[0] = x0;
    SWAP(x2, x5);
    v[5] = x5;
    SWAP(x1, x3);
    v[1] = x1;
    SWAP(x2, x4);
    v[4] = x4;
    SWAP(x2, x3);
    v[2] = x2;
    v[3] = x3;
 
#undef SWAP
}


/*
void mer_4(const vi& a, vi& v) {
  assert(a.size() >= 4);
  assert(v.size() >= 4);
#define S(a,b,c,d) v[0] = a; v[1] = b; v[2] = c; v[3] = d;
#define ca_bd(a,b,c,d) if (b<d) { S(c,a,b,d) } else { S(c,a,d,b) }
#define c_abd(a,b,c,d) if (a<d) { ca_bd(a,b,c,d) } else { S(c,d,a,b) }
#define ac_bd(a,b,c,d) if (b<d) { S(a,c,b,d) } else { S(a,c,d,b) }
#define a_bcd(a,b,c,d) if (b<c) { S(a,b,c,d) } else { ac_bd(a,b,c,d) }
#define ac3(a,b,c,d) if (a<c) { a_bcd(a,b,c,d) } else { c_abd(a,b,c,d) }
#define cd2(a,b,c,d) if (c<d) { ac3(a,b,c,d) } else { ac3(a,b,d,c) }
#define ab1(a,b,c,d) if (a<b) { cd2(a,b,c,d) } else { cd2(b,a,c,d) }
  ab1(a[0], a[1],a[2],a[3])
}

void ins_mer_4(const vi& a, vi& v) {
  mer_4(a,v);
  for (int i = 4; i < a.size(); i++) {
    int64_t x = a[i];
    int j = i-1;
    while (j >= 0 && v[j] > x) {
      v[j+1] = v[j];
      j--;
    }
    v[j+1] = x;
  }
}
*/

template <G f>
void BM_copy(benchmark::State& state) {
  auto nums = range(state.range(0));
  std::mt19937 g(200);
  std::vector<vi> v;
  const int k = state.range(1);
  for (int i = 0; i < k; i++) {
    std::shuffle(nums.begin(), nums.end(), g);
    v.emplace_back(nums);
  }

  int r = nums.size();
  for (; state.KeepRunning();) {
    for (int i = 0; i < k; i++) {
      f(v[i], nums);
      benchmark::DoNotOptimize(nums.data());
      for (int j = 1; j < r; j++) assert(nums[j-1] < nums[j]);
    }
  }
}

//void bubble(vi& a) {
//  int n = a.size();
//  do {
//    int new_n = 0;
//    for (int i = 1; i < n; i++) {
//      if (a[i-1] > a[i]) {
//        std::swap(a[i-1], a[i]);
//        new_n = i;
//      }
//    }
//    n = new_n;
//  } while (n > 0);
//}
//
//void BM_bubble(benchmark::State& state) {
//  auto nums = range(state.range(0));
//  std::minstd_rand g(200);
//  std::shuffle(nums.begin(), nums.end(), g);
//  int r = nums.size() - 1;
//  while (state.KeepRunning()) {
//    auto v = nums;
//    bubble(v);
//    for (int i = 0; i < r; i++) {
//      assert(v[i] < v[i+1]);
//    }
//  }
//}

//void shell_gap(vi& a, int gap) {
//  int64_t r = a.size() - 1;
//  for (int64_t i = gap; i + gap < r; i += gap) {
//    for (int64_t k = 0; k < gap; k++) {
//      int64_t x = a[i + k];
//      int64_t j = i - gap + k;
//      while (j >= 0 && a[j] > x) {
//        a[j+gap] = a[j];
//        j -= gap;
//      }
//      a[j+gap] = x;
//    }
//  }
//}
//
//void shell(vi& a) {
////  if (a.size() > 701) shell_gap(a, 701);
////  if (a.size() > 301) shell_gap(a, 301);
////  if (a.size() > 132) shell_gap(a, 132);
//  //if (a.size() > 57) shell_gap(a, 57);
//  //if (a.size() > 23) shell_gap(a, 23);
//  //if (a.size() > 10) shell_gap(a, 10);
//  if (a.size() > 4) shell_gap(a, 4);
//  shell_gap(a, 1);
//}
//
//void BM_shell(benchmark::State& state) {
//  auto nums = range(state.range(0));
//  std::mt19937 g(200);
//  int r = nums.size() - 1;
//  while (state.KeepRunning()) {
//    std::shuffle(nums.begin(), nums.end(), g);
//    shell(nums);
//    for (int i = 0; i < r; i++) {
//      assert(v[i] < v[i+1]);
//    }
//  }
//}
//
//void shell_gap2(vi& a, int gap) {
//  int64_t r = a.size() - 1;
//  for (int64_t i = gap; i < r; i += gap) {
//    for (int64_t k = 0; k < gap; k++) {
//      int64_t x = a[i + k];
//      int64_t j = i - gap + k;
//      while (j >= 0 && a[j] > x) {
//        a[j+gap] = a[j];
//        j -= gap;
//      }
//      a[j+gap] = x;
//    }
//  }
//}
//
//void shell2(vi& a) {
////  if (a.size() > 701) shell_gap(a, 701);
////  if (a.size() > 301) shell_gap(a, 301);
////  if (a.size() > 132) shell_gap(a, 132);
//  //if (a.size() > 57) shell_gap(a, 57);
//  //if (a.size() > 23) shell_gap(a, 23);
//  //if (a.size() > 10) shell_gap(a, 10);
//  //IACA_START
//  if (a.size() > 4) shell_gap2(a, 4);
//  shell_gap2(a, 1);
//  //IACA_END
//}
//
//void BM_shell2(benchmark::State& state) {
//  auto nums = range(state.range(0));
//  std::mt19937 g(200);
//  int r = nums.size() - 1;
//  while (state.KeepRunning()) {
//    std::shuffle(nums.begin(), nums.end(), g);
//    shell2(nums);
//    for (int i = 0; i < r; i++) {
//      assert(v[i] < v[i+1]);
//    }
//  }
//}

void net_flat(const vi& a, vi& v) {
V o0_0=a[0];V o1_0=a[1];V o2_0=a[2];V o3_0=a[3];V o4_0=a[4];V o5_0=a[5];
V o1_1=o1_0<o2_0?o1_0:o2_0;
V o2_1=o1_0<o2_0?o2_0:o1_0;
V o4_2=o4_0<o5_0?o4_0:o5_0;
V o5_2=o4_0<o5_0?o5_0:o4_0;
V o0_3=o0_0<o2_1?o0_0:o2_1;
V o2_3=o0_0<o2_1?o2_1:o0_0;
V o3_4=o3_0<o5_2?o3_0:o5_2;
V o5_4=o3_0<o5_2?o5_2:o3_0;
V o0_5=o0_3<o1_1?o0_3:o1_1;
V o1_5=o0_3<o1_1?o1_1:o0_3;
V o3_6=o3_4<o4_2?o3_4:o4_2;
V o4_6=o3_4<o4_2?o4_2:o3_4;
V o2_7=o2_3<o5_4?o2_3:o5_4;
V o5_7=o2_3<o5_4?o5_4:o2_3;
V o0_8=o0_5<o3_6?o0_5:o3_6;
V o3_8=o0_5<o3_6?o3_6:o0_5;
V o1_9=o1_5<o4_6?o1_5:o4_6;
V o4_9=o1_5<o4_6?o4_6:o1_5;
V o2_10=o2_7<o4_9?o2_7:o4_9;
V o4_10=o2_7<o4_9?o4_9:o2_7;
V o1_11=o1_9<o3_8?o1_9:o3_8;
V o3_11=o1_9<o3_8?o3_8:o1_9;
V o2_12=o2_10<o3_11?o2_10:o3_11;
V o3_12=o2_10<o3_11?o3_11:o2_10;
v[0]=o0_8;v[1]=o1_11;v[2]=o2_12;v[3]=o3_12;v[4]=o4_10;v[5]=o5_7;
}

void net_6_2(const vi& a, vi& v) {
V a0 = a[0],a1 = a[1],a2 = a[2],a3 = a[3],a4 = a[4],a5 = a[5];
V b0,b1,b2,b3,b4,b5;
#define S(a,b,c,d,e,f) b0 = a; b1 = b; b2 = c; b3 = d; b4 = e; b5 = f;
#define Sef1(a,b,c,d,e,f) if (e<f) { S(a,b,c,d,e,f) } else { S(a,b,c,d,f,e) }
#define Sbc0(a,b,c,d,e,f) if (b<c) { Sef1(a,b,c,d,e,f) } else { Sef1(a,c,b,d,e,f) }
Sbc0(a0,a1,a2,a3,a4,a5)
#undef Sbc0
#undef Sef1
#undef S
#define S(a,b,c,d,e,f) v[0] = a; v[1] = b; v[2] = c; v[3] = d; v[4] = e; v[5] = f;
#define Scd9(a,b,c,d,e,f) if (c<d) { S(a,b,c,d,e,f) } else { S(a,b,d,c,e,f) }
#define Sbd8(a,b,c,d,e,f) if (b<d) { Scd9(a,b,c,d,e,f) } else { Scd9(a,d,c,b,e,f) }
#define Sce7(a,b,c,d,e,f) if (c<e) { Sbd8(a,b,c,d,e,f) } else { Sbd8(a,b,e,d,c,f) }
#define Sbe6(a,b,c,d,e,f) if (b<e) { Sce7(a,b,c,d,e,f) } else { Sce7(a,e,c,d,b,f) }
#define Sad5(a,b,c,d,e,f) if (a<d) { Sbe6(a,b,c,d,e,f) } else { Sbe6(d,b,c,a,e,f) }
#define Scf4(a,b,c,d,e,f) if (c<f) { Sad5(a,b,c,d,e,f) } else { Sad5(a,b,f,d,e,c) }
#define Sde3(a,b,c,d,e,f) if (d<e) { Scf4(a,b,c,d,e,f) } else { Scf4(a,b,c,e,d,f) }
#define Sab2(a,b,c,d,e,f) if (a<b) { Sde3(a,b,c,d,e,f) } else { Sde3(b,a,c,d,e,f) }
#define Sdf1(a,b,c,d,e,f) if (d<f) { Sab2(a,b,c,d,e,f) } else { Sab2(a,b,c,f,e,d) }
#define Sac0(a,b,c,d,e,f) if (a<c) { Sdf1(a,b,c,d,e,f) } else { Sdf1(c,b,a,d,e,f) }
Sac0(b0,b1,b2,b3,b4,b5)
#undef Sac0
#undef Sdf1
#undef Sab2
#undef Sde3
#undef Scf4
#undef Sad5
#undef Sbe6
#undef Sce7
#undef Sbd8
#undef Scd9
#undef S
}



//BENCHMARK(BM_copy_qsort);
//constexpr int MIN = 4;
//constexpr int MAX = 4;
//BENCHMARK(BM_shuffle)->RangeMultiplier(2)->Range(MIN, MAX);
//BENCHMARK(BM_std_sort)->RangeMultiplier(2)->Range(2, MAX);
//BENCHMARK(BM_quickSort)->RangeMultiplier(2)->Range(2, MAX);
//BENCHMARK(BM_quickSort2);
//BENCHMARK(BM_insert)->RangeMultiplier(2)->Range(MIN, MAX);
//BENCHMARK_TEMPLATE(BM_copy, insert_c)->RangeMultiplier(2)->Ranges({{MIN, MAX}, {64, 64}});
//BENCHMARK_TEMPLATE(BM_copy, ins_3)->RangeMultiplier(2)->Ranges({{MIN, MAX}, {64, 64}});
//BENCHMARK_TEMPLATE(BM_copy, ins_4)->RangeMultiplier(2)->Ranges({{MIN, MAX}, {64, 64}});
//BENCHMARK_TEMPLATE(BM_copy, net_6)->Ranges({{6,6}, {64,64}});
BENCHMARK_TEMPLATE(BM_copy, net_6_2)->Ranges({{6,6}, {64,64}});
BENCHMARK_TEMPLATE(BM_copy, net_flat)->Ranges({{6,6}, {64,64}});
BENCHMARK_TEMPLATE(BM_copy, rank_reg)->Ranges({{6,6}, {64,64}});
BENCHMARK_TEMPLATE(BM_copy, fast_network)->Ranges({{6,6}, {64,64}});
BENCHMARK_TEMPLATE(BM_copy, fast_network_2)->Ranges({{6,6}, {64,64}});
//BENCHMARK_TEMPLATE(BM_copy, ins_mer_4)->RangeMultiplier(2)->Ranges({{MIN, MAX}, {64, 64}});
//BENCHMARK_TEMPLATE(BM_sort, insert)->Ranges({{MIN, MAX}, {1, 4096}});
//BENCHMARK(BM_sort<insert>);
//BENCHMARK(BM_shell)->RangeMultiplier(2)->Range(MIN, MAX);
//BENCHMARK(BM_shell2)->RangeMultiplier(2)->Range(MIN, MAX);

BENCHMARK_MAIN()
