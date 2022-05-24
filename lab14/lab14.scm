(define (split-at lst n) 
    (define (split-at-helper lst start)
        (if (= start 0)
            (cons '() lst)
            (cons (cons (car lst) (car (split-at-helper (cdr lst) (- start 1)))) (cdr (split-at-helper (cdr lst) (- start 1))))))
    (if (> n (length lst))
        (cons lst nil)
        (split-at-helper lst n))
)

; Tree Abstraction
; Constructs tree given label and list of branches
(define (tree label branches)
  (cons label branches))

; Returns the label of the tree
(define (label t) (car t))

; Returns the list of branches of the given tree
(define (branches t) (cdr t))

; Returns #t if t is a leaf, #f otherwise
(define (is-leaf t) (null? (branches t)))

(define (filter-odd t) 
    (if (even? (label t)) 
        (tree nil (map filter-odd (branches t)))
        (tree (label t) (map filter-odd (branches t)))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (swap expr)
    (let ((x (eval (cadr expr))) (y (eval (caddr expr))))
        (if (< x y)
        (cons (car expr) (cons (caddr expr) (cons (cadr expr) (cdr (cddr expr)))))
        expr)))
