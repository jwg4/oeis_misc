module Main where

import Summand(check_a003679)
import Basic(up_to)

main :: IO ()
main = do
  putStrLn $ show $ check_a003679 $ up_to 1000000
