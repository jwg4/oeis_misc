module SummandSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Catalogue (a075058)
import Summand (number_of_summands)

spec :: Spec
spec = do
  describe "number_of_summands" $ do
    it "powers_of_two" $
          (number_of_summands [1, 2, 4, 8, 16, 32] 7) `shouldBe` 3

    it "complete sequence of primes" $
          (number_of_summands a075058 19) `shouldBe` 4

