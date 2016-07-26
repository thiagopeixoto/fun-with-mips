	.globl __start
	.data
buffer: .space 32
	.text

__start:
	li	$v0, 4003
	li   	$a0, 0
	la      $a1, buffer
	li     	$a2, 32
	syscall
	#li	$v0, 4004
	#li	$a0, 1
	#la 	$a1, buffer
	#la	$a2, 32
	#syscall
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
