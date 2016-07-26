	.globl __start
	.data
number: .space 32
	.text

__start:
	li	$v0, 4003
	li   	$a0, 0
	la      $a1, number
	li     	$a2, 32
	syscall
	#li	$v0, 4004
	#li	$a0, 1
	#la 	$a1, number
	#la	$a2, 32
	#syscall
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
