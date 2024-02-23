// Copyright (c) 2024 chromabox
// this is no better code
#include <stdio.h>
#include <string.h>

extern int sub(char *buf, size_t siz);

// extern int sub(char *buf);
int main(int argc, char **argv)
{
	char ppp[10];
	int i;
	sub(ppp, 5);
	for(i = 0; i < 5; i++) {
		i++;
	}
	return 0;
}
