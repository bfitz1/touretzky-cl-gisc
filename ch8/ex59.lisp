;; The definition:
;;
;; Factorial(0) = 1
;; Factorial(N) = Factorial(N+1) / (N+1)
;; 
;; is true, though weird at first glance (multiply both sides by N+1).
;; It's also recursive seeing as it's partly defined in terms of itself.
;; Let's try this thing.

(defun factorial (n)
  (cond ((zerop n) 1)
        (t (/ (factorial (+ n 1)) (+ n 1)))))

;; Our recursive step has up increment N, meaning for any positive
;; number it moves away from zero and will never terminate.
;; That's a problem. But hey, it works for zero!