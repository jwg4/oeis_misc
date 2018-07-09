module Digit where

import Data.Char (digitToInt)

digits :: Integer -> [Integer]
digits = map (fromIntegral . digitToInt) . show

contains :: Integer -> Integer -> Bool
contains x y = listContains (digits x) (digits y)

listContains :: Eq a => [a] -> [a] -> Bool
listContains [] [] = True
listContains [] _ = False
listContains (x:xs) (y:ys)
    | x == y    = listContains xs ys
    | otherwise = listContains xs (y:ys)
