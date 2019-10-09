;; In other words, use simultaneous recursion with our double-test
;; template.
(defun my-nth (n x)
  (cond ((zerop n) (first x))
        ((null x) nil)
        (t (my-nth (- n 1) (rest x)))))