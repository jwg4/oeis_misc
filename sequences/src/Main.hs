module Main where

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