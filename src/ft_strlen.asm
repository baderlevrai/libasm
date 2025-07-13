bits 64

section .text ; code
	global ft_strlen ; define ft_strlen as a function

	ft_strlen: ; function
		mov rax, 0 ; init ret value
		jmp .loop
	.return: ; final return
		ret
	.loop: ; main loop that check str
		cmp byte [rdi], 0 ; compare curr byte and \0
		je .return ; if equals, ret rax
		add rax, 1 ; inc ret value
		add rdi, 1 ; inc ptr
		jmp .loop