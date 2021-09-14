{-Escreva uma função divisores  tal que (divisores n) devolve uma lista dos número que 
são divisores de n. 

divisores 15 == [1,3,5,15]
divisores 74 == [1,2,37,74]
-}

divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], mod n x == 0]

divisores' :: Int -> [Int]
divisores' n = 1 : [ x | x <- [2..(div n 2)], mod n x == 0] ++ [n]