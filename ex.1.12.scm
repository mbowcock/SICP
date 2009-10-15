(define (pascal row n)
  (cond ((> n row) 0)
        ((or (= n 1) (= n row)) 1)
        (else (+ (pascal (- row 1) n) (pascal (- row 1) (- n 1))))))