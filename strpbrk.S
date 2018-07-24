BITS 64

	global strpbrk

strpbrk:
	push rbp
	mov rbp, rsp
while_function:
	mov rcx, 0
	cmp [rdi], byte 0
	je error
	mov r15b, [rsi+rcx]
	cmp r15b, 0
	je error
	cmp [rdi], r15b
	je end2
	jmp verify_value

inc_that:
	inc rdi
	jmp while_function
error:
	mov rax, 0
	ret
end:
	mov rax, 0
	jmp end1

end2:
	mov rax, rdi
	jmp end1
end1:
	leave
	ret

verify_value:
	inc rcx
	mov r15b, [rsi+rcx]
	cmp r15b, [rdi]
	je end2
	cmp r15b, 0
	je inc_that
	jmp verify_value
