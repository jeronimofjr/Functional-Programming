campeonato :: Int -> Int -> Int -> Int -> Int -> Int -> Char
campeonato cv ce cs fv fe fs
        | (cv * 3) + ce > (fv * 3) + fe = 'C'
        |  (cv * 3) + ce < (fv * 3) + fe = 'F'
        | cs > fs = 'C'
        | fs > cs = 'F'
        | otherwise = '=' 