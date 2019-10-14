(defun check-all-odd (x)
  (cond ((null x) t)
        (t (format t "~&Checking ~S..." (car x))
           (if (not (oddp (car x)))
               nil
               (check-all-odd (cdr x))))))