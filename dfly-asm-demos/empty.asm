# nasm -f elf64
# simple program that exits straightaway.
global start

section .text

start:
	mov	rax, 1 ; exit
	syscall

