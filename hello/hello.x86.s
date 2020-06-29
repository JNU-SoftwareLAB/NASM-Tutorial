section .data
hello_string db "Hello World!", 0x0d, 0x0a
hello_string_len equ $ - hello_string

section .text
global _start

_start:
	mov eax, 4 ; eax <- 4, syscall number (print) But, never execute.
	mov ebx, 1 ; ebx <- 1, syscall argument1 (stdout) But, never execute.
	mov ecx, hello_string ; ecx <- exit_string, syscall argument2 (string ptr) But, never execute.
	mov edx, hello_string_len ; edx <- exit_string_len, syscall argument3 (string len) But, never execute.
	int 0x80; ; syscall But, never execute.
	mov eax, 1 ; eax <- 1, syscall number (exit) But, never execute.
	mov ebx, 0 ; ebx <- 0, syscall argument1 (return value) But, never execute.
	int 0x80; syscall But, never execute.

;nasm -felf32 hello.x86.s -o hello.o
;ld -m elf_i386 hello.o -o hello.out