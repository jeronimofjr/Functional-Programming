

primos = sieve [2..]
    where sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]

goldbach n = head [(x,y) | x <- pr, y <- pr, x + y == n]
    where pr = takeWhile (<n) primos