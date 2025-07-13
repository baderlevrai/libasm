bits 64

section .text ; code
	global ft_strcpy

	ft_strcpy:
		mov rdx, rdi
		jmp .loop
	.return: ; Add '\0' to dest and return it
		mov al, 0
		mov [rdi], al
		mov rax, rdx
		ret
	.loop:
		cmp byte [rsi], 0
		je .return
		mov al, [rsi] ; al = byte
		mov [rdi], al
		add rsi, 1
		add rdi, 1
		jmp .loop