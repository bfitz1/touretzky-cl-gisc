(defun right-side (x)
  (cdr (member '-vs- x)))

(defun left-side (x)
  (reverse (cdr (member '-vs- (reverse x)))))

(defun count-common (x)
  (length (intersection (right-side x)
                        (left-side x))))

;; (compare '(small red metal cube -vs-
;;            red plastic small cube))
;; => (3 COMMON FEATURES)
(defun compare (x)
  (list (count-common x) 'common 'features))