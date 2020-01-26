# Arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	# TODO: Write your code here
	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 5
	syscall
	move $t1, $v0
	
	add $t2, $t0, $t1
	sll $t2, $t2, 2

	li $v0, 5
	syscall
	move $t3, $v0

	li $t4, 5
	mult $t4, $t3
	mflo $t4

	sub $t2, $t2, $t4
	li $v0, 1
	move $a0, $t2
	syscall


exit:
	# Exit
	li $v0, 10
	syscall

