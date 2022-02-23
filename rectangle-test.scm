(use gauche.test)

(test-start "問題2.3 : 長方形")
(load "./point.scm")

(test-section "構築子")
(test* "make-rectangle 01"
       (cons (make-point 1 2) (make-point 3 4))
       (make-rectangle (make-point 1 2)
                       (make-point 3 4)))

(test-section "選択子")
(test* "sp-rectangle 01"
       (make-point 1 2)
       (sp-rectangle
        (make-rectangle (make-point 1 2)
                        (make-point 3 4))))

(test* "ep-rectangle 01"
       (make-point 3 4)
       (ep-rectangle
        (make-rectangle (make-point 1 2)
                        (make-point 3 4))))

(test-section "長方形")
(test* "perimeter-rectangle 01"
       8
       (perimeter-rectangle
        (make-rectangle (make-point 1 2)
                        (make-point 3 4))))

(test-section "面積")
(test* "area-rectangle 01"
       4
       (area-rectangle
        (make-rectangle (make-point 1 2)
                        (make-point 3 4))))

(test-end :eixt-on-failure #t)
