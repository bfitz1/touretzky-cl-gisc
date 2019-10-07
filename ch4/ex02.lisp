;; A smarter function would not affect zero at all. But this will have
;; to do for now.
(defun further (n)
  (if (< n 0) (- n 1) (+ n 1))