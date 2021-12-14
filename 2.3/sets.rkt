#lang racket

; Operations
;   - union-set
;   - intersection-set
;   - element-of-set
;   - adjoin-set

(define (element-of-set? x set)
    (cond
        [(null? set) #f]
        [(equal? x (car set)) #t]
        [else (element-of-set? x (cdr set))]))


(define (adjoin-set x set)
    (if (element-of-set? x set) 
        set 
        (cons x set)))