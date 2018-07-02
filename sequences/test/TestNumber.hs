import Test.Hspec        (Spec, it, shouldBe)
import Test.Hspec.Runner (configFastFail, defaultConfig, hspecWith)

import Number (primes, divides)

main :: IO ()
main = hspecWith defaultConfig {configFastFail = True} specs

specs :: Spec
specs = do

    it "first five primes" $
          (take 5 primes) `shouldBe` [2, 3, 5, 7, 11]

    it "basic divisibility test" $
          (divides 4 2) `shouldBe` True

    it "basic divisibility test 2" $
          (divides 4 3) `shouldBe` False
