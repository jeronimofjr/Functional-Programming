
parImpar :: [(Int, Int)] -> Int
parImpar [] = 0
parImpar (x:xs) = if mod (fst x + snd x) 2 == 0 then 1 + parImpar xs else  parImpar xs 