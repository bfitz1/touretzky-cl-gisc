(defun first-non-integer (x)
  (dolist (e x 'none)
    (unless (integerp e)
      (return e))))