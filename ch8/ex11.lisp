(defun fib (n)
  (cond ((equal n 0) 0)
        ((equal n 1) 1)
        (t (+ (fib (- n 1)) (fib (- n 2))))))