(defun draw-line (n)
  (cond ((zerop n) (format t "~%"))
        (t (format t "*")
           (draw-line (- n 1)))))

(defun draw-box (n m)
  (cond ((zerop m) nil)
        (t (draw-line n)
           (draw-box n (- m 1)))))