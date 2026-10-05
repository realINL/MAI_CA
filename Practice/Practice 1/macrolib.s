.macro print_int (%x)
    li    a7, 1
    mv    a0, %x
    ecall
.end_macro

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
