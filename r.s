	.globl __start
	.text

__start:
	li	$s4, 4
	sll	$s4, 3
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
