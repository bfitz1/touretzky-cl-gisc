(defun throw-die () 
  (+ 1 (random 6)))

(defun throw-dice ()
  (list (throw-die) (throw-die)))

(defun snake-eyes-p (throw)
  (equal throw '(1 1)))

(defun boxcars-p (throw)
  (equal throw '(6 6)))

(defun instant-win-p (throw)
  (let ((value (+ (first throw) (second throw))))
    (or (equal value 7) (equal value 11))))

(defun instant-loss-p (throw)
  (or (snake-eyes-p throw)
      (boxcars-p throw)
      (equal 3 (+ (first throw) (second throw)))))

(defun say-throw (throw)
  (cond ((snake-eyes-p throw) 'snake-eyes)
        ((boxcars-p throw) 'boxcars)
        (t (+ (first throw) (second throw)))))

(defun craps ()
  (let* ((throw (throw-dice))
         (d1 (first throw))
         (d2 (second throw))
         (value (say-throw throw)))
    (cond ((instant-win-p throw)
           (list 'throw d1 'and d2 '-- value '-- 'you 'win))
          ((instant-loss-p throw)
           (list 'throw d1 'and d2 '-- value '-- 'you 'lose))
          (t 
           (list 'throw d1 'and d2 '-- 'your 'point 'is value)))))

(defun try-for-point (point)
  (let* ((throw (throw-dice))
         (d1 (first throw))
         (d2 (second throw))
         (value (say-throw throw)))
    (cond ((equal value 7)
           (list 'throw d1 'and d2 '-- value '-- 'you 'lose))
          ((equal value point)
           (list 'throw d1 'and d2 '-- value '-- 'you 'win))
          (t 
           (list 'throw d1 'and d2 '-- value '-- 'throw 'again)))))