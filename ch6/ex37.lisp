(defun rotate-left (x)
  (append (cdr x) (list (first x))))

(defun rotate-right (x)
  (append (last x) (butlast x)))