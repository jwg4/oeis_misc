module Main where

import Partition(a062515)
import Output(data_format, file_output)

main :: IO ()
main = do
  writeFile "data/b062515.txt" $ file_output 0 (take 1001 a062515)
