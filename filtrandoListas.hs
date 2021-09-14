{-
Defina uma função filtrandoListas :: [[a]]->[[a]] tal que (filtrandoListas xss) devolve uma 
lista contendo o maior prefixo do mesmo tamanho de cada lista de xss.

filtrandoListas [[3,2,1],[3,4],[4,3,2,1]] == [[3,2],[3,4],[4,3]]
-}


filtrandoListas xs = [take n x | x <- xs] 
        where n = minimum([length x| x <- xs])