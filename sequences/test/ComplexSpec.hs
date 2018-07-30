module ComplexSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Complex (GaussianRational(GR_BCD), gr_increment, gr_reciprocal, gr_times_i, all_tree_values)

spec :: Spec
spec = do
  describe "increment" $ do
    it "basic increment" $
          (gr_increment (GR_BCD 0 1 1)) `shouldBe` (GR_BCD 1 1 1)

  describe "reciprocal" $ do
    it "reciprocal of real integer" $
          (gr_reciprocal (GR_BCD 2 0 1)) `shouldBe` (GR_BCD 1 0 2)

    it "reciprocal of i" $
          (gr_reciprocal (GR_BCD 0 1 1)) `shouldBe` (GR_BCD 0 (-1) 1)

  describe "tree expansion" $ do
    it "Expand 2 and i" $ 
        all_tree_values [GR_BCD 2 0 1, GR_BCD 0 1 1] `shouldBe` [
            GR_BCD 3 0 1, GR_BCD 1 0 2, GR_BCD 0 2 1,
            GR_BCD 1 1 1, GR_BCD 0 (-1) 1, GR_BCD (-1) 0 1 ]

