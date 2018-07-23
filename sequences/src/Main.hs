module Main where

import Catalogue(a316343)
import Output(data_format, file_output)

main :: IO ()
main = do
   
  writeFile "data/b316343.txt" $ file_output 0 (take 1000 a316343)
