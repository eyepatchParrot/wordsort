#include "stack.h"
#include "entry.h"

#include <assert.h>
#include <stdlib.h>
#include <string.h>

void stack_init(Stack* s) {
	assert(s != NULL);
	node_init(&s->head, STACK_MINSZ, NULL, NULL);
	s->head.sz = 0;
	s->tail = &s->head;
	s->sz = 0;
	s->capacity = STACK_MINSZ;
}
// TODO should v be a ptr?
Val* stack_push(Stack* s, const Val* v) {
	assert(s != NULL);
	Val* r;
	if (s->sz < STACK_MINSZ) {
		s->head.data[s->sz] = *v;
		r = s->head.data + s->sz;
		s->head.sz++;
	} else {
		if (s->sz == s->capacity) {
			// grow
			s->tail->next = node_new(s->capacity, s->tail, NULL);
			s->capacity += s->capacity;
		}
		if (s->tail->sz == s->tail->capacity) {
			s->tail = s->tail->next;
		}
		s->tail->data[s->tail->sz] = *v;
		r = s->tail->data + s->tail->sz;
		s->tail->sz++;
	}
	s->sz++;
	return r;
}

void stack_pushBuf(Stack* s, const Val* buf, int sz) {
	assert(s != NULL && buf != NULL);

	// see if you use a pointer to the head without performance penalty

	int copied = 0;
	// first, fill out the current node
	if (s->sz < STACK_MINSZ) {
		if (s->sz + sz <= STACK_MINSZ) {
			copied = sz;
		} else {
			copied = STACK_MINSZ - s->sz;
		}
		memcpy(s->head.data + s->sz, buf, copied * sizeof(Val));
		s->head.sz += copied;
	} else {
		if (s->tail->sz + sz <= s->tail->capacity) {
			copied = sz;
		} else {
			copied = s->tail->capacity - s->tail->sz;
		}
		memcpy(s->tail->data + s->tail->sz, buf, copied * sizeof(Val));
		s->tail->sz += copied;
	}
	s->sz += copied;

	if (copied < sz) {
		if (s->sz == s->capacity) {
			int growSz;
			if (s->capacity > sz - copied) {
				growSz = s->capacity;
			} else {
				growSz = sz - copied;
			}
			s->capacity += growSz;
			s->tail->next = node_new(growSz, s->tail, NULL);
		}
		if (s->tail->sz == s->tail->capacity) {
			s->tail = s->tail->next;
		}
		memcpy(s->tail->data, buf + copied, (sz - copied) * sizeof(Val));
		s->tail->sz += sz - copied;
		s->sz += sz - copied;
	}
}

Val stack_pop(Stack* s) {
	assert(s != NULL && s->sz > 0);
	Val* v;
	if (s->sz <= STACK_MINSZ) {
		v = &s->head.data[s->sz - 1];
		s->head.sz--;
	} else {
		assert(s->tail->sz > 0);
		v = &s->tail->data[s->tail->sz - 1];
		s->tail->sz--;
		if (s->tail->sz == 0 && s->sz > 1) {
			s->tail = s->tail->prev;
		}
	}

	s->sz--;
	return *v;
}

void stack_clear(Stack* s) {
	assert(s != NULL);
	while (s->tail != &s->head) {
		s->tail->sz = 0;
		s->tail = s->tail->prev;
	}
	s->head.sz = 0;
	s->sz = 0;
}

void stack_toArr(Stack* s, Val* arr) {
	// assumes that arr is big enough
	// Not really worried about speed since this is a worst case behavior anyway
	if (s->sz <= STACK_MINSZ) {
		memcpy(arr, s->head.data, s->sz * sizeof(Val));
	} else {
		memcpy(arr, s->head.data, STACK_MINSZ * sizeof(Val));

		StackNode* iter = s->head.next;
		int i = STACK_MINSZ;
		while (iter != NULL) {
			memcpy(&arr[i], iter->data, iter->sz * sizeof(Val));
			i += iter->sz;
			iter = iter->next;
		}
	}
}

int stack_isEmpty(Stack* s) {
	assert(s != NULL);
	return s->sz == 0;
}

StackNode* stack_dropTail(Stack* s) {
	assert(s != NULL);
	assert(s->sz > 0);
	StackNode* tail = s->tail->prev;
	s->sz -= s->tail->sz;
	if (tail != NULL) {
		free(s->tail);
		s->tail = tail;
	}
	return tail;
}

void stack_delete(Stack* s) {
	assert(s != NULL);
	while (s->tail != &s->head) {
		stack_dropTail(s);
	}
	s->head.sz = 0;
}

StackNode* node_new(unsigned capacity, StackNode* prev, StackNode* next) {
	StackNode* n = (StackNode*)malloc(sizeof(StackNode) + capacity * sizeof(Val));
	node_init(n, capacity, prev, next);
	return n;
}

void node_init(StackNode* n, unsigned capacity, StackNode* prev, StackNode* next) {
	assert(n != NULL);
	n->prev = prev;
	n->next = next;
	n->sz = 0;
	n->capacity = capacity;
}

#ifdef STACK_MAIN
#include <stdio.h>

int main(int argc, char* argv[]) {
	Stack s;
	stack_init(&s);

	int v[STACK_MINSZ + 1];
	for (int i = 0; i < STACK_MINSZ + 1; ++i) {
		v[i] = i * 5;
	}

	printf("TEST push & pop\n");
	stack_push(&v[0], &s);
	assert(s.sz == 1);
	assert(s.capacity == STACK_MINSZ);
	assert(s.head.sz == 1);
	int e = stack_pop(&s);
	assert(e == v[0]);
	assert(s.head.sz == 0);

	printf("TEST grow\n");
	for (int i = 0; i < STACK_MINSZ; ++i) {
		stack_push(&v[i], &s);
	}
	stack_push(&v[STACK_MINSZ], &s);
	assert(s.sz == STACK_MINSZ + 1);
	assert(s.capacity == STACK_MINSZ * 2);
	assert(s.head.sz == STACK_MINSZ);

	printf("TEST toArr\n");
	int a2[STACK_MINSZ + 1];
	stack_toArr(&s, a2);
	assert(s.head.sz == STACK_MINSZ);
	for (int i = 0; i < STACK_MINSZ + 1; ++i) {
		assert(a2[i] == v[i]);
	}

	printf("TEST border pop\n");
	assert(stack_pop(&s) == v[STACK_MINSZ]);
	assert(stack_pop(&s) == v[STACK_MINSZ - 1]);
	assert(s.head.sz == STACK_MINSZ - 1);
	stack_push(&v[STACK_MINSZ - 1], &s);
	stack_push(&v[STACK_MINSZ], &s);
	assert(s.head.sz == STACK_MINSZ);

	printf("TEST clear\n");
	stack_clear(&s);
	assert(s.head.sz == 0);

	stack_delete(&s);

	printf("SUCCESS\n");

	return 0;
}
#endif
