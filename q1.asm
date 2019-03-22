main:
	addi	$sp,$sp,-8
	sw	$s0,0($sp)
	sw	$s1,4($sp)
	addi	$s0,$zero,10
	addi	$a0,$zero,5
	addi	$a1,$zero,4
	jal	f1
	div	$s1,$v0,$a1
	add	$s1,$s0,$s1
f1:
	mult	$a0,$a1
	mflo	$t0
	addi	$v0,$t0,0
	jr	$ra

	
