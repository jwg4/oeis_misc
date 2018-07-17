module PartitionSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Partition(partitions, a062515, a316532)

spec :: Spec
spec = do
  describe "partitions" $ do
    it "first partition" $
          partitions!!0 `shouldBe` []

  describe "a316532" $ do
    it "values from OEIS" $
        (take 8 a316532) `shouldBe` [1, 6, 30, 36, 210, 180, 2310, 216]
