

mul :: Int -> Int -> Int
mul m n =  if n == 1 then m else m + mul m (n-1)  