	.data
input1:	.asciiz "Input first number: "
input2:	.asciiz "Input second number: "
output: .asciiz "The quotient is: "
remainder: .asciiz "\nThe remainder is: "
point:  .asciiz "."
	
	.text
main:	
	li $v0, 4
	la $a0, input1
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, input2
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	div $t1, $t2
	mfhi $t3
	mflo $t4
	
	li $v0, 4
	la $a0, output
	syscall
	
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 4
	la $a0, remainder
	syscall
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	li $v0, 10
	syscall