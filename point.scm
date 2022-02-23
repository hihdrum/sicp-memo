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
(define (make-rectangle3 sp ep)
  (cons sp ep))

(define (sp-rectangle3 rct)
  (car rct))

(define (ep-rectangle3 rct)
  (cdr rct))

(define (perimeter-rectangle3 rct)
  (* 2 (+ (abs (- (x-point (ep-rectangle3 rct))
                  (x-point (sp-rectangle3 rct))))
          (abs (- (y-point (ep-rectangle3 rct))
                  (y-point (sp-rectangle3 rct)))))))

(define (area-rectangle3 rct)
  (* (abs (- (x-point (ep-rectangle3 rct))
             (x-point (sp-rectangle3 rct))))
     (abs (- (y-point (ep-rectangle3 rct))
             (y-point (sp-rectangle3 rct))))))

(define (make-rectangle2 sp width height)
  (cons sp (cons width height)))

(define (sp-rectangle2 rct)
  (car rct))

(define (width-rectangle2 rct)
  (car (cdr rct)))

(define (height-rectangle2 rct)
  (cdr (cdr rct)))

(define (perimeter-rectangle2 rct)
  (* 2 (+ (width-rectangle2 rct)
          (height-rectangle2 rct))))

(define (area-rectangle2 rct)
  (* (width-rectangle2 rct)
     (height-rectangle2 rct)))
