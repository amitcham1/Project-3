(defun list-member (a_list item)
    (COND
        ((EQ item (CAR a_list)) (WRITE-LINE "T"))
        ((NULL (CAR a_list)) (WRITE-LINE "NIL"))
        ((NOT(EQ item (CAR a_list))) (list-member (CDR a_list) item))
    )
)

(list-member '(1 2 3) 3)
(list-member '(1 2 3) 4)