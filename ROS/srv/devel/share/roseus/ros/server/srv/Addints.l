;; Auto-generated. Do not edit!


(when (boundp 'server::Addints)
  (if (not (find-package "SERVER"))
    (make-package "SERVER"))
  (shadow 'Addints (find-package "SERVER")))
(unless (find-package "SERVER::ADDINTS")
  (make-package "SERVER::ADDINTS"))
(unless (find-package "SERVER::ADDINTSREQUEST")
  (make-package "SERVER::ADDINTSREQUEST"))
(unless (find-package "SERVER::ADDINTSRESPONSE")
  (make-package "SERVER::ADDINTSRESPONSE"))

(in-package "ROS")





(defclass server::AddintsRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod server::AddintsRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int64 _num1
    8
    ;; int64 _num2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num1) (= (length (_num1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num1 . bv) 0) 0) s)
              (write-long (ash (elt (_num1 . bv) 1) -1) s))
             ((and (class _num1) (= (length (_num1 . bv)) 1)) ;; big1
              (write-long (elt (_num1 . bv) 0) s)
              (write-long (if (>= _num1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num1 s)(write-long (if (>= _num1 0) 0 #xffffffff) s)))
     ;; int64 _num2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num2) (= (length (_num2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num2 . bv) 0) 0) s)
              (write-long (ash (elt (_num2 . bv) 1) -1) s))
             ((and (class _num2) (= (length (_num2 . bv)) 1)) ;; big1
              (write-long (elt (_num2 . bv) 0) s)
              (write-long (if (>= _num2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num2 s)(write-long (if (>= _num2 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num1
#+(or :alpha :irix6 :x86_64)
      (setf _num1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _num2
#+(or :alpha :irix6 :x86_64)
      (setf _num2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass server::AddintsResponse
  :super ros::object
  :slots (_sum ))

(defmethod server::AddintsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sum) (= (length (_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sum . bv) 0) 0) s)
              (write-long (ash (elt (_sum . bv) 1) -1) s))
             ((and (class _sum) (= (length (_sum . bv)) 1)) ;; big1
              (write-long (elt (_sum . bv) 0) s)
              (write-long (if (>= _sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sum s)(write-long (if (>= _sum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
      (setf _sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass server::Addints
  :super ros::object
  :slots ())

(setf (get server::Addints :md5sum-) "48d0f254fecb160bea4c43b66d25c762")
(setf (get server::Addints :datatype-) "server/Addints")
(setf (get server::Addints :request) server::AddintsRequest)
(setf (get server::Addints :response) server::AddintsResponse)

(defmethod server::AddintsRequest
  (:response () (instance server::AddintsResponse :init)))

(setf (get server::AddintsRequest :md5sum-) "48d0f254fecb160bea4c43b66d25c762")
(setf (get server::AddintsRequest :datatype-) "server/AddintsRequest")
(setf (get server::AddintsRequest :definition-)
      "int64 num1
int64 num2
---
int64 sum
")

(setf (get server::AddintsResponse :md5sum-) "48d0f254fecb160bea4c43b66d25c762")
(setf (get server::AddintsResponse :datatype-) "server/AddintsResponse")
(setf (get server::AddintsResponse :definition-)
      "int64 num1
int64 num2
---
int64 sum
")



(provide :server/Addints "48d0f254fecb160bea4c43b66d25c762")


