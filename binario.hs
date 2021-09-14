


{- binario x
    | x == 1 = [1]
    | mod x 2 == 0 = 0 : binario (div x 2)
    | mod x 2 /= 0 = 1 :  binario (div x 2) -}

binario :: Int -> [Int]
binario 1 = [1]
binario x = if mod x 2 == 0 then 0 : binario (div x 2) else 1 :  binario (div x 2)
