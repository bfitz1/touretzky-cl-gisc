(defun my-set-difference (x y)
  (cond ((null x) nil)
        ((member (first x) y) (my-set-difference (rest x) y))
        ((t (cons (first x) (my-set-difference (rest x) y))))))