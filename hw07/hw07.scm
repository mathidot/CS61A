(define (cadr lst) (car (cdr lst)))

(define (make-kwlist1 keys values)
  (if (null? (cdr keys))
      (cons (cons (car keys) nil) (cons (cons (car values) nil) nil))
      (cons (cons (car keys) (car (make-kwlist1 (cdr keys) (cdr values))))
            (cons (cons (car values) (cadr (make-kwlist1 (cdr keys) (cdr values)))) nil))))

(define (get-keys-kwlist1 kwlist) 
    (car kwlist))
(define (get-values-kwlist1 kwlist)
    (cadr kwlist))

(define (make-kwlist2 keys values)
  (if (null? (cdr keys))
       (cons (cons (car keys) (cons (car values) nil)) nil)
       (cons (cons (car keys) (cons (car values) nil)) (cons (make-kwlist2 (cdr keys) (cdr values)) nil))))

(define (get-keys-kwlist2 kwlist) 'YOUR-CODE-HERE)

(define (get-values-kwlist2 kwlist)
  'YOUR-CODE-HERE)

(define (add-to-kwlist kwlist key value)
  'YOUR-CODE-HERE)

(define (get-first-from-kwlist kwlist key)
  'YOUR-CODE-HERE)

(define (prune-expr expr)
  (define (prune-helper lst) 'YOUR-CODE-HERE)
  'YOUR-CODE-HERE)

(define (curry-cook formals body) 'YOUR-CODE-HERE)

(define (curry-consume curries args)
  'YOUR-CODE-HERE)
