;; set-member
(defun set-member (set item)
    (cond ((null set) (write nil))
        ((equal (car set) item) t (write t))
        (t (set-member (cdr set) item)))
    )
(set-member '(4  2 3 5 8 5 3 2) 8)
;; set-union
(defun set-union (set-1 set-2)
    (if (null set-1) set-2
        (if (set-member set-2 (car set-1))
            (set-union (cdr set-1) set-2)
            (set-union (cdr set-1) (cons (car set-1) set-2)))
    )
)
(print (set-union '(1 2 3 4) '(2 3 4 5)))
;; set-intersection
(defun set-intersection (set-1 set-2) 
    (if (null set-1) NIL
        (if (set-member set-2 (car set-1))
            (cons (car set-1) (set-intersection (cdr set-1) set-2))
            (set-intersection (cdr set-1) set-2)) ))
(print (set-intersection '(1 2 3 4 5) '(4 3 2 5 6)))

;; set-diff
(defun set-diff (set-1 set-2)
  (cond ((null set-1) '())
        ((set-member set-2 (car set-1))
         (set-diff (cdr set-2) set-1)
         (set-diff (cdr set-1) set-2))
        (t (cons (car set-1) (set-diff (cdr set-1) set-2)))))
(print (set-diff '(1 2 6) '(2 3 4 5)))
