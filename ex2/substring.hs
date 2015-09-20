{-
 - 입력받은 문자열 a b에 대해, a와 b의 생성가능한 부분문자열의 총 개수
 -}

import Data.List

main = do
    inp <- getLine
    print $ length $ substrMatches $ words inp

-- substrings of a those matches with substrings of b
substrMatches :: [String] -> [String]
substrMatches l = [x | x <- substrs a, x `elem` substrs b]
  where
    a = l !! 0
    b = l !! 1

-- non-empty substrings
substrs :: String -> [String]
substrs = concatMap (tail . inits) . tails

test1 = length (substrMatches ["abcdefgh", "efayzx"]) == 4
