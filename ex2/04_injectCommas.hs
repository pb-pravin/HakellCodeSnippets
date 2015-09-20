
injectCommas :: Integer -> String
injectCommas n = init $ reverse $ fst $ commas ("", reverse $ show n)
  where
    commas (done, left) = if length left <= 3
                            then (done ++ [','] ++ left, "")
                            else commas (done ++ [','] ++ (fst t), snd t)
      where t = splitAt 3 (left)
