(defun howcompute (x y z)
  (cond ((equal z (+ x y)) 'sum-of)
        ((equal z (* x y)) 'product-of)
        (t '(beats me))))

;; HOWCOMPUTE could be extended by adding other arithmetic operations
;; like subtraction and division.