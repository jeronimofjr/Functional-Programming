





{-}
agrupa [] = []
agrupa (x:xs) = if null xs then n ++ map (head) xs   agrupa (tail xs)
    where nag = []-}

empty [] = True
empty (x:xs) = if null x then False else empty xs  

agrupa (x:xs) = if empty xs then xs else  map (head) xs ++ agrupa tail(xs) 


