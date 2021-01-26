cpu x86-64

; ft_write(rdi, rsi, rdx)

segment .text
		global _ft_write
		EXTERN ___error

_ft_write:
		mov rax, 0x2000004
		syscall
		jc _error
		ret

_error:
		push r11
		mov r9, rax
		call ___error
		mov [rax], r9
		mov rax, -1
		pop r11
		ret
