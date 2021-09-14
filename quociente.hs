


quociente :: Int -> Int
quociente x y = if y > x then 0 else 1 + quociente (x-y) y