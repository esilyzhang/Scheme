(define (pascals-triangle n m)   
  (cond ((= m 1) 1)
        ((= m n) 1)
        (else (+ (pascals-triangle (- n 1) (- m 1))
          (pascals-triangle (- n 1) m)))
  ))

(pascals-triangle 5 2)