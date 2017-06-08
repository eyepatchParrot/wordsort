TARGET = Sort6
PROF_TARGET = Prof6
SOURCE += $(wildcard *.c ../../common/*.c)
OBJ += $(subst .c,_d.o, $(SOURCE))
POBJ += $(subst .c,_p.o, $(SOURCE))

TFLAGS = -DPROF_STACK -DUNSAFE
#TFLAGS += -DPRINT_TREE
#TFLAGS = -DPROF_STACK -DPRINT_TREE
CFLAGS = -mavx2 -mavx -march=native -Wall -std=gnu99 -D_GNU_SOURCE $(TFLAGS)
DFLAGS = -ggdb
PFLAGS = -DPROFILE -O3 -DNDEBUG -lprofiler
#PFLAGS += -pg
PFLAGS += -ggdb

HASH_SOURCE = hash.c profile.c
	
#	TARGET = Prof

%_d.o: %.c
	gcc -c $(CFLAGS) $(DFLAGS) $< -o $@

%_p.o: %.c
	gcc -c $(CFLAGS) $(PFLAGS) $< -o $@

$(TARGET): $(OBJ)
	gcc $(OBJ) $(DFLAGS) -o $@

prof: $(POBJ)
	gcc $(POBJ) $(PFLAGS) -o $(PROF_TARGET)

clean:
	rm -f $(TARGET) $(OBJ)

clean_prof:
	rm -f $(PROF_TARGET) $(POBJ)
