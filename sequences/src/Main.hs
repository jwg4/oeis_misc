module Main where

import Catalogue(a316344)
import Output(data_format, file_output)

main :: IO ()
main = do
  putStrLn $ data_format a316344
