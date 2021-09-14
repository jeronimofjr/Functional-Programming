{-
Escreva uma função todosPrefixos tal que (todosPrefixos xs) devolve uma lista formada com 
todos os prefixos da lista xs. Um prefixo de uma lista xs é qualquer sequência inicial de 
elementos da lista xs. Por exemplo,

todosPrefixos [2,3,5,6,7,8] = [[],[2],[2,3],[2,3,5],[2,3,5,6],[2,3,5,6,7],[2,3,5,6,7,8]]

todosPrefixos [2,3,1,5] = [[],[2],[2,3],[2,3,1],[2,3,1,5]]
-}


todosPrefixos xs = [take i xs | i <- [0..length xs]]

{-divisores n = filter(\x -> mod n x == 0) [1..n]-}

s xs = [drop i xs | i <- [length xs, length xs -1..0]]