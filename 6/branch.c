#include "branch.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "leaf.h"

Branch* branch_new() {
	Branch* b = (Branch*)malloc(sizeof(Branch));
	branch_init(b);

	return b;
}

void branch_init(Branch *b) {
	for (int i = 0; i < BRANCH_SZ; ++i) {
		b->kid[i].type = TYPE_NONE;
	}
	b->numLeaves = b->numBranches = 0;
	b->capacity = 0;
}

void branch_delete(Branch* b) {
	for (int i = 0; i < BRANCH_SZ; ++i) {
		switch (b->kid[i].type) {
			case TYPE_LEAF:
				if (b->capacity == 0) {
					leaf_delete(b->kid[i].ptr.l);
					free(b->kid[i].ptr.l);
				}
				break;

			case TYPE_BRANCH:
				branch_delete(b->kid[i].ptr.b);
				free(b->kid[i].ptr.b);
				break;

			default:
				;

		}
		b->kid[i].type = TYPE_NONE;
	}
}

void branch_leaf_delete(BranchLeaf* bl) {
	for (int i = 0; i < BRANCH_SZ; i++) {
		branch_leaf_delete_h(bl->kid + i);
	}
}

void branch_leaf_delete2(BranchLeaf2* bl2) {
	for (int i = 0; i < BRANCH_SZ2; i++) {
		branch_leaf_delete_h(bl2->kid + i);
	}
}

void branch_leaf_delete_h(Node* kid) {
		switch (kid->type) {
			case TYPE_BRANCH:
				branch_delete(kid->ptr.b);
				free(kid->ptr.b);
				break;

			case TYPE_BRANCHLEAF:
				branch_leaf_delete(kid->ptr.bl);
				free(kid->ptr.bl);
				break;

			case TYPE_LEAF:
			case TYPE_NONE:
				break;

			default:
				assert(0);
		}
#ifndef NDEBUG
		kid->type = TYPE_NONE;
#endif
}

Node branch_grow(Node n) {
	assert(n.type == TYPE_BRANCH);
	Branch* b = n.ptr.b;
	assert(b->capacity == 0);
	assert(b != NULL);
	if (b->numLeaves >= BRANCH_MAXLEAVES) {
		BranchLeaf* bl = malloc(sizeof(BranchLeaf));
		bl->numBranches = b->numBranches;
		memcpy(bl->kid, b->kid, sizeof(Node) * BRANCH_SZ);
		for (int i = 0; i < BRANCH_SZ; i++) {
			if (b->kid[i].type == TYPE_LEAF) {
				Leaf* l = b->kid[i].ptr.l;
				bl->sz[i] = l->sz;
				memcpy(bl->e[i], l->item, l->sz * sizeof(Entry));
				free(l);
#ifndef NDEBUG
				bl->kid[i].ptr.l = NULL;
#endif
			}
		}
		n.type = TYPE_BRANCHLEAF;
		free(b);
		n.ptr.bl = bl;
	}

	return n;
}

Node branch_leaf_grow(Node n) {
	assert(n.type == TYPE_BRANCHLEAF);
	BranchLeaf* bl = n.ptr.bl;
	assert(bl != NULL);
	// we can handle non full branch_leaves by popping leaves into branches
	if (bl->numBranches >= BRANCHLEAF_GROWSZ) {
		BranchLeaf2* bl2 = malloc(sizeof(BranchLeaf2));
		for (int i = 0; i < BRANCH_SZ; i++) {
			for (int j = 0; j < BRANCH_SZ; j++) {
				Node kid = bl->kid[i];
				Node gKid;
				int sz;
				Entry* dst = bl2->e[i * BRANCH_SZ + j];
				switch (kid.type) {
					case TYPE_BRANCH:
						gKid = kid.ptr.b->kid[j];
						switch (gKid.type) {
							case TYPE_LEAF:
								sz = gKid.ptr.l->sz;
								memcpy(dst, gKid.ptr.l->item, sz * sizeof(Entry));
								free(gKid.ptr.l);
								break;

							default:
								sz = 0;
						}
						break;

					case TYPE_BRANCHLEAF:
						gKid = bl->kid[i].ptr.bl->kid[j];
						switch (gKid.type) {
							case TYPE_LEAF:
								sz = kid.ptr.bl->sz[j];
								memcpy(dst, kid.ptr.bl->e[j], sz * sizeof(Entry));
								break;

							default:
								sz = 0;
						}
						break;

					default:
#ifndef NDEBUG
						{
							char z = 'z';
							assert(i == 0 || i > lhash(&z));
						}
#endif
						sz = 0;
						gKid.type = TYPE_NONE;
				}
				bl2->kid[i*BRANCH_SZ + j] = gKid;
				bl2->sz[i*BRANCH_SZ + j] = sz;
			}
			if (bl->kid[i].type == TYPE_BRANCHLEAF) {
				free(bl->kid[i].ptr.bl);
			} else if (bl->kid[i].type == TYPE_BRANCH) {
				free(bl->kid[i].ptr.b);
			}
		}
		free(bl);
		n.type = TYPE_BRANCHLEAF2;
		n.ptr.bl2 = bl2;
	}
	return n;
}


// depth is needed for the pop function
Node* branch_pull(Node* nb, hash2_t h, int* depth) {
	Branch* b = nb->ptr.b;
	assert(b != NULL && h < 63);
	Node* n = b->kid + h;
	if (n->type == TYPE_NONE) {
		n->ptr.l = leaf_new();
		n->type = TYPE_LEAF;
		b->numLeaves++;
	} else if (n->type == TYPE_LEAF) {
		Leaf* l = n->ptr.l;
		if (l->sz == LEAF_SZ) {
			n->type = TYPE_BRANCH;
			n->ptr.b = leaf_pop(l, *depth);
			free(l);
			b->numLeaves--;
			b->numBranches++;
		}
	} else if (n->type == TYPE_BRANCH) {
		*n = branch_grow(*n);
	}

	(*depth)++;
	return n;
}

Node* branch_leaf_pull(Node* nbl, hash2_t h, int* depth) {
	BranchLeaf* bl = nbl->ptr.bl;
	Node* n = branch_leaf_pull_h(bl->kid + h, bl->e[h], bl->sz + h, *depth); 
	if (n->type == TYPE_BRANCH) {
		bl->numBranches++;
	}
	(*depth)++;
	return n;
}

Node* branch_leaf_pull_h(Node* n, Entry* entries, int* sz, int depth) {
	static Node entryNode = {.type = TYPE_ENTRY};
	Node* r;
	if (n->type == TYPE_LEAF) {
		assert(*sz <= LEAF_SZ);
		if (*sz == LEAF_SZ) {
			n->type = TYPE_BRANCH;
			n->ptr.b = entry_pop(entries, *sz, depth + 1);
#ifndef NDEBUG
			*sz = 0;
#endif
			r = n;
		} else {
			entryNode.ptr.e = entries + *sz;
			r = &entryNode;
			(*sz)++;
		}
	} else if (n->type == TYPE_NONE) {
		*sz = 0;
		n->type = TYPE_LEAF;
#ifndef NDEBUG
		n->ptr.l = NULL;
#endif
		entryNode.ptr.e = entries;
		r = &entryNode;
		(*sz)++;
	} else if (n->type == TYPE_BRANCH) {
		*n = branch_grow(*n);
		r = n;
	} else {
		r = n;
	}

	return r;
}

Node* branch_leaf_pull2(Node* nbl2, hash2_t h, int* depth) {
	BranchLeaf2* bl2 = nbl2->ptr.bl2;
	Node* n = branch_leaf_pull_h(bl2->kid + h, bl2->e[h], bl2->sz + h, *depth);
	(*depth) += 2;
	return n;
}

char* branch_dump(Branch* b, char* output, int depth) {
#ifdef PRINT_TREE
	int numChildren = 0;
	for (int i = 0; i < BRANCH_SZ; ++i) {
		if (b->kid[i].type != TYPE_NONE) {
			++numChildren;
		}
	}
	for (int i = 0; i < depth; ++i) {
		printf(" ");
	}
	printf("b %d\n", numChildren);
#endif
	for (int i = 0; i < BRANCH_SZ; ++i) {
		switch (b->kid[i].type) {
			case TYPE_LEAF:
				{
					Leaf* l = b->kid[i].ptr.l;
					output = entry_dump(l->item, l->sz, output, depth + 1);
				}
				break;

			case TYPE_BRANCH:
				output = branch_dump(b->kid[i].ptr.b, output, depth + 1);
				break;

			case TYPE_BRANCHLEAF:
				output = branch_leaf_dump(b->kid[i].ptr.bl, output, depth + 1);
				break;

			default:
				;
		}
	}

	return output;
}

char* branch_leaf_dump(BranchLeaf* bl, char* output, int depth) {
#ifdef PRINT_TREE
	int numChildren = 0;
	for (int i = 0; i < BRANCH_SZ; ++i) {
		if (bl->kid[i].type != TYPE_NONE) {
			++numChildren;
		}
	}
	for (int i = 0; i < depth; ++i) {
		printf(" ");
	}
	printf("bl %d\n", numChildren);
#endif
	for (int i = 0; i < BRANCH_SZ; i++) {
		output = branch_leaf_dump_h(output, bl->kid + i, bl->sz + i, bl->e[i], depth);
	}

	return output;
}

char* branch_leaf_dump_h(char* output, Node *n, int *sz, Entry *entries, int depth) {
	switch (n->type) {
		case TYPE_LEAF:
			output = entry_dump(entries, *sz, output, depth + 1);
			break;

		case TYPE_BRANCH:
			output = branch_dump(n->ptr.b, output, depth + 1);
			break;

		case TYPE_BRANCHLEAF:
			output = branch_leaf_dump(n->ptr.bl, output, depth + 1);
			break;

		default:
			;
	}

	return output;
}

char* branch_leaf_dump2(BranchLeaf2* bl2, char* output, int depth) {
#ifdef PRINT_TREE
	printf("bl2\n");
#endif
	for (int i = 0; i < BRANCH_SZ2; i++) {
		output = branch_leaf_dump_h(output, bl2->kid + i, bl2->sz + i, bl2->e[i], depth + 1);
	}
	return output;
}
