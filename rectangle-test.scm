(use gauche.test)

(test-start "問題2.3 : 長方形")
(load "./point.scm")

(test-section "構築子")
(test* "make-rectangle 01"
       (cons 1 2)
       (make-rectangle 1 2))

(test-section "選択子")
(test* "width-rectangle 01"
       1
       (width-rectangle
        (make-rectangle 1 2)))

(test* "height-rectangle 01"
       2
       (height-rectangle
        (make-rectangle 1 2)))

(test-section "周囲の長さ")
(test* "perimeter-rectangle 01"
       10
       (perimeter-rectangle
        (make-rectangle 2 3)))

(test-section "面積")
(test* "area-rectangle 01"
       6
       (area-rectangle
        (make-rectangle 2 3)))

(test-end :eixt-on-failure #t)

(test-start "問題2.3 : 長方形 表現2")
(test-section "構築子")
(test* "make-rectangle2 01"
       (make-rectangle 3 4)
       (make-rectangle2 (make-point 1 2) 3 4))

(test-section "周囲の長さ")
(test* "perimeter-rectangle2 01"
       14
       (perimeter-rectangle
        (make-rectangle2 (make-point 1 2) 3 4)))

(test-section "面積")
(test* "area-rectangle2 01"
       12
       (area-rectangle
        (make-rectangle2 (make-point 1 2) 3 4)))

(test-end :eixt-on-failure #t)

(test-section "構築子")
(test* "make-rectangle3 01"
       (make-rectangle 2 2)
       (make-rectangle3 (make-point 1 2)
                        (make-point 3 4)))

(test-section "周囲の長さ")
(test* "perimeter-rectangle 01"
       8
       (perimeter-rectangle
        (make-rectangle3 (make-point 1 2)
                         (make-point 3 4))))

(test-section "面積")
(test* "area-rectangle 01"
       4
       (area-rectangle
        (make-rectangle3 (make-point 1 2)
                         (make-point 3 4))))

(test-end :eixt-on-failure #t)

