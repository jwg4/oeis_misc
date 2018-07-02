module Basic where

_sequence :: Integer -> [Integer]
_sequence start = start : map (+ 1) (_sequence start)

naturals :: [Integer]
naturals = _sequence 1

nonnegative_integers :: [Integer]
nonnegative_integers = _sequence 0

numbers :: [Integer]
numbers = nonnegative_integers
