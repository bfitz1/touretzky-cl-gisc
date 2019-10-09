;; Augmentation is not needed here: it's sufficient to recurse deeper
;; until one of our tests pass. This is done using the double-test
;; tail recursion template.
(defun all-equal (x)
  (cond ((null (rest x)) t)
        ((not (equal (first x) (second x))) nil)
        (t (all-equal (rest x)))))