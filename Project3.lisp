; Problem 1

(defun set-member (set item)
    (COND
        ((EQ item (CAR set)) T)
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
        ((NULL set-2) set-1)
        ((EQ (CAR set-1) (CAR set-2))
            (set-union (CDR set-1) set-2)
        )
        ((NOT(EQ (CAR set-1) (CAR set-2))) 
            (set-union set-1 (CDR set-2))
        )
    )
)

(setq result (set-union '(1 2) '(2 4)))
(WRITE result)
(TERPRI)