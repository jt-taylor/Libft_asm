#include <stdio.h>
#include <string.h>

void	ft_bzero(void *s, size_t n);

int		main(void)
{
	char		*str = strdup("wow this is a string");

	printf("%s\n", str);
	ft_bzero(str, strlen(str));
	printf("%s\n", str);
}
