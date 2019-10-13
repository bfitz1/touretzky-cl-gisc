(setf *friends* nil)

(defun meet (person)
  (cond ((equal person (first *friends*))
         (incf *multiple-meetings*)
         'we-just-met)
        ((member person *friends*)
         (incf *multiple-meetings*)
         'we-know-each-other)
        (t
         (push person *friends*)
         'pleased-to-meet-you)))

(defun forget (person)
  (if (member person *friends*)
      (setf *friends*
            (remove-if #'(lambda (x) (equal person x))
                       *friends*))
      'i-dont-know-you))