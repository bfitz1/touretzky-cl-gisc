(defun f (x)
  (remove-if-not #'(lambda (l) (equal (length l) 2)) x))