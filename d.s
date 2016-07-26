	.globl __start
	.data
number: .asciiz "1000\n"
	.set size, . - number
	.text

__start:
	li	$v0, 4004
	li   	$a0, 1
	la      $a1, number
	la     	$a2, size
	syscall
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
