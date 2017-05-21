#include "stack.h"
#include <stdio.h>

int main(int argc, char *argv[]) {
	stack s;
	stack_init(&s);

	for (int i = 0; i < 100; ++i) {
		stack_push(i + 10, &s);
	}

	ix_stack i;
	stack_head(&i);
	while (!stack_ixAtEnd(&i, &s)) {
		printf("%d\n", stack_get(&i, &s));
		stack_iter(&i, &s);
	}

	while (!stack_isEmpty(&s)) {
		printf("%d\n", stack_pop(&s));
	}

	return 0;
}

