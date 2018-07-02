module Output where

import Data.List(intercalate)
import Data.List.Split(endBy)

data_format :: [Integer] -> String
data_format sequence = intercalate"," $ endBy "," $ take 260 $ intercalate ", " $ map show sequence
