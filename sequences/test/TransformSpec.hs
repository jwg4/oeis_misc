module TransformSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Transform (increasing_intersect)

spec :: Spec
spec = do
  describe "increasing_intersect" $ do
    it "trivial intersection" $
        (take 5 (increasing_intersect [1, 2, 3, 4, 5] [1, 2, 3, 4, 5]))
          `shouldBe` [1, 2, 3, 4, 5]
