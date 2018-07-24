BITS 64

	global strcspn

strcspn:
	push rbp
	mov rbp, rsp
	mov rax, 0
inc_that:
        inc rax
        inc rdi
	jmp loop_function
comparison:
	mov r15b, [rsi+rcx]
	cmp r15b, [rdi]
	je finished
	cmp r15b, 0
	je inc_that
	inc rcx
	jmp comparison
loop_function:
	mov rcx, 0
	cmp [rdi], byte 0
	je finished
	jmp comparison
finished:
	leave
	ret
