module Simple where

import Basic(numbers)

nth_powers :: Integer -> [Integer]
nth_powers n = map (^ n) numbers

square_numbers :: [Integer]
square_numbers = map square numbers
  where square x = x * x

triangle :: Integer -> Integer
triangle x = x * (x + 1) `div` 2

triangle_numbers :: [Integer]
triangle_numbers = map triangle numbers

pentagon :: Integer -> Integer
pentagon x = x * (3 * x - 1) `div` 2

pentagonal_numbers :: [Integer]
pentagonal_numbers = map pentagon numbers

a000326 :: [Integer]
a000326 = pentagonal_numbers
