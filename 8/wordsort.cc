#include <algorithm>
#include <functional>
#include <random>
#include <cstdlib>
#include <benchmark/benchmark.h>
#include <iacaMarks.h>

typedef std::vector<int64_t> vi;

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

void insert(vi& a) {
  int r = a.size() - 1;
  for (int i = 1; i < r; i++) {
    int64_t x = a[i];
    int j = i - 1;
    while (j >= 0 && a[j] > x) {
      a[j+1] = a[j];
      j--;
    }
    a[j+1] = x;
  }
}

void BM_insert(benchmark::State& state) {
  auto nums = range(state.range(0));
  std::mt19937 g(200);
  int r = nums.size() - 1;
  while (state.KeepRunning()) {
    std::shuffle(nums.begin(), nums.end(), g);
    insert(nums);
    for (int i = 0; i < r; i++) {
      assert(nums[i] < nums[i+1]);
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

void shell_gap(vi& a, int gap) {
  int64_t r = a.size() - 1;
  for (int64_t i = gap; i + gap < r; i += gap) {
    for (int64_t k = 0; k < gap; k++) {
      int64_t x = a[i + k];
      int64_t j = i - gap + k;
      while (j >= 0 && a[j] > x) {
        a[j+gap] = a[j];
        j -= gap;
      }
      a[j+gap] = x;
    }
  }
}

void shell(vi& a) {
//  if (a.size() > 701) shell_gap(a, 701);
//  if (a.size() > 301) shell_gap(a, 301);
//  if (a.size() > 132) shell_gap(a, 132);
  //if (a.size() > 57) shell_gap(a, 57);
  //if (a.size() > 23) shell_gap(a, 23);
  //if (a.size() > 10) shell_gap(a, 10);
  if (a.size() > 4) shell_gap(a, 4);
  shell_gap(a, 1);
}

void BM_shell(benchmark::State& state) {
  auto nums = range(state.range(0));
  std::mt19937 g(200);
  int r = nums.size() - 1;
  while (state.KeepRunning()) {
    std::shuffle(nums.begin(), nums.end(), g);
    shell(nums);
    for (int i = 0; i < r; i++) {
      assert(v[i] < v[i+1]);
    }
  }
}

void shell_gap2(vi& a, int gap) {
  int64_t r = a.size() - 1;
  for (int64_t i = gap; i < r; i += gap) {
    for (int64_t k = 0; k < gap; k++) {
      int64_t x = a[i + k];
      int64_t j = i - gap + k;
      while (j >= 0 && a[j] > x) {
        a[j+gap] = a[j];
        j -= gap;
      }
      a[j+gap] = x;
    }
  }
}

void shell2(vi& a) {
//  if (a.size() > 701) shell_gap(a, 701);
//  if (a.size() > 301) shell_gap(a, 301);
//  if (a.size() > 132) shell_gap(a, 132);
  //if (a.size() > 57) shell_gap(a, 57);
  //if (a.size() > 23) shell_gap(a, 23);
  //if (a.size() > 10) shell_gap(a, 10);
  //IACA_START
  if (a.size() > 4) shell_gap2(a, 4);
  shell_gap2(a, 1);
  //IACA_END
}

void BM_shell2(benchmark::State& state) {
  auto nums = range(state.range(0));
  std::mt19937 g(200);
  int r = nums.size() - 1;
  while (state.KeepRunning()) {
    std::shuffle(nums.begin(), nums.end(), g);
    shell2(nums);
    for (int i = 0; i < r; i++) {
      assert(v[i] < v[i+1]);
    }
  }
}


  
//BENCHMARK(BM_copy_qsort);
constexpr int MIN = 4;
constexpr int MAX = 64;
//BENCHMARK(BM_shuffle)->RangeMultiplier(2)->Range(2, MAX);
//BENCHMARK(BM_std_sort)->RangeMultiplier(2)->Range(2, MAX);
//BENCHMARK(BM_quickSort)->RangeMultiplier(2)->Range(2, MAX);
//BENCHMARK(BM_quickSort2);
BENCHMARK(BM_insert)->RangeMultiplier(2)->Range(MIN, MAX);
BENCHMARK(BM_shell)->RangeMultiplier(2)->Range(MIN, MAX);
BENCHMARK(BM_shell2)->RangeMultiplier(2)->Range(MIN, MAX);


BENCHMARK_MAIN()
