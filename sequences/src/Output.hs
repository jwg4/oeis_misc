module Output where

import Data.List(intercalate)
import Data.List.Split(splitOn)

data_format :: [Integer] -> String
data_format sequence = intercalate "," $ init $ splitOn "," $ take 260 $ intercalate ", " $ map show sequence

formatLine :: Integer -> Integer -> String
formatLine x y = (show x) ++ " " ++ (show y) ++ "\n"

file_output :: Integer -> [Integer] -> String
file_output start sequence = concat $ zipWith formatLine [start..] sequence
