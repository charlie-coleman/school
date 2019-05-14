isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome (x:xs) = (x == (last xs)) && (isPalindrome (init xs))


pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = (takeWhile (==x) (x:xs)):(pack (dropWhile (== x) (x:xs)))
