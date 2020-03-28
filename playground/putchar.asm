section .bss
	digit resb 1
section .text
	global _putchar
_putchar:
;assume that the char is in tht rax register
mov [digit], al;al is the smallest byte from the rax register
mov rax, 1
mov rdi, 1
mov rsi, digit
mov rdx, 1
syscall
ret
