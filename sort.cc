// load the alphanumeric, space separated file into memory, and output the lines
// sorted by the last word in sorted order.
//
// StrSet has to know about the file because it will need to use the pointers
// to output the data.
//
// Ideas:
// - Load the entire file, or load the file a chunk at a time
// - Use lightweight compression to reduce cache footprint during write?
//   Maybe use a trie to save prefixes. Maybe use a lookup table to convert
//   words into numbers. (1/4 savings there)
//   For this particular use case, a radix trie should do the trick.
//   Actually, the simplest might be to just store each prefix in a hash table
//   which progressively hashes more of the string when redistribution is
//   needed. The string is then compared to all of the strings already in the
//   bucket. Assume that 
// - Actually, store <prefix, ptr> in the hash table where prefix is a prefix
//   of the string. All prefixes are of equal length. The pointer points to
//   the remaining suffix. This only helps with duplicate strings and doesn't
//   help with shared prefixes, but for my test data, that's true. Try this if
//   the write phase turns expensive.
// - Considering chunking, bear in mind that on write, the whole file must be
//   accessible or else something must be done to partition it.
// - Consider async io.

#include <assert.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

#include "util.h"
#include "StrSet.h"

StrSet parse(char* fileBuffer, off_t fileSize);

int main(int argc, char* argv[]) {
  assert(argc == 2);

  int fd = open(argv[1], O_RDONLY);
  assert(fd != -1);

  // read the whole file into memory. Figure out chunking later.
  off_t fileSize = getFileSize(fd);
  char* fileBuffer = new char[fileSize + 1];
  ssize_t bytesRead = read(fd, fileBuffer, fileSize);
  assert(bytesRead == fileSize);

  // make sure the buffer is newline terminated. If chunking, do this when
  // loading the chunk
  if (fileBuffer[fileSize - 1] != '\n')
    fileBuffer[fileSize++] = '\n';

  StrSet linesByKey = parse(fileBuffer, fileSize);

  char* outBuffer = new char[fileSize];
  linesByKey.dump(outBuffer, fileSize);

  ssize_t bytesWritten = write(STDOUT_FILENO, outBuffer, fileSize);
  assert(bytesWritten == fileSize);

  delete[] fileBuffer;
  delete[] outBuffer;

  return 0;
}

// find the last word in every line and partition based on sort order
StrSet parse(char* fileBuffer, off_t fileSize) {
  // TODO consider changing the buffer so that a space is always present for memrchr
  // TODO consider ensuring a newline is always present for output
  StrSet linesByKey;

  char* end = fileBuffer + fileSize;
  char* l = fileBuffer;
  while (l < end) {
    char* r = (char*)rawmemchr(l, '\n');
    size_t n = r - l;
    char* key = (char*)memrchr(l, ' ', n);
    if (key == NULL)
      key = l;
    else
      key++;

    linesByKey.put(key, r - key, l, n + 1);
    l = r + 1;
  }

  return linesByKey;
}
