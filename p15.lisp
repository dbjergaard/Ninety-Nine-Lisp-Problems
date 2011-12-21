(defun copy (a n)
  "Copy a n times"
  (cond ((eq n 0) nil)
	(T (append (list a) (copy a (1- n))))))

(defun repli (lst n)
  "Replicate elements of LST N times"
  (cond ((null lst) nil)
	(T (append (copy (car lst) n) (repli (cdr lst) n)))))
