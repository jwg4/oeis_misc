module A117065 where

import Transform(increasing_intersect)
import Number(primes)
import Summand(a003679)

a117065 :: [Integer]
a117065 = increasing_intersect primes a003679
