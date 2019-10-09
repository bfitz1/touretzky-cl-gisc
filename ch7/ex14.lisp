(defun intersection (s1 s2)
  (remove-if-not #'(lambda (x) (member x s2)) s1))

(defun union (s1 s2)
  (append s1 (remove-if #'(lambda (x) (member x s1)) s2)))