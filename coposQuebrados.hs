

coposQuebrados :: [(Int, Int)] -> Int
coposQuebrados [] = 0
coposQuebrados (x:xs) = if fst x > snd x 
                        then snd x + coposQuebrados xs else coposQuebrados xs