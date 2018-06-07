(define (combinations size set)
  (cond ((= size 0) '(()))
	((empty? set) '())
	(else
	 (append (prepe
