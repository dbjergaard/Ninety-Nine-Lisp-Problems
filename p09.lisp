(defmacro neq (obj1 obj2)
  `(null (eq ,obj1 ,obj2)))

(defun group (lst dup)
  "Build a list of similar atoms"
  (cond ((null lst) nil)
	((eql (car lst) dup) (append  (list (car lst))  (group (cdr lst) dup)))
	(T nil)));

(defun pack (lst &optional dup)
  "Takes a list and groups duplicates"
  (cond ((null lst) nil)
	((null dup) 
	 (setq dup (car lst))
	 (append (list (group lst dup)) (pack (cdr lst) (car lst))))
	((neq (car lst) dup) 
	 (append (list  (group lst (car lst))) (pack lst (car lst))))
	(T (append (pack (cdr lst) (car lst) )))))
