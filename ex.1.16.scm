
(define (expo b n)
  (if (= n 0)
      1
      (* b (expo b (- n 1)))))

(define (square n)
  (* n n))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (fast-expt-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iter b (- n 2) (* a (square b))))
        (else (fast-expt-iter b (- n 1) (* a b)))))

(define (fast-expt-new b n)
  (fast-expt-iter b n 1))

(fast-expt 12 8)
(fast-expt-new 12 8)
(fast-expt-iter 12 8 1)

;(expo 10 3)
