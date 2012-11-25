;UTILITIES
; checks if the value needs to be read from the variable table
; normal values and array values are returned directly... .
(defun funs-to-vals (lst)
  (mapcar 
   (lambda (x) 
     (if (consp x) 
       (if (eql (car x) :var) 
         (getval (cadr x) *vtable*) 
         (cadr x)) 
       x)) 
   lst))

;replaces all ocurrences of old in lst with new
(defun rp (old new lst)
      (mapcar (lambda (x) (if (eql x old) new (if (consp x) (rp old new x) x))) lst))

(defun data-val (val)
  (list :val val))

(defun data-var (var)
  (list :var var))

(defun insert-tabs (str-list)
  (labels 
      ((insert-tabs-aux (strs line-pos acc)
         (if (null strs) 
           (reverse acc)
           (if (consp (car strs))       ;else
             (insert-tabs-aux (cdr strs) (cadr (car strs)) 
                              (cons 
                               (format nil (concatenate 'string "~" (ensure-string (- (cadr (car strs)) line-pos)) "T")) 
                               acc))
             (insert-tabs-aux ;else 
              (cdr strs) 
              (+ line-pos (length (ensure-string (car strs))))
              (cons (car strs) acc))))))
    (insert-tabs-aux str-list 0 nil)))

(defun ensure-string (string)
  (if (stringp string) 
    string
    (write-to-string string)))
                                                                               