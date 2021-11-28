#lang racket

(define double-box (cons (cons 1 2) (cons 3 4)))

(car (car double-box))

(define crazy-box
    (cons (cons 1
                (cons 2 3))
           4))

(car (cdr (car crazy-box)))