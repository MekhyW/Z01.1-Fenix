; 0 - OR
leaw $SP, %A
subw (%A), $1, %A
movw (%A), %D
decw %A
orw (%A), %D, %D
movw %D, (%A)
addw %A, $1, %D
leaw $0, %A
movw %D, (%A)
; End
