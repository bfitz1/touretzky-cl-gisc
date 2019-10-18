(defmacro set-mutual (v1 v2)
  `(setf v1 ',v2)
  `(setf v2 ',v1))