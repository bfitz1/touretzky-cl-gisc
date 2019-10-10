;; Using the augmented recursion template with the recursive call as
;; the augmenting value.
(defun bury (x n)
  (cond ((zerop n) x)
        (t (list (bury x (- n 1))))))