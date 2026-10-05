.include "macrolib.s"
 
main:
    li t1 6
    read_int(t0)
    beq t0, t1, if_true
    j if_false

if_true:
    li t1, 1
    print_int(t1)
    j end

if_false:
    li t1, 0
    print_int(t1)
    j end
end:
    li a7, 10
    ecall

    
