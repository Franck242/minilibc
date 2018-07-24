BITS 64

	global memcpy

memcpy:
	mov rcx, 0
	mov rbp, rsp
loop:	
	cmp rcx, rdx
	je finish
	mov r8b, [rsi]
	mov [rdi], r8b
	cmp [rsi], byte 0
	je finish
	inc rsi
	inc rcx
	inc rdi
	jmp loop
finish:
	mov rax, rdi
	ret
