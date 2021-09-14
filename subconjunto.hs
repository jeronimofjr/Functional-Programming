{-
Defina uma função subconjunto :: Eq a => [a] -> [a] -> Bool tal que (subconjunto xs ys) 
verifica xs é um subconjunto de ys. Por exemplo,

subconjunto [ 3 , 2 , 3 ] [ 2 , 5 , 3 , 5 ] == True

subconjunto [ 3 , 2 , 3 ] [ 2 , 5 , 6 , 5 ] == F a l s e
-}


-- Versão 01
conjunto [] ys = 0
conjunto (x:xs) ys = if elem x ys then 1 + conjunto xs ys else conjunto xs ys

subconjunto1 xs ys = (conjunto xs ys) == (length xs)

--Versão 02
subconjunto [] _ = True
subconjunto (y:ys) xs = if  elem y xs then subconjunto ys xs else False
