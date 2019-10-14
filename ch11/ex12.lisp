(defun power-of-2 (n)
  (do ((i 1 (* 2 i))
       (m n (- m 1)))
      ((zerop m) i)))