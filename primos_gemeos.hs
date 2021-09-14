primo n = not(or [ mod n x == 0| x <- [2..n-1]])

primosGemeos = [ (a, b)|  (a, b) <- zip p (tail p), b - a == 2]
    where p = [ x | x <- [2..], primo x]


