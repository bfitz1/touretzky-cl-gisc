(defun add1 (n) (+ n 1))
(defun sub1 (n) (- n 1))

(defun rec-plus (x y)
  (if (zerop y) x (rec-plus (add1 x) (sub1 y))))