#include <algorithm>
#include <cstdlib>
#include <vector>
#include <assert.h>

typedef std::vector<int64_t> vi;

vi range(int nNums) {
  vi r;
  r.reserve(100);
  for (int i = 0; i < nNums; i++)
    r.push_back(i);
  return r;
}

// https://stackoverflow.com/questions/3903086/standard-sorting-networks-for-small-values-of-n
// [[1 2][3 4][1 3][2 4][2 3]]
//void net_4(const vi& a, vi& v) {
//  assert(a.size() == 4);
//  assert(v.size() == 4);
//#define S(a,b,c,d) v[0] = a; v[1] = b; v[2] = c; v[3] = d;
//#define Sbc(a,b,c,d) if (b<c) { S(a,b,c,d) } else { S(a,c,b,d) }
//#define Sbd(a,b,c,d) if (b<d) { Sbc(a,b,c,d) } else { Sbc(a,d,c,b) }
//#define Sac(a,b,c,d) if (a<c) { Sbd(a,b,c,d) } else { Sbd(c,b,a,d) }
//#define Scd(a,b,c,d) if (c<d) { Sac(a,b,c,d) } else { Sac(a,b,d,c) }
//#define Sab(a,b,c,d) if (a<b) { Scd(a,b,c,d) } else { Scd(b,a,c,d) }
//
//  Sab(a[0], a[1], a[2], a[3])
//}

//void mer_4(const vi& a, vi& v) {
//  assert(a.size() == 4);
//  assert(v.size() == 4);
//#define S(a,b,c,d) v[0] = a; v[1] = b; v[2] = c; v[3] = d;
//#define ca_bd(a,b,c,d) if (b<d) { S(c,a,b,d) } else { S(c,a,d,b) }
//#define c_abd(a,b,c,d) if (a<d) { ca_bd(a,b,c,d) } else { S(c,d,a,b) }
//#define ac_bd(a,b,c,d) if (b<d) { S(a,c,b,d) } else { S(a,c,d,b) }
//#define a_bcd(a,b,c,d) if (b<c) { S(a,b,c,d) } else { ac_bd(a,b,c,d) }
//#define ac3(a,b,c,d) if (a<c) { a_bcd(a,b,c,d) } else { c_abd(a,b,c,d) }
//#define cd2(a,b,c,d) if (c<d) { ac3(a,b,c,d) } else { ac3(a,b,d,c) }
//#define ab1(a,b,c,d) if (a<b) { cd2(a,b,c,d) } else { cd2(b,a,c,d) }
//  ab1(a[0], a[1],a[2],a[3])
//#undef S
//}

//void net_5(const vi& a, vi& v) {
//#define S(a,b,c,d,e) v[0] = a; v[1] = b; v[2] = c; v[3] = d; v[4] = e;
//#define Scd8(a,b,c,d,e) if (c<d) { S(a,b,c,d,e) } else { S(a,b,d,c,e) }
//#define Sde7(a,b,c,d,e) if (d<e) { Scd8(a,b,c,d,e) } else { Scd8(a,b,c,e,d) }
//#define Sbc6(a,b,c,d,e) if (b<c) { Sde7(a,b,c,d,e) } else { Sde7(a,c,b,d,e) }
//#define Scd5(a,b,c,d,e) if (c<d) { Sbc6(a,b,c,d,e) } else { Sbc6(a,b,d,c,e) }
//#define Sab4(a,b,c,d,e) if (a<b) { Scd5(a,b,c,d,e) } else { Scd5(b,a,c,d,e) }
//#define Sbe3(a,b,c,d,e) if (b<e) { Sab4(a,b,c,d,e) } else { Sab4(a,e,c,d,b) }
//#define Sac2(a,b,c,d,e) if (a<c) { Sbe3(a,b,c,d,e) } else { Sbe3(c,b,a,d,e) }
//#define Scd1(a,b,c,d,e) if (c<d) { Sac2(a,b,c,d,e) } else { Sac2(a,b,d,c,e) }
//#define Sab0(a,b,c,d,e) if (a<b) { Scd1(a,b,c,d,e) } else { Scd1(b,a,c,d,e) }
//  Sab0(v[0],v[1],v[2],v[3],v[4])
//#undef Sab0
//#undef Scd1
//#undef Sac2
//#undef Sbe3
//#undef Sab4
//#undef Scd5
//#undef Sbc6
//#undef Sde7
//#undef Scd8
//#undef S
//}

void net_6(const vi& a, vi& v) {
//#define S(a,b,c,d,e,f) v[0] = a; v[1] = b; v[2] = c; v[3] = d; v[4] = e; v[5] = f;
//#define Scd11(a,b,c,d,e,f) if (c<d) { S(a,b,c,d,e,f) } else { S(a,b,d,c,e,f) }
//#define Sde10(a,b,c,d,e,f) if (d<e) { Scd11(a,b,c,d,e,f) } else { Scd11(a,b,c,e,d,f) }
//#define Sbc9(a,b,c,d,e,f) if (b<c) { Sde10(a,b,c,d,e,f) } else { Sde10(a,c,b,d,e,f) }
//#define Sef8(a,b,c,d,e,f) if (e<f) { Sbc9(a,b,c,d,e,f) } else { Sbc9(a,b,c,d,f,e) }
//#define Scd7(a,b,c,d,e,f) if (c<d) { Sef8(a,b,c,d,e,f) } else { Sef8(a,b,d,c,e,f) }
//#define Sab6(a,b,c,d,e,f) if (a<b) { Scd7(a,b,c,d,e,f) } else { Scd7(b,a,c,d,e,f) }
//#define Sdf5(a,b,c,d,e,f) if (d<f) { Sab6(a,b,c,d,e,f) } else { Sab6(a,b,c,f,e,d) }
//#define Sbe4(a,b,c,d,e,f) if (b<e) { Sdf5(a,b,c,d,e,f) } else { Sdf5(a,e,c,d,b,f) }
//#define Sac3(a,b,c,d,e,f) if (a<c) { Sbe4(a,b,c,d,e,f) } else { Sbe4(c,b,a,d,e,f) }
//#define Sef2(a,b,c,d,e,f) if (e<f) { Sac3(a,b,c,d,e,f) } else { Sac3(a,b,c,d,f,e) }
//#define Scd1(a,b,c,d,e,f) if (c<d) { Sef2(a,b,c,d,e,f) } else { Sef2(a,b,d,c,e,f) }
//#define Sab0(a,b,c,d,e,f) if (a<b) { Scd1(a,b,c,d,e,f) } else { Scd1(b,a,c,d,e,f) }
//  Sab0(v[0],v[1],v[2],v[3],v[4],v[5])
//#undef Sab0
//#undef Scd1
//#undef Sef2
//#undef Sac3
//#undef Sbe4
//#undef Sdf5
//#undef Sab6
//#undef Scd7
//#undef Sef8
//#undef Sbc9
//#undef Sde10
//#undef Scd11
//#undef S
#define S(a,b,c,d,e,f) v[0] = a; v[1] = b; v[2] = c; v[3] = d; v[4] = e; v[5] = f;
#define Scd11(a,b,c,d,e,f) if (c<d) { S(a,b,c,d,e,f) } else { S(a,b,d,c,e,f) }
#define Sbd10(a,b,c,d,e,f) if (b<d) { Scd11(a,b,c,d,e,f) } else { Scd11(a,d,c,b,e,f) }
#define Sce9(a,b,c,d,e,f) if (c<e) { Sbd10(a,b,c,d,e,f) } else { Sbd10(a,b,e,d,c,f) }
#define Sbe8(a,b,c,d,e,f) if (b<e) { Sce9(a,b,c,d,e,f) } else { Sce9(a,e,c,d,b,f) }
#define Sad7(a,b,c,d,e,f) if (a<d) { Sbe8(a,b,c,d,e,f) } else { Sbe8(d,b,c,a,e,f) }
#define Scf6(a,b,c,d,e,f) if (c<f) { Sad7(a,b,c,d,e,f) } else { Sad7(a,b,f,d,e,c) }
#define Sde5(a,b,c,d,e,f) if (d<e) { Scf6(a,b,c,d,e,f) } else { Scf6(a,b,c,e,d,f) }
#define Sab4(a,b,c,d,e,f) if (a<b) { Sde5(a,b,c,d,e,f) } else { Sde5(b,a,c,d,e,f) }
#define Sdf3(a,b,c,d,e,f) if (d<f) { Sab4(a,b,c,d,e,f) } else { Sab4(a,b,c,f,e,d) }
#define Sac2(a,b,c,d,e,f) if (a<c) { Sdf3(a,b,c,d,e,f) } else { Sdf3(c,b,a,d,e,f) }
#define Sef1(a,b,c,d,e,f) if (e<f) { Sac2(a,b,c,d,e,f) } else { Sac2(a,b,c,d,f,e) }
#define Sbc0(a,b,c,d,e,f) if (b<c) { Sef1(a,b,c,d,e,f) } else { Sef1(a,c,b,d,e,f) }
  const int64_t a0=a[0],a1=a[1],a2=a[2],a3=a[3],a4=a[4],a5=a[5];
  Sbc0(a0,a1,a2,a3,a4,a5)
//Sbc0(v[0],v[1],v[2],v[3],v[4],v[5])
#undef Sbc0
#undef Sef1
#undef Sac2
#undef Sdf3
#undef Sab4
#undef Sde5
#undef Scf6
#undef Sad7
#undef Sbe8
#undef Sce9
#undef Sbd10
#undef Scd11
#undef S
}

void net_6_2(const vi& a, vi& v) {
#define S(a,b,c,d,e,f) v[0] = a; v[1] = b; v[2] = c; v[3] = d; v[4] = e; v[5] = f;
#define Scf6(a,b,c,d,e,f) if (c<f) { S(a,b,c,d,e,f) } else { S(a,b,f,d,e,c) }
#define Sde5(a,b,c,d,e,f) if (d<e) { Scf6(a,b,c,d,e,f) } else { Scf6(a,b,c,e,d,f) }
#define Sab4(a,b,c,d,e,f) if (a<b) { Sde5(a,b,c,d,e,f) } else { Sde5(b,a,c,d,e,f) }
#define Sdf3(a,b,c,d,e,f) if (d<f) { Sab4(a,b,c,d,e,f) } else { Sab4(a,b,c,f,e,d) }
#define Sac2(a,b,c,d,e,f) if (a<c) { Sdf3(a,b,c,d,e,f) } else { Sdf3(c,b,a,d,e,f) }
#define Sef1(a,b,c,d,e,f) if (e<f) { Sac2(a,b,c,d,e,f) } else { Sac2(a,b,c,d,f,e) }
#define Sbc0(a,b,c,d,e,f) if (b<c) { Sef1(a,b,c,d,e,f) } else { Sef1(a,c,b,d,e,f) }
int64_t a0 = a[0],a1 = a[1],a2 = a[2],a3 = a[3],a4 = a[4],a5 = a[5];
Sbc0(a0,a1,a2,a3,a4,a5)
#undef Sbc0
#undef Sef1
#undef Sac2
#undef Sdf3
#undef Sab4
#undef Sde5
#undef Scf6
#undef S
#define S(a,b,c,d,e,f) v[0] = a; v[1] = b; v[2] = c; v[3] = d; v[4] = e; v[5] = f;
#define Scd4(a,b,c,d,e,f) if (c<d) { S(a,b,c,d,e,f) } else { S(a,b,d,c,e,f) }
#define Sbd3(a,b,c,d,e,f) if (b<d) { Scd4(a,b,c,d,e,f) } else { Scd4(a,d,c,b,e,f) }
#define Sce2(a,b,c,d,e,f) if (c<e) { Sbd3(a,b,c,d,e,f) } else { Sbd3(a,b,e,d,c,f) }
#define Sbe1(a,b,c,d,e,f) if (b<e) { Sce2(a,b,c,d,e,f) } else { Sce2(a,e,c,d,b,f) }
#define Sad0(a,b,c,d,e,f) if (a<d) { Sbe1(a,b,c,d,e,f) } else { Sbe1(d,b,c,a,e,f) }
a0 = v[0],a1 = v[1],a2 = v[2],a3 = v[3],a4 = v[4],a5 = v[5];
Sad0(a0,a1,a2,a3,a4,a5)
#undef Sad0
#undef Sbe1
#undef Sce2
#undef Sbd3
#undef Scd4
#undef S
}

void net_3(int64_t * u) {
  //assert(a.size() == 3);
  //assert(v.size() == 3);
#define S(a,b,c) u[0] = a; u[1] = b; u[2] = c;
#define Sbc(a,b,c) if (b<c) { S(a,b,c) } else { S(a,c,b) }
#define Sac(a,b,c) if (a<c) { Sbc(a,b,c) } else { Sbc(c,b,a) }
#define Sab(a,b,c) if (a<b) { Sac(a,b,c) } else { Sac(b,a,c) }
  int64_t x=u[0],y=u[1],z=u[2];
  Sab(x,y,z)
#undef S
#undef Sbc
#undef Sac
#undef Sab
}

void mer_6(const vi& a, vi& v) {
  v = a;
  net_3(&v[0]);
  net_3(&v[3]);
#define S(a,b,c,d,e,f) v[0] = a; v[1] = b; v[2] = c; v[3] = d; v[4] = e; v[5] = f;

#define deab_cf(a,b,c,d,e,f) if (c<f) { S(d,e,a,b,c,f) } else { S(d,e,a,b,f,c) }
#define dea_bf(a,b,c,d,e,f) if (b<f) { deab_cf(a,b,c,d,e,f) } else { S(d,e,a,f,b,c) }
#define de_af(a,b,c,d,e,f) if (a<f) { dea_bf(a,b,c,d,e,f) } else { S(d,e,f,a,b,c) }
#define daeb_cf(a,b,c,d,e,f) if (c<f) { S(d,a,e,b,c,f) } else { S(d,a,e,b,f,c) }
#define dae_bf(a,b,c,d,e,f) if (b<f) { daeb_cf(a,b,c,d,e,f) } else { S(d,a,e,f,b,c) }
#define dabe_cf(a,b,c,d,e,f) if (c<f) { S(d,a,b,e,c,f) } else { S(d,a,b,e,f,c) }
#define dab_ce(a,b,c,d,e,f) if (c<e) { S(d,a,b,c,e,f) } else { dabe_cf(a,b,c,d,e,f) }
#define da_be(a,b,c,d,e,f) if (b<e) { dab_ce(a,b,c,d,e,f) } else { dae_bf(a,b,c,d,e,f) }
#define d_ae(a,b,c,d,e,f) if (a<e) { da_be(a,b,c,d,e,f) } else { de_af(a,b,c,d,e,f) }

#define adeb_cf(a,b,c,d,e,f) if (c<f) { S(a,d,e,b,c,f) } else { S(a,d,e,b,f,c) }
#define ade_bf(a,b,c,d,e,f) if (b<f) { adeb_cf(a,b,c,d,e,f) } else { S(a,d,e,f,b,c) }
#define adbe_cf(a,b,c,d,e,f) if (c<f) { S(a,d,b,e,c,f) } else { S(a,d,b,e,f,c) }
#define adb_ce(a,b,c,d,e,f) if (c<e) { S(a,d,b,c,e,f) } else { adbe_cf(a,b,c,d,e,f) }
#define ad_be(a,b,c,d,e,f) if (b<e) { adb_ce(a,b,c,d,e,f) } else { ade_bf(a,b,c,d,e,f) }
#define abde_cf(a,b,c,d,e,f) if (c<f) { S(a,b,d,e,c,f) } else { S(a,b,d,e,f,c) }
#define abd_ce(a,b,c,d,e,f) if (c<e) { S(a,b,d,c,e,f) } else { abde_cf(a,b,c,d,e,f) }
#define ab_cd(a,b,c,d,e,f) if (c<d) { S(a,b,c,d,e,f) } else { abd_ce(a,b,c,d,e,f) }
#define a_bd(a,b,c,d,e,f) if (b<d) { ab_cd(a,b,c,d,e,f) } else { ad_be(a,b,c,d,e,f) }
#define ad(a,b,c,d,e,f) if (a<d) { a_bd(a,b,c,d,e,f) } else { d_ae(a,b,c,d,e,f) }
  int64_t x=v[0],y=v[1],z=v[2],w=v[3],q=v[4],t=v[5];
  ad(x,y,z,w,q,t)
}
  
int main() {
  auto v = range(3);
  vi b(3);
//  do {
//    net_3(v, b);
//    assert(std::is_sorted(b.begin(), b.end()));
//  } while (std::next_permutation(v.begin(), v.end()));
//  v = range(4);
//  b.resize(4);
//  do {
//    printf("%ld %ld %ld %ld\n", v[0], v[1], v[2], v[3]);
//    mer_4(v, b);
//    assert(std::is_sorted(b.begin(), b.end()));
//  } while (std::next_permutation(v.begin(), v.end()));
//  v = range(5);
//  b.resize(5);
//  do {
//    printf("%ld %ld %ld %ld %ld\n", v[0], v[1], v[2], v[3],v[4]);
//    net_5(v, b);
//    assert(std::is_sorted(b.begin(), b.end()));
//  } while (std::next_permutation(v.begin(), v.end()));
  v = range(6);
  b.resize(6);
  do {
    std::reverse(b.begin(),b.end());
    printf("%ld %ld %ld %ld %ld %ld\n", v[0], v[1], v[2], v[3],v[4],v[5]);
    net_6_2(v, b);
    for (int j=1;j<b.size();j++) assert(b[j-1]<b[j]);
  } while (std::next_permutation(v.begin(), v.end()));

  assert(0);
}
