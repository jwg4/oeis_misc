module Morphism where

generate_sequence :: (Integer -> [Integer]) -> Integer -> [Integer]
generate_sequence f n = concat $ map snd $ iterate (map_truncate f) ([], [n])

map_truncate :: (Integer -> [Integer]) -> ([Integer], [Integer]) -> ([Integer], [Integer])
map_truncate f (a, b) = (a ++ b, drop (length a + length b) (concatMap f (a ++ b))) 
