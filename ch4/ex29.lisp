(defun logical-and (x y) (and x y t))

(defun logical-and-if (x y)
  (if x
      (if y t nil)
      nil))

(defun logical-and-cond (x y)
  (cond 
    (x (cond 
         (y t) 
         (t nil)))
    (t nil)))