module Main where

import Catalogue(a236970)
import Output(data_format, file_output)

main :: IO ()
main = do
  putStrLn $ data_format a236970
