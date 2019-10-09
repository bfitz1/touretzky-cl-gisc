(defun greater-than-five-p (n) (> n 5))

;; Then, use MAPCAR to apply this function to every value in a list:
;;
;; (mapcar #'greater-than-five-p some-list)