module BasicSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Basic (naturals, up_to)

spec :: Spec
spec = do
  describe "naturals" $ do
    it "first five naturals" $
          (take 5 naturals) `shouldBe` [1, 2, 3, 4, 5]

    it "hundredth natural" $
        naturals!!99 `shouldBe` 100

  describe "up_to" $ do
    it "up_to 10" $ 
      up_to 10 `shouldBe` [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
