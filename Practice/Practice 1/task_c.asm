.include "macrolib.s"

.eqv D, 16   # default 16
.eqv N, 6   # ordinal number of student

main:
    mv t0, zero
    li t1, D
    addi t1, t1, N
    print_int_n(t1)

    # counting space
    slli t2, t1, 2
    print_int_n(t2)

    # allocating memory for array
    li a7, 9
    mv a0, t2
    ecall

    # save address of array 
    mv s0, a0

for:
    bge t0, t1, end
    read_int(t3)
    beqz t3, end

    slli t4, t0, 2  
    add t4, s0, t4  # counting address
    sw t3, 0(t4)    # save to array

    addi t0, t0, 1
    j for

#end_for:
#    mv t0, zero

# for_print:
    
#    bge t0, t1, end
#   
#   slli t4, t0, 2
#   add t4, s0, t4
#   lw t3, 0(t4)
#   slli t3, t3, 1
#   print_int_n(t3)

#   addi t0, t0, 1
#   j for_print


end:
    li a7, 10
    ecall
