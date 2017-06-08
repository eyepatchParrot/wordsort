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
  std::vector<std::tuple<std::string, std::string> > valsByKey; 

  public:
    void put(char* key, size_t keyLen, char* val, size_t valLen) {
      valsByKey.push_back(make_tuple(std::string(key, keyLen), std::string(val, valLen)));
    }

    void dump(char* out, off_t outSize) {
      std::sort(valsByKey.begin(), valsByKey.end());
      for (auto keyVal : valsByKey) {
        std::string val = std::get<1>(keyVal);
        memcpy(out, val.data(), val.size());
        out += val.size();
      }
    }
};

#endif
