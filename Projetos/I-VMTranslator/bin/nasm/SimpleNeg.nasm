; 0 - NEG
leaw $SP, %A
subw (%A), $1, %A
movw (%A), %D
negw %D
movw %D, (%A)
addw %A, $1, %D
leaw $0, %A
movw %D, (%A)
; End
