module Summand where

import Basic(naturals)
import Number(primes)
import Simple(pentagonal_numbers)
import Transform(greedy_complete)

notSumOf :: Integer -> [Integer] -> [Integer] -> [Integer]
notSumOf n summands = filter (not . isSumOf n summands)

isSumOf :: Integer -> [Integer] -> Integer -> Bool
isSumOf k sequence n = _isSumOf k (takeWhile (\x -> x <= n) sequence) n 

_isSumOf :: Integer -> [Integer] -> Integer -> Bool
_isSumOf 1 sequence n = n `elem` sequence
_isSumOf k sequence n = any (isSumOf (k-1) sequence) (map (n -) sequence)

check_a003679 :: [Integer] -> [Integer]
check_a003679 = notSumOf 3 pentagonal_numbers

a003679 :: [Integer]
a003679 = check_a003679 naturals

a075058 :: [Integer]
a075058 = greedy_complete primes
