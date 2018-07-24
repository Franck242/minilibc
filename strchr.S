BITS 64

	global strchr

strchr:
	cmp byte[rdi], 0
	je none
	cmp sil, byte[rdi]
	je end
	inc rdi
	jmp strchr
	
none:
	mov rax, 0
	ret

end:
	mov rax, rdi
	ret
