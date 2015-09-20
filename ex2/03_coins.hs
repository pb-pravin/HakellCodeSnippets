    money <- getLine
    coins <- getLine
    print $ combi (read money) (map read $ words coins)
    
combi :: Int -> [Int] -> Int
combi m c
    | m <  0    = 0
    | m == 0    = 1
    | otherwise = if c == []
                     then 0
                     else combi (m - (head c)) c + combi m (tail c)


-- 5
-- 5 6 76 3 4
