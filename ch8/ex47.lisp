(defun make-loaf (n)
  (if (zerop n) nil (cons 'x (make-loaf (- n 1)))))