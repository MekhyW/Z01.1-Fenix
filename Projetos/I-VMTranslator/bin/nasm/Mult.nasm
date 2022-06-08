; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 0
leaw $0, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - POP local 0
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %D
leaw $0, %A
movw %D, %A
movw (%A), %D
leaw $7, %A
movw %D, (%A)
leaw $1, %A
movw (%A), %D
leaw $0, %A
addw %D,%A, %D
leaw $8, %A
movw %D, (%A)
leaw $7, %A
movw (%A), %D
leaw $8, %A
movw (%A), %A
movw %D, (%A)
; 3 - PUSH argument 1
leaw $(1), %A
movw %A, %D
leaw $2, %A
movw (%A), %A
addw %D, %A, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 4 - POP local 1
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %D, %A
movw (%A), %D
leaw $7, %A
movw %D, (%A)
leaw $1, %A
movw (%A), %D
leaw $1, %A
addw %D,%A, %D
leaw $8, %A
movw %D, (%A)
leaw $7, %A
movw (%A), %D
leaw $8, %A
movw (%A), %A
movw %D, (%A)
; 5 - PUSH constant 0
leaw $0, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 6 - PUSH local 1
leaw $(1), %A
movw %A, %D
leaw $1, %A
movw (%A), %A
addw %D, %A, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 7 - EQ
leaw $SP, %A
subw (%A), $1, %D
movw %D, %A, (%A)
movw (%A), %D
decw %A
subw %D, (%A), %D
movw $0, (%A)
leaw $END, %A
jne %D
nop
leaw $SP, %A
subw (%A), $1, %A
movw $0, %D
not %D
movw %D, (%A)
END:
; 9 - PUSH local 0
leaw $(0), %A
movw %A, %D
leaw $1, %A
movw (%A), %A
addw %D, %A, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 10 - PUSH argument 0
leaw $(0), %A
movw %A, %D
leaw $2, %A
movw (%A), %A
addw %D, %A, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 11 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
addw $1, %A, %D
leaw $0, %A
movw %D, (%A)
; 12 - POP local 0
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %D
leaw $0, %A
movw %D, %A
movw (%A), %D
leaw $7, %A
movw %D, (%A)
leaw $1, %A
movw (%A), %D
leaw $0, %A
addw %D,%A, %D
leaw $8, %A
movw %D, (%A)
leaw $7, %A
movw (%A), %D
leaw $8, %A
movw (%A), %A
movw %D, (%A)
; 13 - PUSH local 1
leaw $(1), %A
movw %A, %D
leaw $1, %A
movw (%A), %A
addw %D, %A, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 14 - PUSH constant 1
leaw $1, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 15 - SUB
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw (%A), %D, %D
movw %D, (%A)
addw %A, $1, %D
leaw $0, %A
movw %D, (%A)
; 16 - POP local 1
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %D, %A
movw (%A), %D
leaw $7, %A
movw %D, (%A)
leaw $1, %A
movw (%A), %D
leaw $1, %A
addw %D,%A, %D
leaw $8, %A
movw %D, (%A)
leaw $7, %A
movw (%A), %D
leaw $8, %A
movw (%A), %A
movw %D, (%A)
; 18 - PUSH local 0
leaw $(0), %A
movw %A, %D
leaw $1, %A
movw (%A), %A
addw %D, %A, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 21 - PUSH constant 7
leaw $7, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 22 - PUSH constant 2
leaw $2, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 23 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
addw $1, %A, %D
leaw $0, %A
movw %D, (%A)
; 24 - PUSH constant 3
leaw $3, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; End
