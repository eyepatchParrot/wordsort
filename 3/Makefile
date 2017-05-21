TARGET = TrieSort
PROF_TARGET = Prof_$(TARGET)
LIBS = -lm
CC = gcc
CFLAGS = -Wall -std=gnu99
PFLAGS = -DPROFILE -O3 -lrt
DFLAGS = -g
CLEAN = $(TARGET) $(PROF_TARGET)

.PHONY: default all clean

default: $(TARGET)
all: default

SOURCE = $(wildcard *.c) $(wildcard ../../common/*.c)
#OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))
HEADERS = $(wildcard *.h)

prof: $(SOURCE)
	$(CC) $(SOURCE) $(CFLAGS) $(PFLAGS) $(LIBS) -o $(PROF_TARGET)

$(TARGET): $(SOURCE)
	$(CC) $(SOURCE) $(CFLAGS) $(DFLAGS) $(LIBS) -o $@

clean:
	rm -f $(CLEAN)

#%.o: %.c $(HEADERS)
#	$(CC) $(CFLAGS) -c $< -o $@

#.PRECIOUS: $(TARGET) $(OBJECTS)

#prof: $(OBJECTS)
#	$(CC) $(OBJECTS) -Wall $(LIBS) -o p_$(TARGET)
#
#$(TARGET): $(OBJECTS)
#	$(CC) $(OBJECTS) -Wall $(LIBS) -o $@

