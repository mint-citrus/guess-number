(defun prompt-read (x)
	(format *query-io* x)
	(force-output *query-io*)
	(read-line *query-io*))

(defun read-number ()
	(parse-integer (prompt-read ">")))

(format t "Guess the Number!")
(setq num (random 100))
(loop
(let ((input (read-number)))
	(cond ((> input num) (format t "That number is higher!"))
	      ((< input num) (format t "That number is lower!"))
	       (t (format t "That is correct!") (return))))
)
