	.globl __start
	.data
chico:	.int	 1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100
	     
	.text

__start:
	addiu	$sp, $sp, -20
	la	$t1, chico
	sw	$t1, ($sp)
	jal	sum_values
	lw	$ra, 16($sp)
	addiu	$sp, $sp, 20
	li   	$v0, 4001
	move 	$a0, $zero
	syscall

sum_values:
	lw	$a0, ($sp)
	move	$t1, $zero
	li	$t2, 99
loop:	
	sll	$t3, $t2, 2
	addu	$t4, $a0, $t3
	lw	$t5, ($t4)
	add	$t1, $t1, $t5
	add	$t2, $t2, -1	
	bgez	$t2, loop
	move	$v0, $t1
	jr	$ra
