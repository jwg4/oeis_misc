module A233695 where

import Data.List (elemIndex, nub)
import Data.Maybe (fromJust)

gcd3 :: Integer -> Integer -> Integer -> Integer
gcd3 a b c
    | c < 0 = 0 - (gcd3 (0-a) (0-b) (0-c))
    | otherwise = gcd(gcd(a, b), c)

data GaussianRational = GR_BCD Integer Integer Integer deriving (Eq)

instance Show GaussianRational where
    show (GR_BCD b c d)
        | c == 0 && d == 1 = show b
        | b == 0 && c == 1 && d == 1 = "i"
        | b == 0 && c == -1 && d == 1 = "-i"
        | b == 0 && d == 1 = (show c) ++ "i"
        | d == 1 && c < 0  = (show b) ++ " - " ++ (show (GR_BCD 0 (-c) 1))
        | d == 1           = (show b) ++ " + " ++ (show (GR_BCD 0 c 1))
        | otherwise        = (show (GR_BCD b c 1)) ++ " / " ++ (show d)

gr_reduce :: GaussianRational -> GaussianRational
gr_reduce (GR_BCD b c d) = (GR_BCD (b `div` g) (c `div` g) (d `div` g))
    where g = gcd3 b c d

gr_increment :: GaussianRational -> GaussianRational
gr_increment (GR_BCD b c d) = gr_reduce $ GR_BCD (b+d) c d

gr_reciprocal :: GaussianRational -> GaussianRational
gr_reciprocal (GR_BCD 0 0 d) = GR_BCD 0 0 1
gr_reciprocal (GR_BCD b c d) = gr_reduce $ GR_BCD (d*b) (0-c*d) (b*b+c*c)

gr_times_i :: GaussianRational -> GaussianRational
gr_times_i (GR_BCD b c d) = gr_reduce $ GR_BCD (0-c) b d

three_transforms :: GaussianRational -> [GaussianRational]
three_transforms x = [ gr_increment x, gr_reciprocal x, gr_times_i x]

all_tree_values :: [GaussianRational] -> [GaussianRational]
all_tree_values = concatMap three_transforms

-- Note that this is a simple, but inefficient way of generating these values
-- We generate all the values from the tree, and then remove repetitions.
-- Since one repeated value will generate a whole subtree of values which
-- have already been seen, it would be far more efficient to 'prune' the
-- by not creating any branches from values which have been seen.
a233695_values :: [GaussianRational]
a233695_values = nub $ concat $ iterate all_tree_values $ [GR_BCD 0 0 1]

find_a233695_value :: Integer -> Integer
find_a233695_value n = fromIntegral $ (+) 1 $ fromJust $ elemIndex (GR_BCD (0-n) 0 1) a233695_values

a233695 :: [Integer]
a233695 = map find_a233695_value [1..]
