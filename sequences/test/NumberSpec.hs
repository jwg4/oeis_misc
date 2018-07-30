module NumberSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Number (gcd, primes, divides, primorials)

spec :: Spec
spec = do
  describe "primes" $ do
    it "first five primes" $
          (take 5 primes) `shouldBe` [2, 3, 5, 7, 11]

    it "hundredth prime" $
        primes!!99 `shouldBe` 541

  describe "divides" $ do
    it "basic divisibility test" $
          (divides 4 2) `shouldBe` True

    it "basic divisibility test 2" $
          (divides 4 3) `shouldBe` False

    it "primorials" $ 
        (primorials!!4) `shouldBe` 210

  describe "gcd" $ do
    it "basic GCD test" $
        Number.gcd (10, 6) `shouldBe` 2

    it "Don't choke if one of the numbers is negative." $
        Number.gcd (10, -6) `shouldBe` 2

    it "Don't return a negative number for gcd" $
        Number.gcd (-10, -6) `shouldBe` 2
