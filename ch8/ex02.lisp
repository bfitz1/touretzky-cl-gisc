(defun anyoddp (x)
  (if (null x)
      nil
      (if (oddp (car x))
          t
          (anyoddp (cdr x)))))