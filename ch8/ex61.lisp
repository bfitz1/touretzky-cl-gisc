(defun count-up (n) (count-up-tr nil n))

(defun count-up-tr (s n)
  (cond ((zerop n) s)
        (t (count-up-tr (cons n s) (- n 1)))))