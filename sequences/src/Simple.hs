module Simple where

square_numbers :: [Integer]
square_numbers = map square naturals
  where square x = x * x

triangle_numbers :: [Integer]
triangle_numbers = map triangle naturals
  where triangle (x::Integer) = toInteger $ x * (x + 1) / 2
