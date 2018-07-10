module Digit where

import Data.Char (digitToInt)
import Data.List (find)
import Data.Maybe (fromJust)

import Simple(nth_powers)

digits :: Integer -> [Integer]
digits = map (fromIntegral . digitToInt) . show

contains :: Integer -> Integer -> Bool
contains x y = listContains (digits x) (digits y)

listContains :: Eq a => [a] -> [a] -> Bool
listContains _ [] = True
listContains [] _ = False
listContains (x:xs) (y:ys)
    | x == y    = listContains xs ys
    | otherwise = listContains xs (y:ys)

searchForExtension :: [Integer] -> Integer -> Integer
searchForExtension seq m = fromJust $ find (\x -> contains x m) (dropWhile (\x -> x <= m) seq)

nextValue_a080808 :: (Integer, Integer) -> (Integer, Integer)
nextValue_a080808 (a, n) = (searchForExtension (nth_powers (n + 1)) a, n + 1)

a080808 :: [Integer]
a080808 = map fst $ iterate nextValue_a080808 (4, 1)
