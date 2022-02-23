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

(test-section "周囲の長さ")
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

(test-start "問題2.3 : 長方形 表現2")
(test-section "構築子")
(test* "make-rectangle2 01"
       (cons (make-point 1 2) (cons 3 4))
       (make-rectangle2 (make-point 1 2) 3 4))

(test-section "選択子")
(test* "sp-rectangle2 01"
       (make-point 1 2)
       (sp-rectangle2
        (make-rectangle2 (make-point 1 2) 3 4)))

(test* "width-rectangle2 01"
       3
       (width-rectangle2
        (make-rectangle2 (make-point 1 2) 3 4)))

(test* "height-rectangle2 01"
       4
       (height-rectangle2
        (make-rectangle2 (make-point 1 2) 3 4)))

(test-section "周囲の長さ")
(test* "perimeter-rectangle2 01"
       14
       (perimeter-rectangle2
        (make-rectangle2 (make-point 1 2) 3 4)))

(test-section "面積")
(test* "area-rectangle2 01"
       12
       (area-rectangle2
        (make-rectangle2 (make-point 1 2) 3 4)))

(test-end :eixt-on-failure #t)
