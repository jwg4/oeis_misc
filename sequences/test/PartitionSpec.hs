module PartitionSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Partition(partitions)

spec :: Spec
spec = do
  describe "partitions" $ do
    it "first partition" $
          partitions!!0 `shouldBe` []
