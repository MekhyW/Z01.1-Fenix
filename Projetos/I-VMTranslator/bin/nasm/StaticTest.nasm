; 0 - PUSH constant 111
leaw $111, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - PUSH constant 333
leaw $333, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - PUSH constant 888
leaw $888, %A
movw %A, %D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 3 - POP static 8
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0,%A
movw (%A),%A
movw (%A),%D
leaw $15 ,%A
movw %A ,%D
leaw $7 ,%A
movw %D ,(%A)
LOOP8:
leaw $7 ,%A
movw (%A) ,%D
incw %D
movw %D ,(%A)
leaw (%A) ,%A
movw (%A) ,%D
leaw $LOOP8,%A
jne
nop
leaw $0 ,%A
movw (%A) ,%D
leaw $7 ,%A
leaw (%A) ,%A
movw %D ,(%A)
; 4 - POP static 3
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0,%A
movw (%A),%A
movw (%A),%D
leaw $15 ,%A
movw %A ,%D
leaw $7 ,%A
movw %D ,(%A)
LOOP3:
leaw $7 ,%A
movw (%A) ,%D
incw %D
movw %D ,(%A)
leaw (%A) ,%A
movw (%A) ,%D
leaw $LOOP3,%A
jne
nop
leaw $0 ,%A
movw (%A) ,%D
leaw $7 ,%A
leaw (%A) ,%A
movw %D ,(%A)
; 5 - POP static 1
leaw $0,%A
movw (%A),%D
decw %D
movw %D, (%A)
leaw $0,%A
movw (%A),%A
movw (%A),%D
leaw $15 ,%A
movw %A ,%D
leaw $7 ,%A
movw %D ,(%A)
LOOP1:
leaw $7 ,%A
movw (%A) ,%D
incw %D
movw %D ,(%A)
leaw (%A) ,%A
movw (%A) ,%D
leaw $LOOP1,%A
jne
nop
leaw $0 ,%A
movw (%A) ,%D
leaw $7 ,%A
leaw (%A) ,%A
movw %D ,(%A)
; 6 - PUSH static 3
; 7 - PUSH static 1
; 8 - SUB
; 9 - PUSH static 8
; 10 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
; End
