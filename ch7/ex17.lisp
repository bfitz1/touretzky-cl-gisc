;; Using a custom reducing function:
(defun f (x)
  (reduce #'(lambda (a b) (+ (length a) (length b))) x))

;; Using + and MAPCAR: 
(defun g (x) (reduce #'+ (mapcar #'length x)))