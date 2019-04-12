main:
	addi $a0,$zero,1
	jal  f1

f1:
	addi $sp,$sp,-4
	sw   $ra,0($sp)
	jal  f2
	mul  $v0,$v0,$v0
	mul  $v0,$v0,$v0
	addi $v0,$v0,3
	lw   $ra,0($sp)
	addi $sp,$sp,4

f2:
    addi $sp,$sp,-4
	sw   $ra,0($sp)
	jal  f3
	mul  $t0,$v0,$v0
	mul  $v0,$v0,$t0
	addi $v0,$v0,3
	lw   $ra,0($sp)
	addi $sp,$sp,4

f3:
    addi $sp,$sp,-4
	sw   $ra,0($sp)
	jal  f4
	mul  $t0,$v0,$v0
	mul  $t1,$t0,$v0
	add $v0,$t0,$t1
	lw   $ra,0($sp)
	addi $sp,$sp,4

f4:
    addi $sp,$sp,-4
	sw   $ra,0($sp)
	mul  $v0,$a0,7
	lw   $ra,0($sp)
	addi $sp,$sp,4     