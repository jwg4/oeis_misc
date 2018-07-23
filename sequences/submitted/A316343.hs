module Morphism where

a316343_count :: Integer -> Int
a316343_count n = fromIntegral ((v + 1) ^ 2) where
    v
        | n `mod` 2 == 1 = 0
        | otherwise      = 1 + (n `div` 2)

a316343_S :: Integer -> [Integer]
a316343_S n = 0 : (replicate (a316343_count n) 1)

a316343 :: [Integer]
a316343 = concatMap a316343_S [1..]
