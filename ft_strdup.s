cpu x86-64

segment .text
		EXTERN _malloc
		EXTERN _ft_strcpy
		EXTERN _ft_strlen
		global _ft_strdup

_ft_strdup:
		push rsi
		push rdi
		call _ft_strlen
		mov r9, rdi
		mov rdi, rax
		inc rdi
		push r9
		call _malloc
		pop r9
		cmp rax, 0
		je _failure
		mov rsi, r9
		mov rdi, rax
		call _ft_strcpy
		pop rdi
		pop rsi
		ret

_failure:
		xor rax, rax
		pop rdi
		pop rsi
		ret
