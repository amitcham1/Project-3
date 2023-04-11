;; set-member
(defun set-member (set item)
  (cond ((null set) nil)
        ((equal (car set) item) t)
        (t (set-member (cdr set) item)))
    (pprint(find set item))
    )

(set-member '(1 3 4 2) '(1 2 3 4 5))
