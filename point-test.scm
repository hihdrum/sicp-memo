(use gauche.test)

(test-start "問題2.2 : 点")
(load "./point.scm")

(test-section "構築子")
(test* "make-point 01"
       '(1 . 2)
       (make-point 1 2))

(test-section "選択子")
(test* "x-point 01"
      1
      (let ((p (make-point 1 2)))
        (x-point p)))

(test* "y-point 01"
       2
       (let ((p (make-point 1 2)))
	     (y-point p)))

(test* "print-point 01"
       "\n(1,2)"
       (with-output-to-string
	     (lambda () (print-point (make-point 1 2)))))

(test-end :exit-on-failure #t)
