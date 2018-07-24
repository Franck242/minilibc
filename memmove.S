BITS 64

	global memmove

memcpy:
	mov rcx, 0
	mov rbp, rsp
loop:	
	mov r15b, [rsi]
	mov r8b, r15b
	mov [rdi], r8b
	cmp [rsi], byte 0
	je finish
	cmp rcx, rdx
	je finish
	inc rdi
	inc rsi
	inc rcx
	jmp loop
finish:
	ret
