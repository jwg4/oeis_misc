import Test.Hspec        (Spec, it, shouldBe)
import Test.Hspec.Runner (configFastFail, defaultConfig, hspecWith)

import Number (primes)

main :: IO ()
main = hspecWith defaultConfig {configFastFail = True} specs

specs :: Spec
specs = it "hello" $
          (take 5 primes) `shouldBe` [2, 3, 5, 7, 11]
