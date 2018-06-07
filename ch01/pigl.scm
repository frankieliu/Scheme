(require "simply.scm")

(define (pigl wd)
  (if (member? (first wd) 'aeiouy)
      (word wd 'ay)
      (pigl (word (butfirst wd) (first wd)))))

(pigl 'something)
(every pigl '(oh my gosh))
