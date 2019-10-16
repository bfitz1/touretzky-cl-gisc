(setf *hist-array* nil)
(setf *total-points* nil)

(defun new-histogram (bins)
  (setf *hist-array* (make-array bins :initial-element 0))
  (setf *total-points* 0))

(defun record-value (n)
  (if (<= 0 n 10)
      (incf (aref *hist-array* n))
      (format t "The value ~S isn't between 0 and 10" n)))

;; Not sure how right-aligned numbers are being accomplished in the
;; book.
(defun print-hist-line (i)
  (let ((cnt (aref *hist-array* i)))
    (format t "~&~2S [~3S] " i cnt)
    (dotimes (j cnt)
      (format t "*"))))

(defun print-histogram ()
  (dotimes (i (length *hist-array*))
    (print-hist-line i))
  (format t "~&~S total" (reduce #'+ *hist-array*)))