(defun nand (x y) (not (and x y)))

;; At first glance using nand in this way looks mysterious, but it's
;; actually just a consequence of DeMorgan's Laws:
;;
;;   (and x y) = (not (or (not x) (not y)))
;;   (or x y) = (not (and (not x) (not y)))

;; Next, observe that we can write not in terms of nand:
;;
;;   (nand x x) = (not (and x x))
;;              = (not x)

;; With that in mind, we can derive the following:
;;
;;   (and x y) = (not (or (not x) (not y)))
;;             = (not (not (and (not (not x)) (not (not y)))))
;;             = (not (not (and x y)))
;;             = (not (nand x y))
;;             = (nand (nand x y) (nand x y))
;;
;;   (or x y) = (not (and (not x) (not y)))
;;            = (nand (not x) (not y))
;;            = (nand (nand x x) (nand y y))

;; That's all there is to it! No guesswork needed!

(defun logical-and (x y)
  (and (x y t)))

(defun logical-and-nand (x y)
  (nand (nand x y) (nand x y)))

(defun logical-or (x y)
  (or (and x t) (and y t)))

(defun logical-or-nand (x y)
  (nand (nand x x) (nand y y))