#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                                                              (user-homedir-pathname))))
    (when (probe-file quicklisp-init)
          (load quicklisp-init)))


(ql:quickload :jonathan
              :silent t)

; pick a key name that your json does not have
(setf *key* "_id")

; TODO if the json is large we'll need to do one object at a time (in a streaming fashion)
(setf *jsonstr* (reduce #'(lambda (x y) (concatenate 'string x y)) 
                        (uiop:read-file-lines "/dev/stdin")))

(setf *a* (jonathan:parse *jsonstr* 
                          :as :hash-table  ))

(let ((id 0)) 
  (defun add-id (input) 
    "mutates input"
    (typecase input
      (hash-table (progn
                    (maphash #'(lambda (k v)
                                 (add-id v))
                             input)
                    (setf (gethash *key*
                                   input)
                          (incf id))))
      (cons (mapcar #'add-id
                    input))
      (t nil))))

(add-id *a*)

(format t "~A" (jonathan:to-json *a*))
