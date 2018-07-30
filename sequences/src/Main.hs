module Main where

import Catalogue
import Output(data_format, file_output)

main :: IO ()
main = do
  writeFile "data/b316345.txt" $ file_output 0 (take 1000 a316345)
  writeFile "data/b316824.txt" $ file_output 0 (take 1000 a316824)
