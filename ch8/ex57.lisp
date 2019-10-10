(defun left-half (x)
  (let* ((k (length x))
         (n (if (oddp k) (+ k 1) k)))
    (take (/ n 2) x)))

(defun take (n x)
  (cond ((or (zerop n) (null x)) nil)
        (t (cons (car x) (take (- n 1) (cdr x))))))