	.globl __start
	.data
num1:	.int 2147483647
num2:	.int 2147483648
	.text

__start:
	lw	$t1, (num1)
	lw	$t2, (num2)
	subu	$v0, $t1, $t2
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
