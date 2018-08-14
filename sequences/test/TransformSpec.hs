module TransformSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Transform (greedy_complete, increasing_intersect, increasing_union, record_indices, record_values)

spec :: Spec
spec = do
  describe "increasing_intersect" $ do
    it "trivial intersection" $
        (take 5 (increasing_intersect [1, 2, 3, 4, 5] [1, 2, 3, 4, 5]))
          `shouldBe` [1, 2, 3, 4, 5]

    it "basic intersection" $
        (take 2 (increasing_intersect [2, 3, 5, 7, 11] [2, 4, 5, 6, 8, 10]))
          `shouldBe` [2, 5]

  describe "increasing_union" $ do
    it "basic union" $
        (take 8 (increasing_union [2, 3, 5, 7, 11] [2, 4, 5, 6, 8, 10]))
          `shouldBe` [2, 3, 4, 5, 6, 7, 8, 10]

  describe "greedy_complete sequence" $ do
    it "unconstrained" $
        (take 5 (greedy_complete [1..]))
            `shouldBe` [1, 2, 4, 8, 16]

  describe "record_values" $ do
    it "basic example" $
        record_values [0, 1, 0, 2, 0, 3, 0, 5]
            `shouldBe` [0, 1, 2, 3, 5]

  describe "record_indices" $ do
    it "basic example" $
        record_indices [0, 1, 0, 2, 0, 3, 0, 5]
            `shouldBe` [0, 1, 3, 5, 7]
