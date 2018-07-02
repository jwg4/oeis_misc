module OutputSpec where

import Test.Hspec (Spec, it, shouldBe, describe, pending)

import Output (data_format)

test_sequence :: [Integer]
test_sequence = 1 : test_sequence

spec :: Spec
spec = do
  describe "data_format" $ do
    it "simple sequence" $
        data_format test_sequence
        `shouldBe` (concat ((replicate 86 "1, ") ++ ["1"]))
