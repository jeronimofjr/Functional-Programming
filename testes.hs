

remove n [] = []
remove n (x:xs) = if n == x then remove n xs else x : remove n xs


inserir x [] = [x]
inserir x (y:ys) = if x <= y then x:y:ys else y : inserir x ys


subconjunto [] _ = True
subconjunto (y:ys) xs = if  elem y xs then subconjunto ys xs else False



somaConsecutivo [x] = []
somaConsecutivo (x:xs) = [x + head xs] ++ somaConsecutivo xs


frequencia n [] = 0
frequencia n (x:xs) = if n == x then 1 + frequencia n xs else frequencia n xs 

intercala n [] = []
intercala n (x:xs) = x : n : intercala n xs 