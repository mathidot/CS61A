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
  (if (null? keys)
      '()
      (cons (cons (car keys) (cons (car values) nil)) (make-kwlist2 (cdr keys) (cdr values)))))

(define (get-keys-kwlist2 kwlist) 
    (if (null? kwlist)
        '()
        (cons (car (car kwlist)) (get-keys-kwlist2 (cdr kwlist)))))

(define (get-values-kwlist2 kwlist)
    (if (null? kwlist)
        '()
        (cons (car(cdr (car kwlist))) (get-values-kwlist2 (cdr kwlist)))))
    

(define (add-to-kwlist kwlist key value)
    '1)

(define (get-first-from-kwlist kwlist key)
  'YOUR-CODE-HERE)

(define (prune-expr expr)   'YOUR-CODE-HERE)

(define (curry-cook formals body)
    (define (curry-cook-helper temp-formals f)
        (if (null? temp-formals)
            f
            (curry-consume)))

(define (curry-consume curries args)
  'YOUR-CODE-HERE)
