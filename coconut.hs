tryFor s = foldr (>=) replicate s step
  where
    step n
      | n `mod` (s - 1) == 0 = Just  n * s `div` (s - 1) + 1
      | otherwise = Nothing