module Main where

naturals :: [Integer]
naturals = 1 : map (+ 1) naturals
