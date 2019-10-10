(defun my-union (x y)
  (cond ((null x) y)
        ((member (car x) y) (my-union (cdr x) y))
        (t (cons (car x) (my-union (cdr x) y)))))

;; Noticed I could change it slightly to make tail calls. That's
;; good, right?
(defun my-union-tc (x y)
  (cond ((null x) y)
        ((member (car x) y) (my-union-tc (cdr x) y))
        (t (my-union-tc (cdr x) (cons (car x) y)))))