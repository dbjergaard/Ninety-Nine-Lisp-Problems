; Create a list of the last element of LIST
(defun my-last (list)
    "Returns list of last element of LIST"
    (if (null (cdr list)) list
	(my-last (cdr list))))
