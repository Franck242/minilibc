BITS 64

	global strlen

strlen:
	mov rsi, 1
	
loop:	
	cmp byte[rdi], 0
	je end
	mov rax, rsi
	inc rdi
	inc rsi
	jmp loop

error:
	mov rax, 0
	ret

end:
	cmp rsi, 1
	je error
	ret
