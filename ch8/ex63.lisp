(defun my-union (s1 s2)
  (cond ((null s1) s2)
        ((member (first s1) s2) (my-union (rest s1) s2))
        (t (my-union (rest s1) (cons (first s1) s2)))))

(defun my-intersection (s1 s2)
  (my-intersection-tr nil s1 s2))

(defun my-intersection-tr (s s1 s2)
  (cond ((null s1) s)
        ((member (first s1) s2)
         (my-intersection-tr (cons (first s1) s) (rest s1) s2))
        (t (my-intersection-tr s (rest s1) s2))))

(defun my-set-difference (s1 s2)
 (my-set-difference-tr nil s1 s2))

(defun my-set-difference-tr (s s1 s2)
  (cond ((null s1) s)
        ((member (first s1) s2)
         (my-set-difference-tr s (rest s1) s2))
        (t (my-set-difference-tr (cons (first s1) s) (rest s1) s2))))