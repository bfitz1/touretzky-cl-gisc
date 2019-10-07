;; This function will never reach its second branch because the first
;; one always evaluates to be true
(defun make-odd (x)
  (cond (t x)
        ((not (oddp x)) (+ x 1))))

(defun make-odd-v2 (x)
  (cond ((not (oddp x)) (+ x 1))
        (t x)))