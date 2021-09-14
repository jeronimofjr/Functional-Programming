somaMultiplos xs n = sum(remove (multiplos xs n) [])

multiplos xs n = [ t| x <- xs, t <- [x..n-1], mod t x == 0]

remove [] _ = []
remove (x:xs) ys = if elem x ys then remove xs ys else x : remove xs (x:ys)

