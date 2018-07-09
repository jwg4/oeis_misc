module Digit where

import Data.Char (digitToInt)

digits :: Integer -> [Integer]
digits = map (fromIntegral . digitToInt) . show
