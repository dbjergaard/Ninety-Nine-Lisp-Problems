; Return last two elements of LIST
(defun 2nd-to-last (list)
    "Returns list of last two elements of LIST"
    (if (null (cddr list)) list
	(2nd-to-last (cdr list))))
