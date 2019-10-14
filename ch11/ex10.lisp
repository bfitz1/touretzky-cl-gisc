(defun launch (n)
  (dotimes (i n)
    (format t "~S..." (- n i)))
  (format t "Blast off!"))