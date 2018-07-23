module Morphism where

generate_sequence :: (Integer -> [Integer]) -> Integer -> [Integer]
generate_sequence f n = concat $ map snd $ iterate (map_truncate f) ([], [n])

map_truncate :: (Integer -> [Integer]) -> ([Integer], [Integer]) -> ([Integer], [Integer])
map_truncate f (a, b) = (a ++ b, drop (length a + length b) (concatMap f (a ++ b))) 

example_25_2_f :: Integer -> [Integer]
example_25_2_f 0 = [0, 1, 0]
example_25_2_f 1 = [2, 2, 2]
example_25_2_f 2 = [2, 2, 2]

example_25_m :: Integer -> Integer
example_25_m 0 = 0
example_25_m 1 = 0
example_25_m 2 = 1

a316824 :: [Integer]
a316824 = map example_25_m $ generate_sequence example_25_2_f 0
