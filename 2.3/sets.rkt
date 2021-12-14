#lang racket

; Operations
;   - union-set
;   - intersection-set
;   - element-of-set
;   - adjoin-set

(define (element-of-set? x set)
    (cond
        [(null? set) #f]
        [(eq? x (car set)) #t]
        [else (element-of-set? x (cdr set))]))


(element-of-set? 1 (list 1 2 3))