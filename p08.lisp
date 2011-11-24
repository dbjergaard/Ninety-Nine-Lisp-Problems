(defun compress (lst &optional dup)
  "Takes a list and removes duplicates"
  (cond ((null lst) nil)
	((null dup) (setq dup (car lst)) (append (list (car lst)) (compress (cdr lst) dup)) )
	((eql (car lst) dup) (compress (cdr lst) dup))
	(T  (append (list (car lst)) (compress (cdr lst) (car lst))))))
