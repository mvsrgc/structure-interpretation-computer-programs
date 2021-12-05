#lang racket

;; Bad
(define (reverse-bad items)
    (if (null? (cdr items))
        items
        (list (reverse-bad (cdr items)) (car items))))

(reverse-bad (list 23 72 149 34))

;; Good
(define nil '())

(define (reverse items)
    (define (iter items result)
        (if (null? items)
            result
            (iter (cdr items) (cons (car items) result))))
    (iter items null))

(reverse (list 1 2 3 4))