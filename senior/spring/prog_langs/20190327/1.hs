module Main (main) where

safetail :: [a] -> [a]
safetail [] = []
safetail (x:xs) = xs

main :: IO()
main = do print (safetail [1])
