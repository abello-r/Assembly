cpu x86-64

segment .text
		global _ft_strlen

_ft_strlen:
		mov rax, 0
_while:
		cmp BYTE [rdi + rax], 0
		je _fin
		inc rax
		jmp _while
_fin:
		ret
