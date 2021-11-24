#lang racket

(define (expt b n)
    ;(expt-iter b n 1))
    (fast-expt b n))

(define (expt-iter b counter product)
    (if (= counter 0)
        product
        (expt-iter
            b
            (- counter 1)
            (* product b))))

(define (even? n) 
    (= (remainder n 2) 0))

(define (square x)
    (* x x))

(define (fast-expt b n)
    (cond 
        ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(expt 2 2)