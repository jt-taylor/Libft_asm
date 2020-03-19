section .data
text db "Hellow World!",10
section .text
	global _start
_start:
mov rax, 1
mov rdi, 1
mov rsi, text
mov rdx, 14
syscall

mov rax, 60
mov rdi, 0
syscall

;the syscalls take arguments like this
;id of syscall is rax
;then each succsussive arugemnt is in the following  register
;1st arg rdi
;2nd arg rsi
;.. rdx
;r10
;r8
;r9

;there are three .define sections
;	.text for the actual code
;	.data for predefined data goes , is replaced in compilation
;	.bss  is data allocated for furture use

;label is for "labeling" sections of code (who knew ?)
;	might as well be function names right
;	is swapped out in the compiler
;_start label is the int main() for asm every program needs _start
;global tells the linker to keep track of the address of the label;
;ie all labels are static unless you specify that they are global, _start has to global for the linker to work properly
