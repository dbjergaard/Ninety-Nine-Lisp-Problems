;; Length of list
(defun n-elements (list) 
    "Returns number of elements in LIST"
    (if (null list) 0
	(1+ (n-elements (cdr list)))))
    
