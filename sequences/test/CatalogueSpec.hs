module CatalogueSpec where

import Test.Hspec (Spec, it, shouldBe, describe, pending)

import Catalogue (
    a000027, a000040, a000326, a001477, a002110,
    a003679, a062515, a063008, a117065, a126796,
    a179824, a233695, a233694, a236970, a236971,
    a236972, a256535,
    a316343, a316344, a316345, a316532, a316824
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

  describe "a002110" $ do
    it "sequence exists" $
        atLeast 1 a002110

  describe "a003679" $ do
    it "sequence exists" $
        atLeast 1 a003679
    it "values from OEIS" $
        check [4, 8, 9, 16, 19, 20, 21, 26, 30, 31, 33, 38] a003679

  describe "a062515" $ do
    it "sequence exists" $
        atLeast 1 a062515
    it "values from OEIS" $
        check [1, 6, 30, 36, 210, 180, 216, 2310, 1260, 900, 1080, 1296, 30030, 13860, 6300, 7560, 5400, 6480, 7776, 510510, 180180, 69300, 83160, 44100, 37800, 45360, 27000, 32400, 38880, 46656] a062515

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

  describe "a117065" $ do
    it "sequence exists" $
        atLeast 1 a179824
    it "values from OEIS" $
        check [2, 24, 108, 320] a179824

  describe "a233694" $ do
    it "values from OEIS" $
        check [1, 2, 3, 5, 11, 23, 49, 102, 212, 443, 926, 1939] a233694

  describe "a233695" $ do
    it "values from OEIS" $
        check [10, 18, 30, 56, 109, 219, 450, 933, 1946, 4071] a233695

  describe "a236970" $ do
    it "sequence exists" $
        atLeast 1 a236970
    it "values from OEIS" $
        check [0, 0, 1, 2, 2, 3, 5, 6, 7, 13, 16, 19] a236970

  describe "a256535" $ do
    it "sequence exists" $
        atLeast 1 a256535
    it "values from OEIS" $
        check [0, 0, 1, 4, 5, 8, 11, 16, 19, 24, 29, 36] a256535

  describe "a316343" $ do
    it "sequence exists" $
        atLeast 1 a316343
    it "values from OEIS" $
        check [0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1] a316343

  describe "a316344" $ do
    it "sequence exists" $
        atLeast 1 a316344

  describe "a316345" $ do
    it "sequence exists" $
        atLeast 1 a316345
    it "values from OEIS" $
        check [0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0] a316345

  describe "a316532" $ do
    it "sequence exists" $
        atLeast 1 a316532
    it "values from OEIS" $
        check [1, 6, 30, 36, 210, 180, 2310, 216] a316532

  describe "a316824" $ do
    it "sequence exists" $
        atLeast 1 a316824
    it "values from OEIS" $
        check [0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0] a316824
