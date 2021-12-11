#lang racket

(define (for-each operation items)
    (if (null? items)
        #t
        (and (operation (car items)) (for-each operation (cdr items)))))

(for-each (lambda (x) (newline) (display x)) (list 57 321 88))