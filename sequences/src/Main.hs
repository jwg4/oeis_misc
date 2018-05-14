module Main where

import Data.Bits(xor)

main :: IO ()
main = do
  putStrLn $ show $ take 50 naturals

naturals :: [Integer]
naturals = 1 : map (+ 1) naturals

e :: Float
e = 2.718281828

n_over_e :: [Float]
n_over_e = map ((/ e) . fromIntegral) naturals

int_n_over_e :: [Integer]
int_n_over_e = map round n_over_e

a225593 :: [Integer]
a225593 = int_n_over_e

one_minus_one_over_e_times_n :: [Integer]
one_minus_one_over_e_times_n = zipWith (-) naturals int_n_over_e

square_numbers :: [Integer]
square_numbers = map square naturals
  where square x = x * x

triangle_numbers :: [Integer]
triangle_numbers = map triangle naturals
  where triangle x = toInteger $ x * (x + 1) / 2

xor_triangles :: [Int]
xor_triangles = map xor_triangle naturals
  where xor_triangle x = foldl xor 0 $ [1..x]