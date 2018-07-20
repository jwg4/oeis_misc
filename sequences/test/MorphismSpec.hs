module MorphismSpec where

import Test.Hspec (Spec, it, shouldBe, describe)

import Morphism (generate_sequence)

fib :: Integer -> [Integer]
fib 0 = [0, 1]
fib 1 = [0]

spec :: Spec
spec = do
  describe "generate_sequence" $ do
    it "fibonacci sequence" $
          (take 5 (generate_sequence fib 0)) `shouldBe` [0, 1, 0, 0, 1]
