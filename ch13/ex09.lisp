(setf *crypto-text*
 '("zj ze kljjls jf slapzi ezvlij pib kl jufwxuj p hffv jupi jf"
   "enlpo pib slafml pvv bfwkj"))

;; This was a fun one. Here's the translation:
;;
;; "zj ze kljjls jf slapzi ezvlij pib kl jufwxuj p hffv jupi jf"
;; "it is better to remain silent and be thought a fool than to"
;;
;; "enlpo pib slafml pvv bfwkj"
;; "speak and remove all doubt"

(setf *encipher-table* (make-hash-table))
(setf *decipher-table* (make-hash-table))

(defun make-substitution (ch1 ch2)
  (setf (gethash ch1 *decipher-table*) ch2)
  (setf (gethash ch2 *encipher-table*) ch1))

(defun undo-substitution (ch)
  (let ((en (gethash ch *decipher-table*)))
    (setf (gethash ch *decipher-table*) nil)
    (setf (gethash en *encipher-table*) nil)))

(defun clear ()
  (clrhash *encipher-table*)
  (clrhash *decipher-table*))

(defun decipher-string (string)
  (let* ((len (length string))
         (new-string (make-string len :initial-element #\Space)))
    (dotimes (i len)
      (when (gethash (aref string i) *decipher-table*)
        (setf (aref new-string i) (gethash (aref string i) *decipher-table*))))
    new-string))

(defun show-line (string)
  (format t "~&~A" string)
  (format t "~&~A" (decipher-string string)))

(defun show-text (cryptogram)
  (dolist (line cryptogram)
    (show-line line)
    (format t "~%~%")))

(defun get-first-char (x)
  (char-downcase
    (char (format nil "~A" x) 0)))

(defun read-letter ()
  (let ((x (read)))
    (if (or (equal x 'end) (equal x 'undo))
        x
        (get-first-char x))))

(defun sub-letter (ch)
  (let ((x (gethash ch *decipher-table*)))
    (cond (x (format t "~&That letter has been deciphered already."))
          (t
           (format t "~&What does (~A) decipher to? " ch)
           (let ((en (read-letter)))
             (if (gethash en *encipher-table*)
                 (format t "~&That letter has been enciphered already.")
                 (make-substitution ch en)))))))

(defun undo-letter ()
  (format t "~&Undo which letter? ")
  (let ((ch (read-letter)))
    (if (gethash ch *decipher-table*)
        (undo-substitution ch)
        (format t "~&That letter hasn't been deciphered yet."))))

(defun solve (cryptogram)
  (do ((ch nil))
      (nil)
      (show-text cryptogram)
      (format t "~&Substitute which letter? ")
      (setf ch (read-letter))
      (cond ((characterp ch) (sub-letter ch))
            ((equal ch 'undo) (undo-letter))
            ((equal ch 'end) (return t))
            (t (format t "~&I didn't understand that. Try again.")))))