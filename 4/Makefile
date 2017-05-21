TARGET = trieSort
LIBS = -lm
CC = gcc
CFLAGS = -Wall -std=c99
PFLAGS = -DPROFILE -DNDEBUG -O

.PHONY: default all clean

default: $(TARGET)
prof: CFLAGS += $(PFLAGS)
all: default

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))
HEADERS = $(wildcard *.h)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

prof: $(OBJECTS)
	$(CC) $(OBJECTS) -Wall $(LIBS) -o p_$(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -Wall $(LIBS) -o $@

clean:
	-rm -f *.o
	-rm -f $(TARGET)
