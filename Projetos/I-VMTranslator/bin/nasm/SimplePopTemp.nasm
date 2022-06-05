; 0 - POP temp 7
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %A
movw (%A), %D
leaw $12, %A
movw %D, (%A)
; 1 - POP temp 6
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %A
movw (%A), %D
leaw $11, %A
movw %D, (%A)
; 2 - POP temp 5
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %A
movw (%A), %D
leaw $10, %A
movw %D, (%A)
; 3 - POP temp 4
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %A
movw (%A), %D
leaw $9, %A
movw %D, (%A)
; 4 - POP temp 3
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %A
movw (%A), %D
leaw $8, %A
movw %D, (%A)
; 5 - POP temp 2
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %A
movw (%A), %D
leaw $7, %A
movw %D, (%A)
; 6 - POP temp 1
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %A
movw (%A), %D
leaw $6, %A
movw %D, (%A)
; 7 - POP temp 0
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0, %A
movw (%A), %A
movw (%A), %D
leaw $5, %A
movw %D, (%A)
; End
