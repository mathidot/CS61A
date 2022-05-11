(define (over-or-under num1 num2)
        (cond
            ((< num1 num2) -1)
            ((= num1 num2) 0)
            ((> num1 num2) 1)))

(define (make-adder num)
    (define (adder inc)
        (+ num inc))
    adder)

(define (composed f g)
    (lambda (x) (f (g x))))

(define (square n) (* n n))

(define (pow base exp)
    (cond
        ((equal? exp 0) 1)
        ((equal? (remainder exp 2) 1) (* base (pow base (- exp 1))))
        ((equal? (remainder exp 2) 0) (square (pow base (/ exp 2))))
    ))
    