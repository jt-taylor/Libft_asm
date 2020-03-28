section .data
	hello_world db "Hellow World!",10

section  .text
	global _start

;input -> rax
;output -> putstr in rax
_start:
mov rax, hello_world
call _putstr
mov rax, 60
mov rdi, 0
syscall

_putstr:
push rax
mov rbx, 0

_strlen_loop:
; inc by byte
inc rax
inc rbx
mov cl, [rax]
cmp cl, 0
jne _strlen_loop

mov rax, 1
mov rdi, 1
pop rsi
mov rdx, rbx
syscall
ret
