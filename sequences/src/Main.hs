module Main where

import Data.Bits(xor)
import Basic(naturals)

main :: IO ()
main = do
  putStrLn $ show $ take 50 naturals
