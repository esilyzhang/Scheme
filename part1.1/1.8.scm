(define (cube-root-iter guess x) (if 
  (good-enough? guess x) 
  guess 
  (cube-root-iter (improve guess x) x)))
(define (good-enough? x y) (< 
  (abs (- (cube x) y)) 0.001
))
(define (cube x) (* x x x))
(define (improve guess x) (/
  (+ (/ x (square guess)) (* 2 guess))
  3
))
(define (square x) (* x x))
(define (cube-root x) (cube-root-iter 1.0 x))
(cube-root 27)