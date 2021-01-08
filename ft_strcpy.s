cpu x86-64

segment .text
	global _ft_strcpy

_ft_strcpy:
		mov rcx, 0

_protect:
	cmp rsi, 0
	je _exit 
	cmp rdi, 0
	je _exit

_while:
		mov dl, BYTE[rsi + rcx]
		mov BYTE[rdi + rcx], dl
		cmp dl, 0
		je _return
		inc rcx
		jmp _while

_return:
	mov rax, rdi
_exit:
	ret
