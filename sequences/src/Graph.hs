module Graph where

import Basic (naturals)

claw_chromatic_polynomial :: Integer -> Integer
claw_chromatic_polynomial x = x * (x - 1) ^ 3

claw_chromatic_numbers :: [Integer]
claw_chromatic_numbers = map claw_chromatic_polynomial naturals

a179824 :: [Integer]
a179824 = drop 1 claw_chromatic_numbers

a179824_alt :: [Integer]
a179824_alt = map fromIntegral a179824_int

a179824_int :: [Int]
a179824_int = let f n = [ (x, a, b, c) | let t = [1..n], x <- t, a <- t, x /= a, b <- t, x /= b, c <- t, x /= c ] in map (length . f) [2..]
