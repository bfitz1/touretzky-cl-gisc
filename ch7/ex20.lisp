;; Literally not odd:
(defun none-odd (x) (every #'(lambda (n) (not (oddp n))) x))

;; More to the point:
(defun none-odd (x) (every #'evenp x))