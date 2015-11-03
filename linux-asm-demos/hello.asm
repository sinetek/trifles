; 64 bit hello in linux nasm

global _start

section .text
_start:

	mov rax, 1 ; sys_write
	mov rdi, 1 ; stdout
	mov rsi, msg
	mov rdx, 6 ; length
	syscall

	mov rax, 60 ; sys_exit
	mov rdi, 0 ; return 0
	syscall

section .data
msg: db 'hello',0x0A
length: equ $-msg
