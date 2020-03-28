%include "libfts.inc"

section .text
global ft_bzero

;	void bzero(void *s, size_t n)
ft_bzero:

;preserve the args
push rsi
push rdi

;set the values to 0
_loop:
cmp rsi, 0		;the num of bytes to 0
jng _loop_end
mov BYTE [rdi], 0	;treat rdi as a pointer and not a value ; not sure if using the load instruction set would just be faster than doing it this way
inc rdi
dec rsi
jmp _loop

_loop_end:
;reset the input args
pop rdi
pop rsi
ret
