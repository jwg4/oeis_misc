module Main where

import Data.List(intersperse)
import Catalogue(a003679)
import Output(data_format)

main :: IO ()
main = do
  putStrLn $ data_format a003679
