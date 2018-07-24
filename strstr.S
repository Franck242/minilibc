BITS 64

	global strstr
    
strstr:
	push rbp
	mov RBP, RSP
end:
	pop rsi
	pop rcx
	leave
	ret
finish:
	mov rax, rdi
	jmp end
running:
	mov rcx, 0
	mov r15b, [rsi+rcx]
	cmp [rdi], byte 0
	je error
	cmp r15b, 0
	je finish
	cmp [rdi], r15b
	je find_place
	inc rdi
	jmp running
find_place:
        inc rcx
	mov r15b, [rsi+rcx]
	cmp [rsi+rcx], byte 0
	je  finish
	cmp [rdi+rcx], r15b
	jne running
	cmp [rdi+rcx], r15b
	je  find_place
error:
	mov rax, 0
	jmp end
