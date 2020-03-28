section .data
promp db "What is your name?",10
_out_text db "Hello, "

section .bss
name resb 16

section .text
	global _start
_start:
call _print_prompt
call _get_name
call _print_out
call _print_name
mov rax, 60
mov rdi, 1
syscall

_print_prompt:
mov rax, 1
mov rdi, 1
mov rsi, promp
mov rdx, 19
syscall
ret

_print_out:
mov rax, 1
mov rdi, 1
mov rsi, _out_text
mov rdx, 7
syscall
ret

_get_name:
mov rax, 0
mov rdi, 0
mov rsi, name
mov rdx, 16
syscall
ret

_print_name:
mov rax, 1
mov rdi, 1
mov rsi, name
mov rdx, 16
syscall
ret
