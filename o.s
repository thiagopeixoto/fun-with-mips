	.globl __start
	.text

__start:
	li	$a0, -2
	li	$s1, -5
	mul	$s1, $s1, $a0
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
