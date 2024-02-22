// this is no better code
#include <stdio.h>
#include <string.h>

const char* kMessage = "Hello World!";

int sub(char *buf,size_t siz)
{
	memcpy(buf, kMessage, siz);
	return 0;
}
