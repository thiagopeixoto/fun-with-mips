	.globl __start
	.data
array: .int 10, 20, 30, 40,50
	.text

__start:
	la	$a0, array
	lw	$t8, (array)
	li	$t1, 32768
	sw	$t1, 16($a0)
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
