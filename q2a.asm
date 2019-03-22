main:
	addi	$a0,$zero,3
	jal	fib
	addi	$a0,$v0,0
	li	$v0, 1
	syscall
	li	$v0, 10
	syscall

fib:
	addi	$sp,$sp,-12
	sw	$s0,8($sp)
	sw	$s1,4($sp)
	sw	$ra,0($sp)
        addi	$s0,$a0,0
	li	$v0,1
	addi	$t0,$zero,2
	ble	$s0,$t0,fibexit
	addi	$a0,$s0,-1
	jal	fib
	addi	$s1,$v0,0
	addi	$a0,$s0,-2
	jal	fib
	add	$v0,$s1,$v0
fibexit:
	lw	$ra,0($sp)
	lw	$s1,4($sp)
	lw	$s0,8($sp)
	addi	$sp,$sp,12
	jr	$ra

