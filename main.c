#include "libasm.h"
#include <stdio.h>
#include <string.h>

int main()
{
	//STRLEN
	char tmp[] = "Hello World";
	printf("Testing ft_strlen:\n");
	printf(" Testing string \"%s\"\n", tmp);
	printf(" strlen: %ld\n ft_strlen: %ld\n\n", strlen(tmp), ft_strlen(tmp));

	//STRCPY
	char dest1[15];
    char dest2[15];
    printf("Testing ft_strcpy:\n");
    printf(" Source string: \"%s\"\n", tmp);
    strcpy(dest1, tmp);
    ft_strcpy(dest2, tmp);
    printf(" strcpy result: \"%s\"\n", dest1);
    printf(" ft_strcpy result: \"%s\"\n\n", dest2);
}