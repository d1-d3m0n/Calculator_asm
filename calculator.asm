%include "util.asm"
global _start

section .text
_start:

first_msg:
	mov rdi,first
	call printstr

first_input:
	call readint
	mov [num1],rax

second_msg:
	mov rdi,second
	call printstr

second_input:
	call readint
	mov [num2],rax

operator_msg:
	mov rdi,op_msg
	call printstr


operator_input:
	mov rdi,operator
	mov rsi,2
	call readstr

cmp_operators:
	movzx rdi, byte [operator]
	cmp rdi,43 ; +
	je addition
	cmp rdi,45 ; -
	je subtraction
	cmp rdi,42 ; *
	je multiply
	cmp rdi,47 ; /
	je division
	cmp rdi,37
	je remainder


addition:
	mov rdi,[num1]
	add rdi,[num2]
	call result

subtraction:
	mov rdi,[num1]
	sub rdi,[num2]
	call result

multiply:
	mov rdi,[num1]
	imul rdi,[num2]
	call result
	
division:
	mov rdx,0
	mov rax,[num1]
	mov rbx,[num2]
	idiv rbx
	mov rdi,rax
	call result

remainder:
	mov rdx,0
	mov rax,[num1]
	mov rbx,[num2]
	idiv rbx
	mov rdi,rdx
	call result

result:
	call printint
	call endl
	call exit0

exception:
	mov rdi,error_msg
	call printstr
	call endl
	call exit0



section .data
	first: db "Enter first number: ",0
	second: db "Enter second number: ",0
	op_msg: db "Enter the operator(+,-,*,/,%): ",0
	error_msg: db "Can't perform this action!",0

section .bss
	operator: resb 2
	num1: resb 8
	num2: resb 8
	