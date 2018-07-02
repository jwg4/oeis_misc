module Main where

import Data.Bits(xor)
import Simple(pentagonal_numbers)

main :: IO ()
main = do
  putStrLn $ show $ take 50 pentagonal_numbers
