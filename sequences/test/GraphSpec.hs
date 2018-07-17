module GraphSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Graph (a179824, a179824_alt, claw_chromatic_numbers)

spec :: Spec
spec = do
  describe "claw_chromatic_numbers" $ do
    it "first five elements" $
          (take 5 claw_chromatic_numbers) `shouldBe` [0, 2, 24, 108, 320]

  describe "A179824" $ do
    it "compare two methods of calculation" $
        (take 5 a179824) `shouldBe` (take 5 a179824_alt)
