	.globl __start
	.data
hello:  .asciiz "Hello World\n"
	.set size, . - hello
	.text

__start:
	li	$v0, 4004
	li   	$a0, 1
	la      $a1, hello
	la     	$a2, size
	syscall
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
