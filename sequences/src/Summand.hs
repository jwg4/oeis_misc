module Summand where

import Data.Maybe (catMaybes, fromJust)

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

number_of_summands :: Integer -> [Integer] -> Integer
number_of_summands x s = fromJust $ _number_of_summands [] x s

_number_of_summands :: [Integer] -> Integer -> [Integer] -> Maybe Integer
_number_of_summands _ 0 _ = Just 0
_number_of_summands l x s
    | null values = Nothing
    | otherwise   = Just $ (+) 1 $ minimum values
    where values = catMaybes $ map (\t -> _number_of_summands (t:l) (x-t) s) candidates
          candidates = filter ((flip notElem) l) $ takeWhile (\y -> y <= x) s
