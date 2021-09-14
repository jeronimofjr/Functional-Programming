divisores :: Int -> [Int]
divisores n = [x | x <- [1..n-1], mod n x == 0]

abundante :: Int -> Bool
abundante x = sum(divisores x) > x 