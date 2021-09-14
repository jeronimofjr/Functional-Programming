
zeroUm :: Int -> Int -> Int -> Char
zeroUm a b c 
    | (a == b) && (b == c) = '*'
    | a == b = 'C'
    | a == c = 'B'
    | otherwise = 'A'