#ifndef UTIL_H
#define UTIL_H

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

off_t getFileSize(int fd) {
  int err;
  struct stat fileStat;

  err = fstat(fd, &fileStat);
  assert(err == 0);

  return fileStat.st_size;
}

#endif
