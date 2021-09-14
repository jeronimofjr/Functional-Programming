data MultiSet a = MultiSet [(a, Int)] deriving (Show)


            
insereAux x [] = [(x, 1)]
insereAux x ((a, b):xs)
        | a > x = (x, 1):(a, b):xs
        | a < x = (a, b):(insereAux x xs)
        | otherwise = (a, b+1):xs

insere :: Ord a => a -> MultiSet a -> MultiSet a
insere x (MultiSet xs) = MultiSet (insereAux x xs)

tamanho (MultiSet xs) = sum[ b | (a, b) <- xs]
