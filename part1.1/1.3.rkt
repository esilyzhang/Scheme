(define (square x) (* x x))
(define (eqgt x y) (or (> x y) (= x y)))
(define (eqlt x y) (or (< x y) (= x y)))
(define (calcSum a b c) (+ 
  (square (cond ((and (eqgt a b) (eqgt a c)) a) ((and (eqgt b a) (eqgt b c)) b) ((and (eqgt c a) (eqgt c b)) c))) 
  (square (cond ((and (or (and (eqgt a b) (eqlt a c)) (and (eqgt a c) (eqlt a b))) a)) ((and (or (and (eqgt b a) (eqlt b c)) (and (eqgt b c) (eqlt b a))) b)) ((and (or (and (eqgt c b) (eqlt c a)) (and (eqgt c a) (eqlt c b))) c))))
  ))

(calcSum 3 6 7)
