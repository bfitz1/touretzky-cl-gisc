;; We stop recursing when n is zero and returns nil. Of course,
;; it'll never stop if given a number less than zero.
(defun laugh (n)
  (cond ((zerop n) nil)
        (t (cons 'ha (laugh (- n 1))))))