// We only care about performance on the largest of datasets, so start out
// with a maximum width partition. I'll need to play around with the depth.
// Once a partition is full, it should be put into a StrSet just for that
// partition.
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

class StrSet {
  struct KeyVal {
    char* key;
    int keyLen;
    char* val;
    int valLen;

    KeyVal(char* key, int keyLen, char* val, int valLen)
      : keyLen(keyLen), key(key), val(val), valLen(valLen) { }

    bool operator<(const KeyVal& r) const {
      const KeyVal& l = *this;
      int minLen = std::min(l.keyLen, r.keyLen);
      int cmp = memcmp(l.key, r.key, minLen);
      if (0 != cmp)
        return cmp < 0;
      return l.keyLen < r.keyLen;
    }

  };
  //typedef std::tuple<std::string, std::string> KeyVal;
  std::vector<KeyVal> valsByKey; 

  public:
    void put(char* key, int keyLen, char* val, int valLen) {
      valsByKey.emplace_back(key, keyLen, val, valLen);
    }

    void dump(char* out, off_t outSize) {
      std::sort(valsByKey.begin(), valsByKey.end());
      for (auto keyVal : valsByKey) {
        memcpy(out, keyVal.val, keyVal.valLen);
        out += keyVal.valLen;
      }
    }
};

#endif
