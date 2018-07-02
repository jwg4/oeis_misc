module Output where

import Data.List(intercalate)
import Data.List.Split(splitOn)

data_format :: [Integer] -> String
data_format sequence = intercalate "," $ init $ splitOn "," $ take 260 $ intercalate ", " $ map show sequence
