module Number where

import Data.List(inits)

import Basic(_sequence)

primes :: [Integer]
primes = 2 : 3 : filter (\a -> all (not . divides a) (takeWhile (\x -> x <= a `div` 2) primes)) (_sequence 4)

divides :: Integer -> Integer -> Bool
divides a b = a `mod` b == 0

gcd :: (Integer, Integer) -> Integer
gcd (1, m) = 1
gcd (0, m) = m
gcd (x, y)
    | x > y = Number.gcd(y, x)
    | x < 0 = Number.gcd(0-x, y)
    | otherwise = Number.gcd(y `mod` x, x)

a000040 :: [Integer]
a000040 = primes

primorials :: [Integer]
primorials = map product $ inits primes

a002110 :: [Integer]
a002110 = primorials
