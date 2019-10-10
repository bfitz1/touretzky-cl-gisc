;; Me, a Lisper, thinking: Whatever could HELPER be?
(defun my-reverse (x)
  (helper nil x))

;; Also me, a Haskeller, screaming: IT'S LEFT FOLD! EVERYTHING IS FOLDS!
(defun helper (s x)
  (cond ((null x) s)
        (t (helper (cons (car x) s) (cdr x)))))