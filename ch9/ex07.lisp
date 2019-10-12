(defun cookie-monster ()
  (format t "~&Give me cookie!!!")
  (format t "~&Cookie? ")
  (let ((x (read)))
    (cond ((equal x 'cookie)
           (format t "Thank you!...Munch munch much...BURP"))
          (t
            (format t "No want ~S...~%~%" x)
            (cookie-monster)))))