	.globl __start
	.text

__start:
	li	$t0, -2
	not	$s0, $t0
	addi	$s0, $s0, 1 
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
