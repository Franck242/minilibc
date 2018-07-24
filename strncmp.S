BITS 64

	global strncmp

strncmp:
	mov r8, 0

while:
	mov r8b, byte[rdi]
	mov r9b, byte[rsi]
	cmp byte[rdi], 0
	je end_tmp
	cmp byte[rsi], 0
	je end_tmp
	cmp r8, rdx
	je end_tmp
	inc rdi
	inc rsi
	inc r8
	jmp while

end_tmp:
	sub r8b, r9b
	cmp r8b, 0
	je end2
	cmp r8b, 0
	jl end1
	cmp r8b, 0
	jg end3
	
end1:
	mov rax, -1
	ret
end2:
	mov rax, 0
	ret
end3:
	mov rax, 1
	ret
	
