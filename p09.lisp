(defun pack (lst &optional dup)
  "Takes a list and removes duplicates"
  (cond ((null lst) nil)
	((null dup) (setq dup (car lst)) (append (list (car lst)) (pack (cdr lst) dup)) )
	((eql (car lst) dup) (pack (cdr lst) dup))
	(T  (append (list (car lst)) (pack (cdr lst) (car lst))))))
