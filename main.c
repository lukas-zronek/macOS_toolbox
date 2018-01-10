#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <gen/progs.h>

int
main(int argc, char **argv)
{
	struct prog *p = NULL;

	if (argc > 1 && argv[1] != NULL && *argv[1] != '\0') {
		for (p=all_progs; p->name != NULL; p++) {
			if(strcmp(argv[1], p->name) == 0) {
				return p->f(argc - 1, argv + 1);
			}
		}

		fprintf(stderr, "%s: %s: command not found\n", argv[0], argv[1]);
	} else {
		fprintf(stderr, "Included programs:\n");

		for (p=all_progs; p->name != NULL; p++) {
			fprintf(stderr, "\t%s\n", p->name);
		}
	}

	return EXIT_FAILURE;
}
