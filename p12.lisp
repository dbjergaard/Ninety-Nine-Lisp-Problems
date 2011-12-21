(defmacro neq (obj1 obj2)
  `(null (eq ,obj1 ,obj2)))

(defun decode-rle-list (lst)
"Decodes a Run Length Encoded list"
(cond ((null lst) nil)
      ((null (car lst)) nil)
      ((listp (car lst)) (if (neq 0 (caar lst)) 
			     (append (cdar lst) (decode-rle-list (append (list (list (1- (caar lst)) (cadar lst))) (cdr lst)) ))
			     (append (decode-rle-list (cdr lst)))))
      ((atom (car lst)) (append (list (car lst)) (decode-rle-list (cdr lst))))
      (T (append (decode-rle-list (cdr lst))))))
