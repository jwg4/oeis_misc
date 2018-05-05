module Main where

main :: IO ()
main = do
  putStrLn $ show $ take 50 naturals

naturals :: [Integer]
naturals = 1 : map (+ 1) naturals
