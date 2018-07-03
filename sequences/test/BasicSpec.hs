module BasicSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Basic (naturals)

spec :: Spec
spec = do
  describe "naturals" $ do
    it "first five naturals" $
          (take 5 naturals) `shouldBe` [1, 2, 3, 4, 5]

    it "hundredth natural" $
        naturals!!99 `shouldBe` 100
