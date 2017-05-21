#include "trie.h"

void trie_new(trie *t) {
	trie_inode_new(&t->root);
}

// TODO consider passing down just the IX and if it fails passing down the char*
void trie_put(trie *t, char *file, int key, int val) {
	trie_inode_put(&t->root, file, key, val);
}

void trie_dump(trie *t, char *file, char* output) {
	trie_inode_dump(&t->root, file, output, 0);
}

void trie_free(trie *t) {
	trie_inode_free(&t->root, 1);
}
