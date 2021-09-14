

potDois :: Int -> Int 
potDois 0 = 1
potDois n = 2 * potDois(n - 1)