module Partition where

import Data.List(inits, tails)

a236970 :: [Integer]
a236970 = n_complete_partitions 3

n_complete_partitions :: Integer -> [Integer]
n_complete_partitions = (map (fromIntegral . length)) . all_n_complete_partitions

partitions_of :: Integer -> [[Integer]]
partitions_of n = partitions_at_most n n

partitions_at_most :: Integer -> Integer -> [[Integer]]
partitions_at_most _ 0 = [[]]
partitions_at_most 0 _ = []
partitions_at_most m n = concat $ map (\k -> map ([k] ++) (partitions_at_most k (n-k))) ( reverse [1..(min m n)])

all_n_complete_partitions :: Integer -> [[[Integer]]]
all_n_complete_partitions n = map ((filter (is_n_complete n)) . partitions_of) [1..]

is_n_complete :: Integer -> [Integer] -> Bool
is_n_complete n p = ((fromIntegral (length p)) >= n) && (all (is_subpartition_of p) (n_partitions_of n (sum p)))

n_partitions_of :: Integer -> Integer -> [[Integer]]
n_partitions_of n m = filter (\p -> (fromIntegral (length p)) == n) $ partitions_of m

is_subpartition_of :: [Integer] -> [Integer] -> Bool
is_subpartition_of [] [] = True
is_subpartition_of p1 p2 = any (uncurry (is_front_subpartition_of p1)) (removed_points p2)

is_front_subpartition_of :: [Integer] -> Integer -> [Integer] -> Bool
is_front_subpartition_of (p:ps) x t
    | p == x = is_subpartition_of ps t
    | p < x  = is_subpartition_of ps (x-p:t)
    | p > x  = False

removed_points :: [a] -> [(a, [a])]
removed_points l = zip l (zipWith (++) (inits l) (tail (tails l)))
