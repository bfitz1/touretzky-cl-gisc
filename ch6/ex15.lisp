(defun contains-article-p (sent)
  (intersection '(the a an) sent))

(defun contains-article-p-member (sent)
  (or (member 'the sent)
      (member 'a sent)
      (member 'an sent)))

;; We can't be expressed with just AND because any successful
;; search for an article which isn't the last one must be followed
;; by another which could potentially fail.