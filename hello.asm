# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
choose: .asciiz "Choose an integer number between 0 and 1000:\n"
magic: .asciiz "Hello World!\nThe magic number is "
marks: .asciiz "!!!"
#Text Area (i.e. instructions)
.text
main:
	
	# TODO: Write your code here
	li $v0, 4
	la $a0, choose
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, magic
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, marks
	syscall


exit:
	# Exit
	li $v0, 10
	syscall

