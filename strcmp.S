BITS 64

	global strcmp
	
strcmp:
	cmp rdi, 0
	je error
	cmp rsi, 0
	je error
	mov r8b, byte[rdi]
	mov r9b, byte[rsi]
	cmp r8b, r9b
	je condition
	jne end
condition:
	cmp r8b, 0
	je end
	inc rdi
	inc rsi
	jmp strcmp
error:
	mov rax, 0
	ret
end1:
	mov rax, 1
	ret
end2:
	mov rax, -1
	ret
end:
	sub r8b, r9b
	cmp r8b, 0
	jg end1
	cmp r8b, 0
	jl end2
	movsx eax, r8b
	ret
