	.globl __start
	.data
pi:	.float 3.1415
num:	.float 2.00
	.text

__start:
	la 	$a0, pi
	l.s	$f12, ($a0)
	la	$s5, num
	l.s	$f10, ($s5)
	mul.s	$f12, $f12, $f10
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
