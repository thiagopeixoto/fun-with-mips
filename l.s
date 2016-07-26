	.globl __start
	.text

__start:
	li	$t1, 99
	move	$v0, $zero
for:
	blez	$t1, end
	add	$v0, $v0, $t1
	add	$t1, $t1, -1
	b	for 	
end:	
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
