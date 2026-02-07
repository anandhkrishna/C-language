_start:
    addi x1, x0, 1
    addi x2, x0, 5
    addi x3, x0, 0

repeat_addition:
    add x3, x3, x1
    addi x2, x2, -1
    bne x2, x0, repeat_addition    # labels are just place holder for the instruction address (offset).

j .                                # jump to current offset - means infinite loop here.
