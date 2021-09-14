{- Defina a função neglist xs que computa o número de elementos negativos em uma lista xs.

neglist [ 1 , 2 , 3 , 4 , 5 ] == 0
neglist [1 , −3 , −4 ,3 ,4 , −5] == 3
-}

-- Versão 01
neglist :: [Int] -> Int
neglist [] = 0
neglist (x:xs) = if x < 0 then 1 + neglist xs else neglist xs

-- Versão 02
neg :: [Int] -> Int
neg xs = length a
    where a = filter (< 0) xs