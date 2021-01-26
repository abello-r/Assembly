cpu x86-64

segment .text
	global _ft_strcmp

_ft_strcmp:
	mov rcx, 0
	mov rax, 0

_protect:
	mov al, BYTE[rdi]
	mov bl, BYTE[rsi]
	cmp al, 0
	je _return
	cmp bl, 0
	je _return

_while:
	mov al, BYTE[rdi]
	mov bl, BYTE[rsi]
	cmp al, bl
	jne _return
	cmp al, 0
	je _return
	cmp bl, 0
	je _return
	inc rsi
	inc rdi
	jmp _while

_return:
	movzx rax, al
	movzx rbx, bl
	sub rax, rbx
	ret
