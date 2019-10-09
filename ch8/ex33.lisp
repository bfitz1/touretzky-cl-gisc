(defun my-remove (e x)
  (cond ((null x) nil)
        ((equal e (first x)) (my-remove e (rest x)))
        (t (cons (first x) (my-remove e (rest x))))))