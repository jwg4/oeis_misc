module Number where

import Basic(_sequence)

primes :: [Integer]
primes = 2 : 3 : filter (\a -> all (not . divides a) (takeWhile (\x -> x < a - 2) primes)) (_sequence 4)

divides :: Integer -> Integer -> Bool
divides a b = a `div` b == 0
