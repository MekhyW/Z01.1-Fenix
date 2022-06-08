; 0 - PUSH argument 0
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
; 1 - PUSH argument 1
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
; 2 - PUSH argument 2
leaw $(2), %A
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
; End
