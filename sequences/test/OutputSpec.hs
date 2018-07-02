module OutputSpec where

import Test.Hspec (Spec, it, shouldBe, describe, pending)

import Output (data_format)

test_sequence :: [Integer]
test_sequence = 1 : test_sequence

test_sequence_2 :: [Integer]
test_sequence_2 = [4, 8, 9, 16, 19, 20, 21, 26, 30, 31, 33, 38, 42, 43, 50, 54, 55, 60, 65, 67, 77, 81, 84, 88, 89, 90, 96, 99, 100, 101, 111, 112, 113, 120, 125, 131, 135, 138, 142, 154, 159, 160, 166, 170, 171, 183, 195, 204, 205, 207, 217, 224, 225, 226, 229, 230, 236, 240, 241]
test_output_2 :: [Char]
test_output_2 = "4, 8, 9, 16, 19, 20, 21, 26, 30, 31, 33, 38, 42, 43, 50, 54, 55, 60, 65, 67, 77, 81, 84, 88, 89, 90, 96, 99, 100, 101, 111, 112, 113, 120, 125, 131, 135, 138, 142, 154, 159, 160, 166, 170, 171, 183, 195, 204, 205, 207, 217, 224, 225, 226, 229, 230, 236, 240"

spec :: Spec
spec = do
  describe "data_format" $ do
    it "simple sequence" $
        data_format test_sequence
        `shouldBe` (concat ((replicate 86 "1, ") ++ ["1"]))

    it "real example of truncating a sequence" $
        data_format test_sequence_2
        `shouldBe` test_output_2

