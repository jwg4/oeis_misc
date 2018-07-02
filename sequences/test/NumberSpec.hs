module NumberSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Number (primes, divides)

spec :: Spec
spec = do
  describe "primes" $ do
    it "first five primes" $
          (take 5 primes) `shouldBe` [2, 3, 5, 7, 11]

    it "hundredth prime" $
        last (take 100 primes) `shouldBe` 541

  describe "divides" $ do
    it "basic divisibility test" $
          (divides 4 2) `shouldBe` True

    it "basic divisibility test 2" $
          (divides 4 3) `shouldBe` False
