(load "~/Ninety-Nine-Lisp-Problems/p20.lisp")
(load "~/Ninety-Nine-Lisp-Problems/p21.lisp")
(defun swap (lst i j) 
       "Swap elements i and j in lst"
       (let ((ith (nth i lst))
	     (jth (nth j lst)))
	   (insert-at ith (remove-at (insert-at jth (remove-at lst (1+ i)) (1+ i)) (1+ j)) (1+ j))))

; modified from http://swisspig.net/r/post/blog-200603301157
(defun lsort (lst)
  (if (null lst) nil
      (let* ((pivot (car lst))
	     (comp (lambda (i) (< (length i) (length pivot)))))
	(append (lsort (remove-if-not comp (cdr lst)))
		(list pivot)
		       (lsort (remove-if comp (cdr lst)))))))

(defun lfreq (lst &optional ln freq)
  "Count the number of times the list length appears in lst"
  (cond ((null lst) nil)
	((or (null freq) (null ln)) (lfreq (cdr lst) (length (car lst)) 1))
	((= (length (car lst)) ln) (lfreq (cdr lst) ln (1+ freq)))
	(T (lfreq (cdr lst)))
	))

(defun lfsort (lst)
  "Sort list according to frequency"
  )
