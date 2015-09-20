readLines :: FilePath -> IO [String]
readLines = fmap lines . readFile
makeInteger :: [String] -> [Int]
makeInteger = map read

main = do
  content <- readLines "ex2/numbers.txt"
  mapM_ putStr content
  print $  makeInteger content

