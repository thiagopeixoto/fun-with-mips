	.globl __start
	.text

__start:
	li   	$t1, 16
	sub  	$sp, $sp, $t1
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
