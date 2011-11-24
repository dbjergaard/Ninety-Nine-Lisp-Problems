;; Find out if list is palindrome
(defun palindrome-p (list)
  "Return t if list is palindrome, nil else"
  (equal list (reverse list)))
