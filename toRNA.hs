aux :: Char -> Char
aux c 
    | c == 'A' = 'U'
    | c == 'T' = 'A'
    | c == 'G' = 'C'
    | c == 'C' = 'G'

toRNA :: [Char] -> [Char]
toRNA xs = [aux x | x <- xs]



