#include "libasm.h"

int main ()
{
	char *s = "Hola";
	char *f = "Pablito clavo un clavito";
	char tmp[100];
	char tmp2[100];
	
	printf("[FT_STRLEN TEST]\n");
	printf("Fake -> [%d][%d]\n", ft_strlen(s), ft_strlen(f));
	printf("Real -> [%lu][%lu]", strlen(s), strlen(f));

	printf("Fake -> [%s]\n", ft_strcpy(tmp, f));
	printf("Real -> [%s]", strcpy(tmp2, f));
	return (0);
}