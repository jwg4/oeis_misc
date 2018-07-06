module TransformSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Transform (increasing_intersect)

spec :: Spec
spec = do
  describe "increasing_intersect" $ do
    it "trivial intersection" $
        (take 5 (increasing_intersect [1, 2, 3, 4, 5] [1, 2, 3, 4, 5]))
          `shouldBe` [1, 2, 3, 4, 5]

    it "basic intersection" $
        (take 2 (increasing_intersect [2, 3, 5, 7, 11] [2, 4, 5, 6, 8, 10]))
          `shouldBe` [2, 5]
