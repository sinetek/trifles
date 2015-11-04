; 64 bit in linux nasm

global _start

section .text
_start:
	pop r10 ; argc in r10
	pop r11 ; argv[?] in r11 


	mov rax, 1 ; sys_write
	mov rdi, 1 ; stdout
	mov rsi, r11
	mov rdx, r10 ; length
	syscall

	mov rax, 60 ; sys_exit
	mov rdi, 0 ; return 0
	syscall

section .data
msg: db 'hello',0x0A
length: equ $-msg
