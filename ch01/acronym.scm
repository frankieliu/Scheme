(require "simply.scm")

(define (acronym phrase)
  (accumulate word (every first (keep real-word? phrase))))

(define (real-word? wd)
  (not (member? wd '(a of the for))))

(acronym '(united states of america))
