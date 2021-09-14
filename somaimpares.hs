{-
Defina uma função somaImpares tal que (somaImpares xs) devolve a soma dos elementos ímpares de uma lista.
somaImpares [2,3,1,5] == 9
somaImpares [1,1,4,2] == 2
-}

somaimpares xs = sum(impares)
    where impares = filter (odd) xs