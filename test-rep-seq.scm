(use gauche.test)

(test-start "rep-seq")
(load "./rep-seq.scm")

(test-section "list-ref")
(test* "list-ref"
       16
       (list-ref '(1 4 9 16 25) 3))

(test-section "last-pair")
(test* "last-pair"
       '(34)
       (last-pair (list 23 72 149 34)))

(test-section "reverse")
(test* "reverse"
       '(25 16 9 4 1)
       (reverse (list 1 4 9 16 25)))

(test-section "same-parity")
(test* "same-parity 01"
       '(1 3 5 7)
       (same-parity 1 2 3 4 5 6 7))

(test* "same-parity 02"
       '(2 4 6)
       (same-parity 2 3 4 5 6 7))
