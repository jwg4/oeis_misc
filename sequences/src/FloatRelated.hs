module FloatRelated where

import Constant(e)

n_over_e :: [Float]
n_over_e = map ((/ e) . fromIntegral) naturals

int_n_over_e :: [Integer]
int_n_over_e = map round n_over_e

a225593 :: [Integer]
a225593 = int_n_over_e

one_minus_one_over_e_times_n :: [Integer]
one_minus_one_over_e_times_n = zipWith (-) naturals int_n_over_e
