(use gauche.test)

(test-start "問題2.2 : 点")
(load "./point.scm")

(test-section "構築子")
(test "make-point 01"
      '(1 . 2)
      (lambda () (make-point 1 2)))

(test-section "選択子")
(test "x-point 01"
      1
      (lambda ()
	(let ((p (make-point 1 2)))
	  (x-point p))))

(test "y-point 01"
      2
      (lambda ()
	(let ((p (make-point 1 2)))
	  (y-point p))))

;; print-pointのテストの書き方がわからない。

(test-end :exit-on-failure #t)
