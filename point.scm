;; 2.1.2 抽象の壁

;; 問題2.2 : 点と線分
;; ----------------------------------
;; 点
;; ----------------------------------
(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

;; ----------------------------------
;; 線分
;; ----------------------------------
(define (make-segment sp ep)
  (cons sp ep))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

;; 中間点を返す手続き
(define (midpoint-segment seg)
  (define (mid a b) (/ (+ a b) 2))
  (let ((sp (start-segment seg))
	(ep (end-segment seg)))
    (make-point (mid (x-point sp) (x-point ep))
                (mid (y-point sp) (y-point ep)))))

;; 問題2.3 : 長方形
;; ----------------------------------
;; 長方形
;; ----------------------------------
(define (make-rectangle width height)
  (cons width height))

(define (width-rectangle rct)
  (car rct))

(define (height-rectangle rct)
  (cdr rct))

(define (perimeter-rectangle rct)
  (* 2 (+ (width-rectangle rct)
          (height-rectangle rct))))

(define (area-rectangle rct)
  (* (width-rectangle rct)
     (height-rectangle rct)))

(define (make-rectangle2 sp width height)
  (make-rectangle width height))

(define (make-rectangle3 sp ep)
  (make-rectangle
   (abs (- (x-point ep) (x-point sp)))
   (abs (- (y-point ep) (y-point sp)))))
