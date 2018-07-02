module CatalogueSpec where

import Test.Hspec (Spec, it, shouldBe, describe, pending)

import Catalogue (a000040)

atLeast :: Int -> [a] -> Bool
atLeast 0 _ = True
atLeast _ [] = False
atLeast n (_:xs) = atLeast (n-1) xs

spec :: Spec
spec = do
  describe "a000040" $ do
    it "sequence exists" $
        atLeast 1 a000040
