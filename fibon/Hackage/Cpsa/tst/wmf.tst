(comment "CPSA 2.1.0")
(comment "All input read")

(defprotocol wide-mouth-frog basic
  (defrole init
    (vars (a b t name) (ta text) (k skey))
    (trace (send (cat a (enc ta b k (ltk a t))))))
  (defrole resp
    (vars (a b t name) (k skey) (tb text))
    (trace (recv (enc tb a k (ltk b t)))))
  (defrole ks
    (vars (a b t name) (k skey) (ta tb text))
    (trace (recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))))

(defskeleton wide-mouth-frog
  (vars (ta text) (a t b name) (k skey))
  (defstrand init 1 (ta ta) (a a) (b b) (t t) (k k))
  (non-orig (ltk a t))
  (uniq-orig k)
  (traces ((send (cat a (enc ta b k (ltk a t))))))
  (label 0)
  (unrealized)
  (shape))

(comment "Nothing left to do")

(defprotocol wide-mouth-frog basic
  (defrole init
    (vars (a b t name) (ta text) (k skey))
    (trace (send (cat a (enc ta b k (ltk a t))))))
  (defrole resp
    (vars (a b t name) (k skey) (tb text))
    (trace (recv (enc tb a k (ltk b t)))))
  (defrole ks
    (vars (a b t name) (k skey) (ta tb text))
    (trace (recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))))

(defskeleton wide-mouth-frog
  (vars (tb text) (b t a name) (k skey))
  (defstrand resp 1 (tb tb) (a a) (b b) (t t) (k k))
  (non-orig (ltk b t))
  (uniq-orig k)
  (traces ((recv (enc tb a k (ltk b t)))))
  (label 1)
  (unrealized (0 0))
  (comment "2 in cohort - 2 not yet seen"))

(defskeleton wide-mouth-frog
  (vars (tb text) (b t a name) (k skey))
  (defstrand resp 1 (tb tb) (a a) (b b) (t t) (k k))
  (defstrand init 1 (ta tb) (a b) (b a) (t t) (k k))
  (precedes ((1 0) (0 0)))
  (non-orig (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand init 1)
    (enc tb a k (ltk b t)) (0 0))
  (traces ((recv (enc tb a k (ltk b t))))
    ((send (cat b (enc tb a k (ltk b t))))))
  (label 2)
  (parent 1)
  (unrealized)
  (shape))

(defskeleton wide-mouth-frog
  (vars (tb ta text) (b t a name) (k skey))
  (defstrand resp 1 (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (precedes ((1 1) (0 0)))
  (non-orig (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand ks 2) (enc tb a k (ltk b t))
    (0 0))
  (traces ((recv (enc tb a k (ltk b t))))
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t)))))
  (label 3)
  (parent 1)
  (unrealized)
  (shape))

(comment "Nothing left to do")

(defprotocol wide-mouth-frog basic
  (defrole init
    (vars (a b t name) (ta text) (k skey))
    (trace (send (cat a (enc ta b k (ltk a t))))))
  (defrole resp
    (vars (a b t name) (k skey) (tb text))
    (trace (recv (enc tb a k (ltk b t)))))
  (defrole ks
    (vars (a b t name) (k skey) (ta tb text))
    (trace (recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))))

(defskeleton wide-mouth-frog
  (vars (ta tb text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t)))))
  (label 4)
  (unrealized (0 0))
  (comment "2 in cohort - 2 not yet seen"))

(defskeleton wide-mouth-frog
  (vars (ta tb text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand init 1 (ta ta) (a a) (b b) (t t) (k k))
  (precedes ((1 0) (0 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand init 1)
    (enc ta b k (ltk a t)) (0 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((send (cat a (enc ta b k (ltk a t))))))
  (label 5)
  (parent 4)
  (unrealized)
  (shape))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (precedes ((1 1) (0 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand ks 2) (enc ta b k (ltk a t))
    (0 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t)))))
  (label 6)
  (parent 4)
  (unrealized (1 0))
  (comment "2 in cohort - 2 not yet seen"))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand init 1 (ta ta-0) (a b) (b a) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 0) (1 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand init 1)
    (enc ta-0 a k (ltk b t)) (1 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((send (cat b (enc ta-0 a k (ltk b t))))))
  (label 7)
  (parent 6)
  (unrealized)
  (shape))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 ta-1 text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-1) (tb ta-0) (a a) (b b) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 1) (1 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand ks 2)
    (enc ta-0 a k (ltk b t)) (1 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((recv (cat a (enc ta-1 b k (ltk a t))))
      (send (enc ta-0 a k (ltk b t)))))
  (label 8)
  (parent 6)
  (unrealized (2 0))
  (comment "2 in cohort - 2 not yet seen"))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 ta-1 text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-1) (tb ta-0) (a a) (b b) (t t) (k k))
  (defstrand init 1 (ta ta-1) (a a) (b b) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 1) (1 0)) ((3 0) (2 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand init 1)
    (enc ta-1 b k (ltk a t)) (2 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((recv (cat a (enc ta-1 b k (ltk a t))))
      (send (enc ta-0 a k (ltk b t))))
    ((send (cat a (enc ta-1 b k (ltk a t))))))
  (label 9)
  (parent 8)
  (unrealized)
  (shape))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 ta-1 ta-2 text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-1) (tb ta-0) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-2) (tb ta-1) (a b) (b a) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 1) (1 0)) ((3 1) (2 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand ks 2)
    (enc ta-1 b k (ltk a t)) (2 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((recv (cat a (enc ta-1 b k (ltk a t))))
      (send (enc ta-0 a k (ltk b t))))
    ((recv (cat b (enc ta-2 a k (ltk b t))))
      (send (enc ta-1 b k (ltk a t)))))
  (label 10)
  (parent 8)
  (unrealized (3 0))
  (comment "2 in cohort - 2 not yet seen"))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 ta-1 ta-2 text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-1) (tb ta-0) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-2) (tb ta-1) (a b) (b a) (t t) (k k))
  (defstrand init 1 (ta ta-2) (a b) (b a) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 1) (1 0)) ((3 1) (2 0)) ((4 0) (3 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand init 1)
    (enc ta-2 a k (ltk b t)) (3 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((recv (cat a (enc ta-1 b k (ltk a t))))
      (send (enc ta-0 a k (ltk b t))))
    ((recv (cat b (enc ta-2 a k (ltk b t))))
      (send (enc ta-1 b k (ltk a t))))
    ((send (cat b (enc ta-2 a k (ltk b t))))))
  (label 11)
  (parent 10)
  (unrealized)
  (shape))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 ta-1 ta-2 ta-3 text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-1) (tb ta-0) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-2) (tb ta-1) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-3) (tb ta-2) (a a) (b b) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 1) (1 0)) ((3 1) (2 0)) ((4 1) (3 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand ks 2)
    (enc ta-2 a k (ltk b t)) (3 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((recv (cat a (enc ta-1 b k (ltk a t))))
      (send (enc ta-0 a k (ltk b t))))
    ((recv (cat b (enc ta-2 a k (ltk b t))))
      (send (enc ta-1 b k (ltk a t))))
    ((recv (cat a (enc ta-3 b k (ltk a t))))
      (send (enc ta-2 a k (ltk b t)))))
  (label 12)
  (parent 10)
  (unrealized (4 0))
  (comment "2 in cohort - 2 not yet seen"))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 ta-1 ta-2 ta-3 text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-1) (tb ta-0) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-2) (tb ta-1) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-3) (tb ta-2) (a a) (b b) (t t) (k k))
  (defstrand init 1 (ta ta-3) (a a) (b b) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 1) (1 0)) ((3 1) (2 0)) ((4 1) (3 0))
    ((5 0) (4 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand init 1)
    (enc ta-3 b k (ltk a t)) (4 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((recv (cat a (enc ta-1 b k (ltk a t))))
      (send (enc ta-0 a k (ltk b t))))
    ((recv (cat b (enc ta-2 a k (ltk b t))))
      (send (enc ta-1 b k (ltk a t))))
    ((recv (cat a (enc ta-3 b k (ltk a t))))
      (send (enc ta-2 a k (ltk b t))))
    ((send (cat a (enc ta-3 b k (ltk a t))))))
  (label 13)
  (parent 12)
  (unrealized)
  (shape))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 ta-1 ta-2 ta-3 ta-4 text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-1) (tb ta-0) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-2) (tb ta-1) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-3) (tb ta-2) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-4) (tb ta-3) (a b) (b a) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 1) (1 0)) ((3 1) (2 0)) ((4 1) (3 0))
    ((5 1) (4 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand ks 2)
    (enc ta-3 b k (ltk a t)) (4 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((recv (cat a (enc ta-1 b k (ltk a t))))
      (send (enc ta-0 a k (ltk b t))))
    ((recv (cat b (enc ta-2 a k (ltk b t))))
      (send (enc ta-1 b k (ltk a t))))
    ((recv (cat a (enc ta-3 b k (ltk a t))))
      (send (enc ta-2 a k (ltk b t))))
    ((recv (cat b (enc ta-4 a k (ltk b t))))
      (send (enc ta-3 b k (ltk a t)))))
  (label 14)
  (parent 12)
  (unrealized (5 0))
  (comment "2 in cohort - 2 not yet seen"))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 ta-1 ta-2 ta-3 ta-4 text) (a b t name) (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-1) (tb ta-0) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-2) (tb ta-1) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-3) (tb ta-2) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-4) (tb ta-3) (a b) (b a) (t t) (k k))
  (defstrand init 1 (ta ta-4) (a b) (b a) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 1) (1 0)) ((3 1) (2 0)) ((4 1) (3 0))
    ((5 1) (4 0)) ((6 0) (5 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand init 1)
    (enc ta-4 a k (ltk b t)) (5 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((recv (cat a (enc ta-1 b k (ltk a t))))
      (send (enc ta-0 a k (ltk b t))))
    ((recv (cat b (enc ta-2 a k (ltk b t))))
      (send (enc ta-1 b k (ltk a t))))
    ((recv (cat a (enc ta-3 b k (ltk a t))))
      (send (enc ta-2 a k (ltk b t))))
    ((recv (cat b (enc ta-4 a k (ltk b t))))
      (send (enc ta-3 b k (ltk a t))))
    ((send (cat b (enc ta-4 a k (ltk b t))))))
  (label 15)
  (parent 14)
  (unrealized)
  (shape))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 ta-1 ta-2 ta-3 ta-4 ta-5 text) (a b t name)
    (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-1) (tb ta-0) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-2) (tb ta-1) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-3) (tb ta-2) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-4) (tb ta-3) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-5) (tb ta-4) (a a) (b b) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 1) (1 0)) ((3 1) (2 0)) ((4 1) (3 0))
    ((5 1) (4 0)) ((6 1) (5 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand ks 2)
    (enc ta-4 a k (ltk b t)) (5 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((recv (cat a (enc ta-1 b k (ltk a t))))
      (send (enc ta-0 a k (ltk b t))))
    ((recv (cat b (enc ta-2 a k (ltk b t))))
      (send (enc ta-1 b k (ltk a t))))
    ((recv (cat a (enc ta-3 b k (ltk a t))))
      (send (enc ta-2 a k (ltk b t))))
    ((recv (cat b (enc ta-4 a k (ltk b t))))
      (send (enc ta-3 b k (ltk a t))))
    ((recv (cat a (enc ta-5 b k (ltk a t))))
      (send (enc ta-4 a k (ltk b t)))))
  (label 16)
  (parent 14)
  (unrealized (6 0))
  (comment "2 in cohort - 2 not yet seen"))

(comment "Strand bound exceeded--aborting run")

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 ta-1 ta-2 ta-3 ta-4 ta-5 text) (a b t name)
    (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-1) (tb ta-0) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-2) (tb ta-1) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-3) (tb ta-2) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-4) (tb ta-3) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-5) (tb ta-4) (a a) (b b) (t t) (k k))
  (defstrand init 1 (ta ta-5) (a a) (b b) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 1) (1 0)) ((3 1) (2 0)) ((4 1) (3 0))
    ((5 1) (4 0)) ((6 1) (5 0)) ((7 0) (6 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand init 1)
    (enc ta-5 b k (ltk a t)) (6 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((recv (cat a (enc ta-1 b k (ltk a t))))
      (send (enc ta-0 a k (ltk b t))))
    ((recv (cat b (enc ta-2 a k (ltk b t))))
      (send (enc ta-1 b k (ltk a t))))
    ((recv (cat a (enc ta-3 b k (ltk a t))))
      (send (enc ta-2 a k (ltk b t))))
    ((recv (cat b (enc ta-4 a k (ltk b t))))
      (send (enc ta-3 b k (ltk a t))))
    ((recv (cat a (enc ta-5 b k (ltk a t))))
      (send (enc ta-4 a k (ltk b t))))
    ((send (cat a (enc ta-5 b k (ltk a t))))))
  (label 17)
  (parent 16)
  (unrealized)
  (comment "aborted"))

(defskeleton wide-mouth-frog
  (vars (ta tb ta-0 ta-1 ta-2 ta-3 ta-4 ta-5 ta-6 text) (a b t name)
    (k skey))
  (defstrand ks 2 (ta ta) (tb tb) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-0) (tb ta) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-1) (tb ta-0) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-2) (tb ta-1) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-3) (tb ta-2) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-4) (tb ta-3) (a b) (b a) (t t) (k k))
  (defstrand ks 2 (ta ta-5) (tb ta-4) (a a) (b b) (t t) (k k))
  (defstrand ks 2 (ta ta-6) (tb ta-5) (a b) (b a) (t t) (k k))
  (precedes ((1 1) (0 0)) ((2 1) (1 0)) ((3 1) (2 0)) ((4 1) (3 0))
    ((5 1) (4 0)) ((6 1) (5 0)) ((7 1) (6 0)))
  (non-orig (ltk a t) (ltk b t))
  (uniq-orig k)
  (operation encryption-test (added-strand ks 2)
    (enc ta-5 b k (ltk a t)) (6 0))
  (traces
    ((recv (cat a (enc ta b k (ltk a t))))
      (send (enc tb a k (ltk b t))))
    ((recv (cat b (enc ta-0 a k (ltk b t))))
      (send (enc ta b k (ltk a t))))
    ((recv (cat a (enc ta-1 b k (ltk a t))))
      (send (enc ta-0 a k (ltk b t))))
    ((recv (cat b (enc ta-2 a k (ltk b t))))
      (send (enc ta-1 b k (ltk a t))))
    ((recv (cat a (enc ta-3 b k (ltk a t))))
      (send (enc ta-2 a k (ltk b t))))
    ((recv (cat b (enc ta-4 a k (ltk b t))))
      (send (enc ta-3 b k (ltk a t))))
    ((recv (cat a (enc ta-5 b k (ltk a t))))
      (send (enc ta-4 a k (ltk b t))))
    ((recv (cat b (enc ta-6 a k (ltk b t))))
      (send (enc ta-5 b k (ltk a t)))))
  (label 18)
  (parent 16)
  (unrealized (7 0))
  (comment "aborted"))
