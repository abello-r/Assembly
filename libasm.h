#ifndef LIBASM_H
# define LIBASM_H

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>

extern int	ft_strlen(char *s);
extern char	*ft_strcpy(char *dst, const char *src);
extern int	ft_strcmp(const char *s1, const char *s2);
extern int	ft_write(int fd, const void *buf, size_t n);
extern int	ft_read(int fd, void *buf, size_t n);
extern char	*ft_strdup(const char *str);
#endif