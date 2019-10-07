(defun firstzero (x)
  (cond ((zerop (first x)) 'first)
        ((zerop (second x)) 'second)
        ((zerop (third x)) 'third)
        (t 'none)))

;; Trying to evaluate (firstzero 3 0 4) will result in an error since
;; the FIRSTZERO uses functions which expect lists.