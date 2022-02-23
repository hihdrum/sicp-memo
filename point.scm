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
  (let ((sp (start-segment seg))
	(ep (end-segment seg)))
    (make-point (/ (+ (x-point sp) (x-point ep))
		   2)
		(/ (+ (y-point sp) (y-point ep))
		   2))))
