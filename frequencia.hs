

frequencia a [] = 0
frequencia a (x:xs)
        | x == a = frequencia a xs+1
        | otherwise = frequencia a xs