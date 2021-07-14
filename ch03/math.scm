#lang sicp
(#%provide (all-defined))

(define average (lambda (v1 v2) (/ (+ v1 v2) 2)))

(define square (lambda (n) (* n n)))

(define (sqrt n)
  (define (improve guess)
    (average guess (/ n guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) n)) 0.0000000001))
  (define (tryit guess)
    (if (good-enough? guess)
      guess
      (tryit (improve guess))))
         (tryit 1))
