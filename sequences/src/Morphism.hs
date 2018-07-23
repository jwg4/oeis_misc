module Morphism where

import Basic (naturals)

a316343_count :: Integer -> Int
a316343_count n = fromIntegral (((v n) + 1) ^ 2) where
    v m
        | m `mod` 2 == 1 = 0
        | otherwise      = 1 + (v (m `div` 2))

a316343_S :: Integer -> [Integer]
a316343_S n = 0 : (replicate (a316343_count n) 1)

a316343 :: [Integer]
a316343 = concatMap a316343_S naturals

generate_sequence :: (Integer -> [Integer]) -> Integer -> [Integer]
generate_sequence f n = concat $ map snd $ iterate (map_truncate f) ([], [n])

map_truncate :: (Integer -> [Integer]) -> ([Integer], [Integer]) -> ([Integer], [Integer])
map_truncate f (a, b) = (a ++ b, drop (length a + length b) (concatMap f (a ++ b))) 

example_24_f :: Integer -> [Integer]
example_24_f 0 = [0, 1]
example_24_f 1 = [2, 3]
example_24_f 2 = [2, 4]
example_24_f 3 = [3, 5]
example_24_f 4 = [3, 2]
example_24_f 5 = [2, 3]

example_24_m :: Integer -> Integer
example_24_m 0 = 2
example_24_m 1 = 2
example_24_m 2 = 0
example_24_m 3 = 2
example_24_m 4 = 1
example_24_m 5 = 1

a316344 :: [Integer]
a316344 = map example_24_m $ generate_sequence example_24_f 0

example_25_1_f :: Integer -> [Integer]
example_25_1_f 0 = [0, 1, 1, 0]
example_25_1_f 1 = [1, 2, 2, 1]
example_25_1_f 2 = [2, 1, 1, 2]

example_25_2_f :: Integer -> [Integer]
example_25_2_f 0 = [0, 1, 0]
example_25_2_f 1 = [2, 2, 2]
example_25_2_f 2 = [2, 2, 2]

example_25_m :: Integer -> Integer
example_25_m 0 = 0
example_25_m 1 = 0
example_25_m 2 = 1

a316345 :: [Integer]
a316345 = map example_25_m $ generate_sequence example_25_1_f 0

a316824 :: [Integer]
a316824 = map example_25_m $ generate_sequence example_25_2_f 0
