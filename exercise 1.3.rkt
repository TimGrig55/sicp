#lang sicp
(define (square x)(* x x))

(define (sum-sq x y)(+( square x)(square y)))

(define (large-number-one x y z)
  (cond((and(> x y)(> x z) x))
       ((and(> y x)(> y z) y))
       ((and(> z x)(> z y) z))))
(large-number-one 2 3 4)

(define (large-number-two x y z)
  (cond((and(> x y)(< x z) x))
       ((and(> x z)(< x y) x))
       ((and(> y x)(< y z) y))
       ((and(> y z)(< y x) y))
       ((and(> z x)(< z y) z))
       ((and(> z y)(< z x) z))
       ))
(large-number-two 2 3 4)
(define (sum-sq-of-number1-and-number2 x y z)
  (sum-sq (large-number-one x y z) (large-number-two x y z)
   ))
(sum-sq-of-number1-and-number2 2 3 4)