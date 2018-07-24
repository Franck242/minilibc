BITS 64

	global rindex

rindex:
	cmp byte [rdi], 0
	je end
	cmp sil, 0
	je end
loop:
	cmp byte [rdi], sil
	je found
	cmp byte [rdi], 0
	je end
	inc rdi
	jmp loop
	
found:
	mov rax, rdi
	inc rdi
	cmp byte [rdi], 0
	jne loop
end:
	ret
