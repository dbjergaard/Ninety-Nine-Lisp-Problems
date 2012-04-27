;; Problem provides two parts (and hence two "end-user" functions)

;; My solution is technically cheating since it implements the general
;; case first, but since this about the educational experience, I
;; figure it comes out all the same

;; Part A: 

;; In how many ways can a group of 9 people work in 3 disjoint
;; subgroups of 2, 3 and 4 persons? 
(defun group3 (lst)
  (group lst '(2 3 4)))

;; Part B:
;; In how many ways can a group of 9 people work in 3 disjoint
;; subgroups of i, j and k persons? Write a function that generates
;; all the possibilities and returns them in a list.

(defun is-same (lst-a lst-b)
  "Returns T if lst-a is a permutation of lst-b (ie contains all the same elements in different orders)"
(and (not (null (member (car lst-a) lst-b))) (is-same (cdr lst-a) (cdr lst-b))))


(defun group (lst grp)
  "Enumerate all possible ways to group 9 people in 3 disjoint subgroups of 2 3 and 4 persons"
  
  )
