# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#
.text
main:
	
	
	
	li $v0 5
	syscall
	move $t0 $v0
	
	li $v0 5
	syscall
	move $t1 $v0
	
	sub $t2 $t0 $t1
	sll $t2 $t2 4
	addi $t2 $t2 8

	li $v0 1
	move $a0 $t2
	syscall
	

	j exit
	
	

exit:
	li $v0 10
	syscall

