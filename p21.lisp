(defun insert-at (ins lst k)
  "Insert INS at Kth position in LST"
  (cond ((null lst) nil)
	((eq k 1) (append (list ins (car lst)) (cdr lst)))
	(T (append (list (car lst)) (insert-at ins (cdr lst) (1- k))))))
