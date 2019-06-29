[org 0x7c00]

init:
	mov si, hello
	mov ah, 0x0e

print_char:
	lodsb
	cmp al, 0
	je done
	int 0x10
	jmp print_char

done:
	hlt

hello:
	db "Hello, world!", 0


times 510-($-$$) db 0
dw 0xaa55
