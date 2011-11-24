;; Find K'th element of LIST
(defun element-at (list k) 
    "Returns element of LIST at position K"
    (if (eq k 1) (car list)
	(element-at (cdr list) (- k 1))))
