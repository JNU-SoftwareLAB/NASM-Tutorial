global _start

section .text
_start:
	mov eax, 1
	mov ebx, 2
	call sum
	hlt

sum:
	add eax, ebx
	ret

;nasm -felf32 callAndRet.x86.s -o callAndRet.o
;ld -m elf_i386 callAndRet.o -o callAndRet.out