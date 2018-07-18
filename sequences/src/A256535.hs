module A256535 where

import Basic(naturals)

a256535 :: [Integer]
a256535 = map (toInteger. a256535_fn) naturals

a256535_fn :: Integer -> Integer
a256535_fn 1 = 0
a256535_fn n
    | (rem n 4) == 0 = (n^2) `div` 4
    | (rem n 4) == 1 = (n^2 - 5) `div` 4
    | (rem n 4) == 2 = (n^2 - 4) `div` 4
    | (rem n 4) == 3 = (n^2 - 5) `div` 4
