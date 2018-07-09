module Digit where

import Data.Char (digitToInt)

digits :: Integer -> [Integer]
digits = map (fromIntegral . digitToInt) . show

contains :: Integer -> Integer -> Bool
contains x y = True
