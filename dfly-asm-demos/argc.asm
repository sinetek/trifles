# nasm -f elf64
# simple program that exits straightaway.
global _start

section .text

_start:
	; So on FreeBSD we get the argc in ??
	mov	rsi, rdi
	mov	rdx, 16

	mov	rax, 4 ; write
	mov	rdi, 1 ; stdout
;	mov	rsi, msg
;	mov	rdx, 16 ; count
	syscall

	mov	rax, 1 ; exit
	syscall

section .data
msg:	db "The lazy fox jumps over the dog."

