module Main (main) where

factorial :: (Integral a) => a -> a

factorial n = if n < 2
              then 1
              else n * factorial (n - 1)

main :: IO ()
main = do
       putStrLn "Factorial of 12: "
       print (factorial 12)
