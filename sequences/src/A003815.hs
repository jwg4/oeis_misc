module A003815 where

import Data.Bits(xor)
import Basic(naturals)

xor_triangles :: [Int]
xor_triangles = map (xor_triangle . fromIntegral) naturals
  where xor_triangle x = foldl xor 0 $ [1..x]

a003815 :: [Integer]
a003815 = map fromIntegral xor_triangles
