(use gauche.test)

(test-start "問題2.2 : 線分")
(load "./point.scm")

(test-section "構築子")
(test* "make-segment 01"
      (cons (make-point 1 2) (make-point 3 4))
      (make-segment (make-point 1 2)
                    (make-point 3 4)))

(test-section "選択子")
(test* "start-segment 01"
       (make-point 1 2)
       (start-segment
        (make-segment (make-point 1 2)
                      (make-point 3 4))))

(test* "end-segment 01"
       (make-point 3 4)
       (end-segment
        (make-segment (make-point 1 2)
                      (make-point 3 4))))

(test* "midpoint-segment 01"
       (make-point 2 3)
       (midpoint-segment
	    (make-segment (make-point 1 2)
                      (make-point 3 4))))

(test-end :exit-on-failure #t)
