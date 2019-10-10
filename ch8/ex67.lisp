(defun legalp (x)
  (cond ((numberp x) t)
        ((and (consp x) (equal (length x) 3))
         (and (legalp (first x))
              (legalp (third x))
              (member (second x) '(+ - * /))
              t))
        (t nil)))
         