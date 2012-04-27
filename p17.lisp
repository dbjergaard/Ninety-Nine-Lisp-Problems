(defun first-n (lst n)
  "Return first N elements of LST"
  (cond ((or (eq n 0) (null lst)) nil)
	(T (append (list (car lst)) (first-n (cdr lst) (1- n))))))

(defun split (lst n &optional o-n o-lst)
"Split LST into two lists, at position N"
 (cond ((null lst) nil)
       ((null o-lst) (split lst n n lst))
       ((eq n 1) (list (first-n o-lst o-n) (cdr lst)))
       (T (split (cdr lst) (1- n) o-n o-lst))))
