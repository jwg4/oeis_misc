module DigitSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Digit (digits, contains, searchForExtension)

spec :: Spec
spec = do
  describe "digits" $ do
    it "small input number" $
          digits 12345 `shouldBe` [1, 2, 3, 4, 5]

  describe "contains" $ do
    it "a number contains itself" $
        contains 45 45 `shouldBe` True

    it "27 does not contain 45" $
        contains 27 45 `shouldBe` False

    it "2415 does contain 45" $
        contains 2415 45 `shouldBe` True

  describe "searchForExtension" $ do
    it "next number bigger than 4" $ 
        searchForExtension [1..] 4 `shouldBe` 14
