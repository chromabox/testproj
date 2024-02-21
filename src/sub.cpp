// this is no better code
#include <stdio.h>
#include <string.h>

const char* kMessage = "Hello World!";

int sub(char *buf)
{
	memcpy(buf, kMessage, sizeof(kMessage));
	return 0;
}