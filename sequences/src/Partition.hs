module Partition where

import Basic(numbers)

partitions :: [[Integer]]
partitions = concat $ map (partitions_of_n) numbers

partitions_of_n :: Integer -> [[Integer]]
partitions_of_n n = partitions_at_most n n

partitions_at_most :: Integer -> Integer -> [[Integer]]
partitions_at_most _ 0 = [[]]
partitions_at_most 0 _ = []
partitions_at_most m n = concat $ map (\k -> map ([k] ++) (partitions_at_most k (n-k))) ( reverse [1..(min m n)])

