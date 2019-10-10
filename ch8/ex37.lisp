(defun combine (x y) (+ x y))

(defun fib (n)
  (cond ((equal n 0) 0)
        ((equal n 1) 1)
        (t (combine (fib (- n 1))
                    (fib (- n 2))))))


;; Tracing (fib 3):
;;
;; (fib 3)
;;   Enter FIB
;;     N = 3
;;       Enter FIB
;;         N = 2
;;           Enter FIB
;;             N = 1
;;           FIB returned 1
;;           Enter FIB
;;             N = 0
;;           FIB returned 0
;;           Enter COMBINE
;;             X = 1
;;             Y = 0
;;           COMBINE returned 1
;;       FIB returned 1
;;       Enter FIB
;;         N = 1
;;       FIB returned 1
;;       Enter COMBINE
;;         X = 1
;;         Y = 1
;;       COMBINE returned 2
;;   FIB returned 2

;; COMBINE handles the result of terminal and nonterminal calls.