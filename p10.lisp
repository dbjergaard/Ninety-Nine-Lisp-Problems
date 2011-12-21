(load "~/Ninety-Nine-Lisp-Problems/p09.lisp")
(load "~/Ninety-Nine-Lisp-Problems/p04.lisp")

(defun deep-encode (lst)
  (cond ((null lst) nil)
	((listp (car lst)) (append (list (list (n-elements (car lst)) (caar lst))) (deep-encode (cdr lst))))
	(T (append (deep-encode (cdr lst))))))
(defun encode (lst)
  (deep-encode (pack lst)))