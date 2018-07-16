module Graph where

import Basic (naturals)

claw_chromatic_polynomial :: [Integer]
claw_chromatic_polynomial = map (\x -> x * (x-1)^3) naturals
