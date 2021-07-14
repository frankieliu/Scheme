#lang sicp
(define (make-accumulator initial)
  (define (add x)
    (begin
      (set! initial (+ initial x))
      initial
      ))
  add
  )

(define A (make-accumulator 5))
(display (A 10))
(newline)
(display (A 10))
(newline)
