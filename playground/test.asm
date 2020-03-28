;%include "putchar.asm"

section .text
	global _start
	extern _putchar
_start:
mov rax, 42
call _putchar
mov rax, 10
call _putchar
mov rax, 60
mov rdi, 0
syscall
