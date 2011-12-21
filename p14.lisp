(defun dupli (lst)
  "Duplicate elements of LST"
  (cond ((null lst) nil)
	(T (append (list (car lst)) (list (car lst)) (dupli (cdr lst))))))
