#lang racket

(define (scale-list items factor)
    (if (null? items)
        null
        (cons (* (car items) factor)
            (scale-list (cdr items) factor))))

(scale-list (list 1 2 3 4) 10)

;; Higher-order procedure

(define (plus-one x) (+ x 1))

(define (map proc items)
    (if (null? items)
        null
        (cons (proc (car items))
            (map proc (cdr items)))))

(map abs (list -10 2.5 -11.6 17))
(map plus-one (list -10 2.5 -11.6 17))
