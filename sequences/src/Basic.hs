module Basic where

_sequence :: Integer -> [Integer]
_sequence start = start : map (+ 1) (_sequence start)

naturals :: [Integer]
naturals = _sequence 1

a000027 :: [Integer]
a000027 = naturals

up_to :: Int -> [Integer]
up_to = (flip take) naturals

nonnegative_integers :: [Integer]
nonnegative_integers = _sequence 0

numbers :: [Integer]
numbers = nonnegative_integers

a001477 :: [Integer]
a001477 = numbers

