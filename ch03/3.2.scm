#lang sicp
(#%require "math.scm")

(define (make-monitored fn)
  (let ((count 0))
    (define (inc)
      (set! count (+ count 1))
      count)
    (define (reset-count)
      (set! count 0)
      count)
    (define (how-many-calls?)
      count)
    (define (dof x)
      (inc)
      (fn x))
    (define (dispatch m)
      (cond
        ((eq? m 'inc) (inc))
        ((eq? m 'reset-count) (reset-count))
        ((eq? m 'how-many-calls?) (how-many-calls?))
        (else (dof m))))
    dispatch
  ))
(define s (make-monitored sqrt))
(display (s 100))
(newline)
(display (s 'how-many-calls?))
(newline)



