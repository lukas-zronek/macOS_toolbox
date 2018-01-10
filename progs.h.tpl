struct prog {
	char *name;
	int (*f)();
};

%DECLARATIONS%

struct prog all_progs[] = {
%ENTRY_POINTS%
	{ NULL, NULL }
};
