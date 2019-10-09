(defun f (x)
  (remove-if-not #'(lambda (n) (and (> n 1) (< n 5))) x))