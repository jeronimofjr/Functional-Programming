


subidas :: [Float] -> Int
subidas [] = 0
subidas [x] = 0
subidas (x:xs) = if x < head xs  then 1 + subidas xs else subidas xs