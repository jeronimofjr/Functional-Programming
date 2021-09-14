

soma :: Int -> Int -> Int
soma x y = if pred(y) == 0 then succ x else soma (succ x) (pred y)



