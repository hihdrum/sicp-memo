;; 2.2.1 並びの表現

;; リスト演算
(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

#|
(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))
|#

(define (length items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

;; 問題2.17
(define (last-pair items)
  (if (null? (cdr items))
      items
      (last-pair (cdr items))))

;; 問題2.18
(define (reverse items)
  (define (reverse-iter a res)
    (if (null? a)
        res
        (reverse-iter (cdr a) (cons (car a) res))))
  (reverse-iter items ()))

;; 問題2.20
(define (same-parity . items)
  (define (parity-help pred lst)
    (if (null? lst)
        ()
        (if (pred (car lst))
            (cons (car lst) (parity-help pred (cdr lst)))
            (parity-help pred (cdr lst)))))
  (cons (car items)
        (parity-help (if (even? (car items))
                         even?
                         odd?)
                     (cdr items))))
