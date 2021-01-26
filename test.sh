#! /bin/bash

nasm -f macho64 ft_strlen.s
nasm -f macho64 ft_strcpy.s
nasm -f macho64 ft_strcmp.s
nasm -f macho64 ft_write.s
nasm -f macho64 ft_read.s
nasm -f macho64 ft_strdup.s
gcc *.o main.c -o ./exec
rm *.o libasm.a
clear		
./exec
rm exec
