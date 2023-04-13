; Problem 1

(defun set-member (set item)
    (COND
        ((EQUAL item (CAR set)) T)
        ((NULL (CAR set)) NIL)
        ((NOT(EQ item (CAR set))) 
            (set-member (CDR set) item)
        )
    )
)

(SETQ result (set-member '(1 2 3) 3))
(WRITE result)
(TERPRI)
(SETQ result (set-member '(1 2 3) 4))
(WRITE result)
(TERPRI)

; Problem 2 NOT WORKING YET

(defun set-union (set-1 set-2)
    (COND 
        ((NULL set-1) set-2)
        ((EQUAL (set-member set-2 (CAR set-1)) T) 
            (set-union(CDR set-1) set-2)
        )
        ((EQUAL (set-member set-2 (CAR set-1)) NIL) 
            (set-union(CDR set-1) (CONS (CAR set-1) set-2))
        )
    )
)

(WRITE(list (set-union '(1 2) '(2 4))))
(TERPRI)