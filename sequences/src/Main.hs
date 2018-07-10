module Main where

import Catalogue(a080808)
import Output(data_format, file_output)

main :: IO ()
main = do
  putStrLn $ show $ take 6 a080808
