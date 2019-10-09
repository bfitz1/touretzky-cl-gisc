(defun f (x k)
  (find-if 
    #'(lambda (n) (and (> n (- k 10))
                       (< n (+ k 10))))
    x))