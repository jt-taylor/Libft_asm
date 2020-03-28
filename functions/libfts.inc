; macros -----------------------------------------------------------------------
%macro exit 0
	mov rax, SYS_EXIT
	mov rdi, 0
	syscall
%endmacro

; defines ----------------------------------------------------------------------
STDIN_FILENO equ 0
STDOUT_FILENO equ 1
STDERR_FILENO equ 2
SYS_EXIT equ 60
