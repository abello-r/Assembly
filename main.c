#include "libasm.h"

int main ()
{
	char *s = "2n triste tigre en un trigal";
	char *f = "dablito clavo un clavito";
	char tmp[100];
	char tmp2[100];

	system("clear");
	for(int i = 0; i < 100; i++)
		printf("\n");
	printf("\n------------------- ✅ \033[32m LIBASM TEST \033[0m✅ -------------------\n");
	printf("\n\033[32m[ FT_STRLEN ]\033[0m\n\n");
	printf("\033[36mFake -> [%d][%d]\033[0m\n", ft_strlen(s), ft_strlen(f));
	printf("Real -> [%lu][%lu]\n", strlen(s), strlen(f));
	printf("\n-------------------------------------- 🔰\n");
	
	printf("\n\033[32m[ FT_STRCPY ]\033[0m\n\n");
	printf("\033[36mFake -> [%s]\033[0m\n", ft_strcpy(tmp, f));
	printf("Real -> [%s]\n", strcpy(tmp2, f));
	printf("\n-------------------------------------- 🔰\n");
	
	printf("\n\033[32m[ FT_STRCMP ]\033[0m\n\n");
	printf("\033[36mFake-> [%d]\033[0m\n", ft_strcmp(s, f));
	printf("Real-> [%d]\n", strcmp(s, f));
	printf("\n-------------------------------------- 🔰\n");

	printf("\n\033[32m[ FT_WRITE ]\033[0m\n\n");
	printf("\033[36mFake -> [%d]\033[0m", ft_write(1, "hola soy Carlos Magno\n", 23));
	printf("\nReal -> [%zd]", write(1, "hola soy Carlos Magno\n", 23));
	printf("\n\n-------------------------------------- 🔰\n");

	printf("\n\033[32m[ FT_STRDUP ]\033[0m\n\n");
	char *t;
	t = strdup(s);
	char *x;
	x = ft_strdup(s);
	printf("\033[36mFake -> [%s]\033[0m\n", x);
	printf("Real -> [%s]\n", t);
	free(t);
	free(x);
	printf("\n-------------------------------------- 🔰\n");
	
	printf("\n\033[32m[ FT_READ ]\033[0m\n\n");
	char p[100];
	ft_read(1, p, 100);
	printf("\nFake -> %s", p);
	read(1, p, 100);
	printf("\nReal -> %s", p);
	printf("\n-------------------------------------- 🔰\n");
	return (0);
}