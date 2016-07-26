	.globl __start
	.text

__start:
	li   	$s1, 54323
	li   	$t2, 4
	li   	$t3, 54321
	sub  	$t1, $s1, $t3 
	div  	$s3, $t2, $t1
	mflo 	$t1 
	li   	$t6, 4
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
