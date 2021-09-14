divisores :: Int -> [Int]
divisores n = [x | x <- [1..n-1], mod n x == 0]

numeroAbundante :: Int -> Bool
numeroAbundante x = sum(divisores x) > x 

abundantesMenores :: Int -> [Int]
abundantesMenores n = [ x | x <- [1..n], numeroAbundante x]