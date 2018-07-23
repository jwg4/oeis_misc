module Morphism where

generate_sequence :: (Integer -> [Integer]) -> Integer -> [Integer]
generate_sequence f n = concat $ map snd $ iterate (map_truncate f) ([], [n])

map_truncate :: (Integer -> [Integer]) -> ([Integer], [Integer]) -> ([Integer], [Integer])
map_truncate f (a, b) = (a ++ b, drop (length a + length b) (concatMap f (a ++ b))) 

a316344_f :: Integer -> [Integer]
a316344_f 0 = [0, 1]
a316344_f 1 = [2, 3]
a316344_f 2 = [2, 4]
a316344_f 3 = [3, 5]
a316344_f 4 = [3, 2]
a316344_f 5 = [2, 3]

a316344_m :: Integer -> Integer
a316344_m 0 = 2
a316344_m 1 = 2
a316344_m 2 = 0
a316344_m 3 = 2
a316344_m 4 = 1
a316344_m 5 = 1

a316344 :: [Integer]
a316344 = map example_24_m $ generate_sequence example_24_f 0
