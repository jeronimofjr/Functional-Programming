


gangorra :: Int -> Int -> Int -> Int -> Int
gangorra p1 c1 p2 c2
    | (p1 * c1) > (p2 * c2) = -1
    | (p1 * c1) < (p2 * c2) = 1
    | otherwise = 0