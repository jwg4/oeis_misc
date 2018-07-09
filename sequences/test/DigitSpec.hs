module DigitSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Digit (digits, contains)

spec :: Spec
spec = do
  describe "digits" $ do
    it "small input number" $
          digits 12345 `shouldBe` [1, 2, 3, 4, 5]


  describe "contains" $ do
    it "a number contains itself" $
        contains 45 45 `shouldBe` True
