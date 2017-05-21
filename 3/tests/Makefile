prof: trie_test.c trie.c trie.h trie_inode.c trie_inode.h trie_leaf.c trie_leaf.h idx.c idx.h
	gcc -O -Wall -DPROFILE -std=c99 -o p_trie trie_inode.c trie_leaf.c trie.c trie_test.c idx.c

trie: trie_test.c trie.c trie.h trie_inode.c trie_inode.h trie_leaf.c trie_leaf.h idx.c idx.h
	gcc -Wall -g -DDEBUG -std=c99 -o d_trie trie_inode.c trie_leaf.c trie.c trie_test.c idx.c

d_fs: fastsort.c
	gcc -O -Wall -o fastsort fastsort.c

debug: fastsort.c
	gcc -Wall -g -DDEBUG -o d_fastsort fastsort.c

fs: fastsort.c
	gcc -O -Wall -g -DPROFILE -o p_fastsort fastsort.c

gprof: fastsort.c
	gcc -O -Wall -g -pg -DPROFILE -o g_fastsort fastsort.c

test: test.c
	gcc -g -O -Wall -o test test.c

asm: fastsort.c
	gcc -O -Wall -S -fverbose-asm fastsort.c

text: text.c heap.c heap.h file.c
	gcc -Wall -pg -g -o text heap.c text.c

p_text: text.c heap.c heap.h file.c
	gcc -Wall -O -DPROFILE -o text heap.c text.c

#asm: test.c
#	gcc -O -S -Wall -fverbose-asm test.c

clean:
	rm -f fastsort
