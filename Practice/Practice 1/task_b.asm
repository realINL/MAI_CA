.eqv Y, 121
.eqv H, 6

# print number with '\n'
.macro print_int_n (%x)
    li    a7, 1
    mv    a0, %x
    ecall
    
    li    a7, 11
    li    a0, '\n'
    ecall
.end_macro

.macro read_int (%x)
    li    a7, 5
    ecall
    mv    %x, a0
.end_macro
 
.macro min (%x, %y)
    mv x1, %x            
    ble %x, %y, done_min     
    mv x1, %y           
    done_min:
.end_macro

.macro max (%x, %y)
    mv x2, %x            
    bge %x, %y, done_max     
    mv x2, %y           
    done_max:
.end_macro

    
main:
    li t1, H 
    li t2, Y
    read_int(t0)
    max(t0, t2)
    min(t0, t2)
    j for
   
for:
    bgt x1, x2, end_for
    print_int_n(x1)
    add x1, x1, t1
    j for

end_for:
    li a7, 10
    ecall

    
