fatorial :: Integer -> Integer
fatorial n = product [1..n]

aproximaE n = sum[ 1/fromIntegral(fatorial x) | x <- [0..n]] 
