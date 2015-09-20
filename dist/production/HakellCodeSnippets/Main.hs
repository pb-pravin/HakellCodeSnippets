module Main where

main = do
    putStrLn $ show $ leapYearsIn 2000 3000
    --putStrLn "Enter starting year: "
    --s <- getLine
    --putStrLn "Enter finishing year: "
    --f <- getLine
    --putStrLn $ show (leapYearsIn (read s) (read f)) ++ " leap years exist."

leapYearsIn s f = length [x |x <- [s..f] , (x `mod` 4==0 && x `mod` 100/=0 ) || x `mod` 400==0]
