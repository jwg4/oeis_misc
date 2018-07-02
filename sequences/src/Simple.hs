module Simple where

import Basic(naturals)

square_numbers :: [Integer]
square_numbers = map square naturals
  where square x = x * x

triangle :: Integer -> Integer
triangle x = x * (x + 1) `div` 2

triangle_numbers :: [Integer]
triangle_numbers = map triangle naturals

pentagon :: Integer -> Integer
pentagon x = x * (3 * x - 1) `div` 2

pentagonal_numbers :: [Integer]
pentagonal_numbers = map pentagon naturals
