	.globl __start
	.data
array:	.int 1, 10, 20, 30, 0
	.text

__start:
	la	$t2, array
	lw	$t0, ($t2)
	move	$s1, $zero
while:
	beqz	$t0, end
	addu	$s1, $s1, $t0
	addiu	$t2, $t2, 4
	lw	$t0, ($t2)
	b	while	
end:	
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
