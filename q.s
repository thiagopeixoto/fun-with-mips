	.globl __start
	.text

__start:
	li	$s1, 10
	li	$s2, 4
	li	$s3, 2
	div	$s2, $s2, $s3
	sub	$s3, $s1, $s2 
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
