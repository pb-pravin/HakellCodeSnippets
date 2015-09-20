

binarySearch :: Ord a => a -> [a] -> Int
binarySearch object list
  | list == []          = 0
  | object <= head list = 0
  | object >= last list = length list - 1
  | otherwise =
    case compare object (list !! half) of
      LT -> binarySearch object (take half list)
      EQ -> half
      GT -> half + binarySearch object (drop half list)
      where
        half = (length list) `div` 2


enhancedSearch :: Int -> [Int] -> Int
enhancedSearch object list
  | list == []  = 0
  | object <= h = 0
  | object >= l = len - 1
  | otherwise   =
    case compare object (list !! p) of
      LT -> enhancedSearch object (take p list)
      EQ -> p
      GT -> p + enhancedSearch object (drop p list)
      where
        p = len `div` ((l - h) `div` (object - h))
        h = head list
        l = last list
        len = length list

main =
    do
      putStr "3== "; print $ binarySearch   4 [1,2,3,4,5,6,9,99,999]
      putStr "4== "; print $ binarySearch   17 [1,4,5,7,17,22,32,43,99,999]
      putStr "7== "; print $ binarySearch   8 [1,2,3,4,5,6,7,8,9,10]
      putStr "4== "; print $ binarySearch   9 [x | x <- [1..99], x `mod` 2 /= 0]
      -- putStr "3== "; print $ enhancedSearch 4 [1,2,3,4,5,6,9,99,999]
      -- putStr "4== "; print $ enhancedSearch 17 [1,4,5,7,17,22,32,43,99,999]
      -- putStr "7== "; print $ enhancedSearch 8 [1,2,3,4,5,6,7,8,9,10]
      -- putStr "4== "; print $ enhancedSearch 9 [x | x <- [1..99], x `mod` 2 /= 0]



