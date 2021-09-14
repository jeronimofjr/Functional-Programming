

merge :: [Int] -> [Int] -> [Int]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x <= y =  x:merge xs (y:ys)
                    | otherwise = y:merge (x:xs) ys


inserir x [] = [x]
inserir x (y:ys) = if x <= y then x:y:ys else y: inserir x ys