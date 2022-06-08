; 0 - EQ
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
; End
