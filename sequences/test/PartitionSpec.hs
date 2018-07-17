module PartitionSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Partition(partitions, a062515, a316532, n_complete_partitions, is_n_complete, is_subpartition_of, removed_points)

spec :: Spec
spec = do
  describe "partitions" $ do
    it "first partition" $
          partitions!!0 `shouldBe` []

  describe "a316532" $ do
    it "values from OEIS" $
        (take 8 a316532) `shouldBe` [1, 6, 30, 36, 210, 180, 2310, 216]

  describe "n-complete partitions" $ do
    it "n = 3, check some values" $
        (take 8 (n_complete_partitions 3)) `shouldBe` [0, 0, 1, 2, 2, 3, 5, 6]

  describe "is_n_complete" $ do
    it "(2, 1, 1, 1) is 3-complete" $
        is_n_complete 3 [2, 1, 1, 1] `shouldBe` True
    it "(3, 1, 1) is not 3-complete" $
        is_n_complete 3 [3, 1, 1] `shouldBe` False

  describe "is_subpartition_of" $ do
    it "(2, 1, 1, 1) is subpartition of (2, 2, 1)" $
        is_subpartition_of [2, 1, 1, 1] [2, 2, 1] `shouldBe` True
    it "(3, 1, 1) is not subpartition of (2, 2, 1)" $
        is_subpartition_of [3, 1, 1] [2, 2, 1] `shouldBe` False

  describe "removed_points" $ do
    it "[1, 2, 3]" $
        removed_points [1, 2, 3] `shouldBe` [(1, [2, 3]), (2, [1, 3]), (3, [1, 2])]
