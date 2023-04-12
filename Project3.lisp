; Problem 1

(defun set-member (a_list item)
    (COND
        ((EQ item (CAR a_list)) (WRITE-LINE "T"))
        ((NULL (CAR a_list)) (WRITE-LINE "NIL"))
        ((NOT(EQ item (CAR a_list))) (set-member (CDR a_list) item))
    )
)

(set-member '(1 2 3) 3)
(set-member '(1 2 3) 4)

; Problem 2

