module Main where

import Catalogue
import Output(data_format, file_output)

main :: IO ()
main = do
  putStrLn $ show $ take 20 a233694
  putStrLn $ show $ take 20 a233695
