module DigitSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Digit (digits)

spec :: Spec
spec = do
  describe "digits" $ do
    it "small input number" $
          digits 12345 `shouldBe` [1, 2, 3, 4, 5]
