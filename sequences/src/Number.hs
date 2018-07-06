module Number where

import Data.List(inits)

import Basic(_sequence)

primes :: [Integer]
primes = 2 : 3 : filter (\a -> all (not . divides a) (takeWhile (\x -> x <= a `div` 2) primes)) (_sequence 4)

divides :: Integer -> Integer -> Bool
divides a b = a `mod` b == 0

a000040 :: [Integer]
a000040 = primes

primorials :: [Integer]
primorials = map product $ inits primes

a002110 :: [Integer]
a002110 = primorials
