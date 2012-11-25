; table to keep track of lines, useful for gotos.
; isn't this just a variable for saving the current go line?
(defvar *g-goto*)

; a list containing the line numbers of a program
(defvar *numbers*)

; table to keep track of lines, useful for gotos.
; the key is the line lumber, the value is the line to be evaluated
(defvar *lines*)

; program environment both variable bindings and...?
(defvar *vtable*)
 
; symboltable, maps keywords to (lisp) function names.
; list is filled up during the execution of the program.
(defvar *stable*)

; table for storing from, to, and...?
(defvar *fortable*)

; table for storing function declared with def in basic
(defvar *ftable*)

; table for storing subroutines
(defvar *substack*)

; table for storing arrays,
; needed since arrays and variable can have the same idetifier
(defvar *atable*)

(defun init-globals (program)
  (progn
    (setf *g-goto* nil)
    (setf *numbers* (mapcar #'(lambda (x) (cadr x)) program))
    (setf *lines* (make-hash-table))
    (setf *vtable* (make-hash-table))
    (setf *stable* (make-hash-table))
    (setf *fortable* (make-hash-table))
    (setf *ftable* (make-hash-table))
    (setf *atable* (make-hash-table))
    (setf *substack* nil)))