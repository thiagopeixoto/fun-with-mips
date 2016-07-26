	.globl __start
	.text

__start:
	li   	$t4, 12
	li   	$t5, 2
	li   	$t6, 4
	add  	$t3, $t4, $t5
	sub  	$t3, $t3, $t6
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
