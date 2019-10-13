(defun chop (x) 
  (when x
    (setf (car x) (car (last x)))
    (setf (cdr x) nil)))