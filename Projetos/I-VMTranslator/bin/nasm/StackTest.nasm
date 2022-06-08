; 0 - PUSH constant 17
leaw $17, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - PUSH constant 17
leaw $17, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - EQ
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
; 3 - PUSH constant 17
leaw $17, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 4 - PUSH constant 16
leaw $16, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 5 - EQ
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
; 6 - PUSH constant 16
leaw $16, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 7 - PUSH constant 17
leaw $17, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 8 - EQ
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
; 9 - PUSH constant 892
leaw $892, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 10 - PUSH constant 891
leaw $891, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 11 - EQ
leaw $SP, %A
subw (%A), $1, %D
movw %D, %A, (%A)
movw (%A), %D
decw %A
subw %D, (%A), %D
movw $0, (%A)
leaw $END, %A
jge %D
nop
leaw $SP, %A
subw (%A), $1, %A
movw $0, %D
not %D
movw %D, (%A)
END:
; 12 - PUSH constant 891
leaw $891, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 13 - PUSH constant 892
leaw $892, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 14 - EQ
leaw $SP, %A
subw (%A), $1, %D
movw %D, %A, (%A)
movw (%A), %D
decw %A
subw %D, (%A), %D
movw $0, (%A)
leaw $END, %A
jge %D
nop
leaw $SP, %A
subw (%A), $1, %A
movw $0, %D
not %D
movw %D, (%A)
END:
; 15 - PUSH constant 891
leaw $891, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 16 - PUSH constant 891
leaw $891, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 17 - EQ
leaw $SP, %A
subw (%A), $1, %D
movw %D, %A, (%A)
movw (%A), %D
decw %A
subw %D, (%A), %D
movw $0, (%A)
leaw $END, %A
jge %D
nop
leaw $SP, %A
subw (%A), $1, %A
movw $0, %D
not %D
movw %D, (%A)
END:
; 18 - PUSH constant 32767
leaw $32767, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 19 - PUSH constant 32766
leaw $32766, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 20 - EQ
leaw $SP, %A
subw (%A), $1, %D
movw %D, %A, (%A)
movw (%A), %D
decw %A
subw %D, (%A), %D
movw $0, (%A)
leaw $END, %A
jle %D
nop
leaw $SP, %A
subw (%A), $1, %A
movw $0, %D
not %D
movw %D, (%A)
END:
; 21 - PUSH constant 32766
leaw $32766, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 22 - PUSH constant 32767
leaw $32767, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 23 - EQ
leaw $SP, %A
subw (%A), $1, %D
movw %D, %A, (%A)
movw (%A), %D
decw %A
subw %D, (%A), %D
movw $0, (%A)
leaw $END, %A
jle %D
nop
leaw $SP, %A
subw (%A), $1, %A
movw $0, %D
not %D
movw %D, (%A)
END:
; 24 - PUSH constant 32766
leaw $32766, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 25 - PUSH constant 32766
leaw $32766, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 26 - EQ
leaw $SP, %A
subw (%A), $1, %D
movw %D, %A, (%A)
movw (%A), %D
decw %A
subw %D, (%A), %D
movw $0, (%A)
leaw $END, %A
jle %D
nop
leaw $SP, %A
subw (%A), $1, %A
movw $0, %D
not %D
movw %D, (%A)
END:
; 27 - PUSH constant 57
leaw $57, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 28 - PUSH constant 31
leaw $31, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 29 - PUSH constant 53
leaw $53, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 30 - ADD
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
; 31 - PUSH constant 112
leaw $112, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 32 - SUB
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
; 33 - NEG
leaw $SP, %A
subw (%A), $1, %A
movw (%A), %D
negw %D
movw %D, (%A)
addw %A, $1, %D
leaw $0, %A
movw %D, (%A)
; 34 - AND
leaw $SP, %A
subw (%A), $1, %A
movw (%A), %D
decw %A
andw (%A), %D, %D
movw %D, (%A)
addw %A, $1, %D
leaw $0, %A
movw %D, (%A)
; 35 - PUSH constant 82
leaw $82, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 36 - OR
leaw $SP, %A
subw (%A), $1, %A
movw (%A), %D
decw %A
orw (%A), %D, %D
movw %D, (%A)
addw %A, $1, %D
leaw $0, %A
movw %D, (%A)
leaw $SP, %A
subw (%A), $1, %A
movw (%A), %D
notw %D
movw %D, (%A)
addw %A, $1, %D
leaw $0, %A
movw %D, (%A)
; End
