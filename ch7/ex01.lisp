(defun add1 (n) (+ n 1))

(mapcar #'add1 '(1 3 5 7 9))
;; => (2 4 6 8 10)