BITS 64

	global memset

memset:
	cmp byte[rdi], 0
	je error
	mov rax, rdi
	mov r8d, 0

loop:	
	cmp byte [rdi], 0
	je end
	cmp r8d, edx
	je end
	mov byte [rdi], sil
	inc rdi
	inc r8d
	jmp loop

error:
	mov rax, 0
	ret
end:
	ret
