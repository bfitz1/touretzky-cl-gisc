;; Prompt doesn't say how to handle scales that aren't fahrenheit or
;; celsius. Oh well.
(defun boilingp (temp scale)
  (cond ((equal scale 'fahrenheit) (> temp 212))
        ((equal scale 'celsius) (> temp 100))
        (t nil)))

(defun boilingp-if (temp scale)
  (if (equal scale 'fahrenheit)
      (> temp 212)
      (if (equal scale 'celsius)
          (> temp 100)
          nil)))

(defun boilingp-and-or (temp scale)
  (or (and (equal scale 'fahrenheit) (> temp 212))
      (and (equal scale 'celsius) (> temp 100))))