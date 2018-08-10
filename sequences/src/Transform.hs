module Transform where

increasing_intersect :: [Integer] -> [Integer] -> [Integer]
increasing_intersect [] b = []
increasing_intersect a [] = []
increasing_intersect (x:xs) (y:ys)
    | x == y = x:(increasing_intersect xs ys)
    | x < y = increasing_intersect xs (y:ys)
    | x > y = increasing_intersect (x:xs) ys


increasing_union :: [Integer] -> [Integer] -> [Integer]
increasing_union [] b = b
increasing_union a [] = a
increasing_union (x:xs) (y:ys)
    | x == y = x:(increasing_union xs ys)
    | x < y = x:increasing_union xs (y:ys)
    | x > y = y:increasing_union (x:xs) ys
