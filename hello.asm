# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	prompt:.asciiz "Enter a integer: "

.text
main:
	
	
	li $v0 4
	la $a0 prompt
	syscall	
	
	li $v0 5
	syscall
	move $t0 $v0
	
	li $t3 2
	li $t4 3

	and $t1 $t0 1
	
	bne $t1 1 even
	mult $t0 $t3

	
    even:
	bne $t1 0 print
	mult $t0 $t4

	
	
    print:
	
	mflo $t0
	
	li $v0 1
	move $a0 $t0
	syscall
	

	j exit
	
	

exit:
	li $v0 10
	syscall

