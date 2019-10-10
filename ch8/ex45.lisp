;; The key observation here is that we have to account for the current
;; depth when we recurse into the CAR. We can do that easily by just
;; incrementing the CAR reduction by one.
(defun paren-depth (x)
  (cond ((null x) 1)
        ((atom x) 0)
        (t (max (+ 1 (paren-depth (car x)))
                (paren-depth (cdr x))))))