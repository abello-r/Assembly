#! /bin/bash

nasm -f macho64 *.s
gcc *.o main.c -o ./exec
rm *.o
clear
./exec
rm exec