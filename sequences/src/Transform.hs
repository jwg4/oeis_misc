module Transform where

increasing_intersect :: [Integer] -> [Integer] -> [Integer]
increasing_intersect [] b = []
increasing_intersect a [] = []
increasing_intersect (x:xs) (y:ys)
    | x == y = x:(increasing_intersect xs ys)
    | x < y = increasing_intersect xs (y:ys)
    | x > y = increasing_intersect (x:xs) ys

