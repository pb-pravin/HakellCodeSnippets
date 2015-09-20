main = do
        n <- getLine
        print $ ladders $ read n
        print $ ladders 4
        print $ ladders 8
        print $ ladders 16

ladders :: Int -> Int
ladders 2 = 2
ladders n = n * ladders (n - 1)

