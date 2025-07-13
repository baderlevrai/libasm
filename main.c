#include "libasm.h"
#include <stdio.h>
#include <string.h>

int main()
{
	//STRLEN
	char tmp[] = "Hello World";
	printf("Testing ft_strlen:\n");
	printf(" Testing string \"%s\"\n", tmp);
	printf(" strlen: %ld\n ft_strlen: %ld\n", strlen(tmp), ft_strlen(tmp));
}