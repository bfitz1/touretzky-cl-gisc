(defun fact (n) (fact-tr 1 n))

(defun fact-tr (s n)
  (cond ((zerop n) s)
        (t (fact-tr (* n s) (- n 1)))))