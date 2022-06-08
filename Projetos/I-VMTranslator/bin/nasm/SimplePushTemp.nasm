; 0 - PUSH temp 0
leaw $5, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - PUSH temp 1
leaw $6, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - PUSH temp 2
leaw $7, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 3 - PUSH temp 3
leaw $8, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 4 - PUSH temp 4
leaw $9, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 5 - PUSH temp 5
leaw $10, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 6 - PUSH temp 6
leaw $11, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 7 - PUSH temp 7
leaw $12, %A
movw (%A), %D
leaw $0, %A
movw (%A),%A
movw %D, (%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; End
