(defun encode-direct (lst &optional prev-a)
  "Directly encode a list using run-length-encoding scheme"
  (cond ((null lst) (append (list prev-a)))
	((null prev-a) (encode-direct (cdr lst) (list 1 (car lst))))
	((eq (cadr prev-a) (car lst)) (encode-direct (cdr lst) (list (1+ (car prev-a)) (car lst))))
	(T  (append (list prev-a) (encode-direct (cdr lst) (list 1 (car lst)))))))

