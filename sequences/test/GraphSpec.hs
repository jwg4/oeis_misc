module GraphSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Graph (claw_chromatic_polynomial)

spec :: Spec
spec = do
  describe "claw_chromatic_polynomial" $ do
    it "first five elements" $
          (take 5 claw_chromatic_polynomial) `shouldBe` [0, 1, 24, 108, 320]
