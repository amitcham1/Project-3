;; set-member
;; set-member
(defun set-member (set item)
    (cond ((null set) (write nil))
        ((equal (car set) item) t (write t))
        (t (set-member (cdr set) item)))
    )
(set-member '(4  2 3 5 8 5 3 2) 8)
