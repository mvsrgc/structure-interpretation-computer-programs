#lang racket

(define (memq item x)
    (cond ((null? x) false)
          ((eq? item (car x)) x)
          (else (memq item (cdr x)))))

(memq 1 (list 1 2 3))                         ;; #t
(memq 2 (list 1 3 4))                         ;; #f
(memq 'apple '(pear banana prune))            ;; #f
(memq 'apple '(x (apple sauce) y apple pear)) ;; #t