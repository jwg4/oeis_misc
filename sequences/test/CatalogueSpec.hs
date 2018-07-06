module CatalogueSpec where

import Test.Hspec (Spec, it, shouldBe, describe, pending)

import Catalogue (
    a000027, a000040, a000326, a001477, a003679,
    a063008, a117065
  )

atLeast :: Int -> [a] -> Bool
atLeast 0 _ = True
atLeast _ [] = False
atLeast n (_:xs) = atLeast (n-1) xs

check :: [Integer] -> [Integer] -> Bool
check a b = all id $ zipWith (==) a b

spec :: Spec
spec = do
  describe "a000027" $ do
    it "sequence exists" $
        atLeast 1 a000027
    it "values from OEIS" $
        check [1, 2, 3, 4, 5] a000027

  describe "a000040" $ do
    it "sequence exists" $
        atLeast 1 a000040

  describe "a000326" $ do
    it "sequence exists" $
        atLeast 1 a000040

  describe "a001477" $ do
    it "sequence exists" $
        atLeast 1 a001477

  describe "a003679" $ do
    it "sequence exists" $
        atLeast 1 a003679
    it "values from OEIS" $
        check [4, 8, 9, 16, 19, 20, 21, 26, 30, 31, 33, 38] a003679

  describe "a063008" $ do
    it "sequence exists" $
        atLeast 1 a063008
    it "values from OEIS" $
        check [1, 2, 4, 6, 8, 12, 30, 16, 24, 36, 60, 210, 32, 48, 72, 120, 180, 420, 2310, 64, 96, 144, 240, 216] a063008

  describe "a117065" $ do
    it "sequence exists" $
        atLeast 1 a117065
    it "values from OEIS" $
        check [19, 31, 43, 67, 89, 101, 113, 131, 229, 241, 277, 359, 383, 491, 523, 619] a117065
