module Graph where

import Basic (naturals)

claw_chromatic_polynomial :: Integer -> Integer
claw_chromatic_polynomial x = x * (x - 1) ^ 3

claw_chromatic_numbers :: [Integer]
claw_chromatic_numbers = map claw_chromatic_polynomial naturals
