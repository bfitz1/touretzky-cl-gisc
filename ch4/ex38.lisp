(defun nand (x y) (not (and x y)))
(defun nor (x y) (not (or x y)))

;; Let's reuse our previous analysis. We know we have DeMorgan's laws
;; at our disposal. Can we write not in terms of nor? Let's check:
;;
;;   (nor x x) = (not (or x x))
;;             = (not x)

;; Yes, so the derivation amounts to substitution again:
;;
;;   (and x y) = (not (or (not x) (not y)))
;;             = (nor (not x) (not y))
;;             = (nor (nor x x) (nor y y)))
;;
;;   (or x y) = (not (and (not x) (not y)))
;;            = (not (not (or (not (not x)) (not (not y)))))
;;            = (not (not (or x y)))
;;            = (not (nor x y))
;;            = (nor (nor x y) (nor x y))
;;
;;   (nand x y) = (not (and x y))
;;              = (not (nor (nor x x) (nor y y)))
;;              = (nor (nor (nor x x) (nor y y))
;;                     (nor (nor x x) (not y y)))

;; Looks like we just flipped things around some. Easy!

(defun logical-and (x y)
  (and (x y t)))

(defun logical-and-nor (x y)
  (nor (nor x x) (nor y y)))

(defun logical-or (x y)
  (or (and x t) (and y t)))

(defun logical-or-nor (x y)
  (nor (nor x y) (nor x y)))

(defun nand-nor (x y)
  (nor (nor (nor x x) (nor y y))
       (nor (nor x x) (nor y y))))