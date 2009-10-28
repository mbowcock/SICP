(define (divides? a b)
  (= (remainder b a) 0))

(define (square n)
  (* n n))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (search-for-primes start count)
  (if (> count 0)
      (cond ((prime? start) (display start)
                            (newline)
                            (search-for-primes (+ start 1) (- count 1)))
            (else (search-for-primes (+ start 1) count)))))

(define (start-prime-search n count time)
  (search-for-primes n count)
  (display (- (current-milliseconds) time)))

(define (timed-prime-search n count)
  (newline)
  (start-prime-search n count (current-milliseconds)))

(timed-prime-search 0 3)
(timed-prime-search 1000 3)
(timed-prime-search 10000 3)
(timed-prime-search 100000 3)