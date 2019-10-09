(defun f (x)
  (length (remove-if-not #'(lambda (w) (equal w 'the))) x))