;; Reverse list
(defun pop-last (list) 
  "Returns list minus last element"
  (if (null (cdr list)) nil
      (append (list (car list)) (pop-last (cdr list)))))
(defun reverse-list (list)
  "Return reversed list"
  (if (null list) nil
      (append (last list) (reverse-list (pop-last list)))))
    
