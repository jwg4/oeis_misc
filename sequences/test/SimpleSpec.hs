module SimpleSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Simple (nth_powers)

spec :: Spec
spec = do
  describe "nth_powers" $ do
    it "first five powers of 3" $
          (take 5 (nth_powers 3)) `shouldBe` [0, 1, 8, 27, 64]
