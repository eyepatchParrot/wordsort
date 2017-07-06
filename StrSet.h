// We actually do care about performance on different tiers of datasets, and
// it costs time to do a partition. However, we also need to be conscious of
// runtime conditionals, so the logic deciding width should be outside of this
//
// We only care about performance on the largest of datasets, so start out
// with a maximum width partition. I'll need to play around with the depth.
// Once a partition is full, it should be put into a StrSet just for that
// partition.
//
// Should I split this out by key length and then merge to avoid the checks of
// key length?
//
// This doesn't let me have two different values for the depth of the leaves
// and the depth of the branches.
// Assumes all pointers stay valid.
//
// Ideas :
// - Change from char pointers to offsets from file
#ifndef STRSET_H
#define STRSET_H

#include <vector>
#include <string>
#include <tuple>
#include <string.h>
#include <algorithm>

#include <cstdio>

class StrSet {
  struct KeyVal {
    char* key;
    int keyLen;
    char* val;
    int valLen;

    KeyVal(char* key, int keyLen, char* val, int valLen)
      : key(key), keyLen(keyLen), val(val), valLen(valLen) { }

    bool operator<(const KeyVal& r) const {
      const KeyVal& l = *this;
      int minLen = std::min(l.keyLen, r.keyLen);
      int cmp = memcmp(l.key, r.key, minLen);
      if (0 != cmp)
        return cmp < 0;
      return l.keyLen < r.keyLen;
    }
  };

  static constexpr int W = 128;
  std::vector<KeyVal> valsByKey[W][W];

  public:
    StrSet() { }
    void put(char* key, int keyLen, char* val, int valLen) {
      assert(1 < keyLen); // TODO put the other ones in another bucket
      valsByKey[(long)(key[0])][(long)(key[1])].emplace_back(key, keyLen, val, valLen);
    }

    void dump(char* out, off_t outSize) {
      for (int i = 0; i < W; i++) {
        for (int j = 0; j < W; j++) {
          std::vector<KeyVal>& v = valsByKey[i][j];
          std::sort(v.begin(), v.end());
          for (int k = 0; k < v.size(); k++) {
            auto& keyVal = v[k];
            memcpy(out, keyVal.val, keyVal.valLen);
            out += keyVal.valLen;
          }
        }
      }
    }
};

#endif
