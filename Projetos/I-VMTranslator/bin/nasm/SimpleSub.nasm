; 0 - SUB
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
; End
