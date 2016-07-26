	.globl __start
	.text

__start:
	li	$t0, -2
	bgez	$t0, else
	sub	$t7, $zero, $t0
	b	end	
else:
	move	$t7, $t0
end:
	li   	$v0, 4001
	move 	$a0, $zero
	syscall
