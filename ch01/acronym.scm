(define (acronym phrase)
  (accumulate word (every first (keep real-word? phrase))))

(define (real-word? wd)
  (not(member? wd '(of))))

(real-word? 'of)

