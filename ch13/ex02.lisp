(defun addprop (sym elem prop)
  (pushnew elem (get sym prop)))

(defun subprop (sym elem prop)
  (setf (get sym prop)
        (remove elem (get sym prop))))

(defun record-meeting (x y)
  (addprop x y 'has-met)
  (addprop y x 'has-met))

(defun forget-meeting (x y)
  (subprop x y 'has-met)
  (subprop y x 'has-met))