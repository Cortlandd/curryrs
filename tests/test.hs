module Main where
import Curryrs
import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests = testGroup "Unit Tests"
  [ testCase "Check that double_input works" $
    do
    x <- double_input 3
    x @?= 6
  ]
