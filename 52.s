	.globl __start
	.data
source:	.int	 1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100
destiny: .space  3200

	.text
__start:
	addiu	$sp, $sp, -20
	la	$t1, source
	sw	$t1, ($sp)
	la	$t1, destiny
	sw	$t1, 4($sp)
	# copy_array(source, destiny)
	jal	copy_array
	lw	$ra, 16($sp)
	addiu	$sp, $sp, 20
	li   	$v0, 4001
	move 	$a0, $zero
	syscall

# void copy_array(int *source, int *destiny)
copy_array:
	lw	$a0, ($sp)
	lw	$a1, 4($sp)
	li	$t2, 99
loop:	
	sll	$t3, $t2, 2
	addu	$t4, $a0, $t3
	addu	$t5, $a1, $t3
	lw	$t1, ($t4)
	sw	$t1, ($t5)
	add	$t2, $t2, -1	
	bgez	$t2, loop
	jr	$ra
