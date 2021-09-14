

potencia :: Int -> Int -> Int

potencia x y = if y == 0 then 1 else x * potencia x (y-1)