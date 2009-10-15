(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


(define (f-iter a b c count n)
  (cond ((< n 3) n)
    ((= count n) c)
      (else (f-iter b c (+ c (* 2 b) (* 3 a)) (+ count 1) n))))
     
(define (f2 n)
  (f-iter 0 1 2 2 n))

;(f 30)
(f2 150)
