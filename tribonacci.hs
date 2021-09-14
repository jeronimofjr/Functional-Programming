
{- 
tribonacc n 
        | n >= 3 = tribonacc (n - 1) + tribonacc (n - 2) + tribonacc (n - 3)
        | n == 2 = 1
        | n == 1 || n == 0 = 0


--tribonacci n = (tribonacc n - 2, tribonacc n - 1, tribonacc n)


tribonacci n = reverse (take 3 [ tribonacc x | x <- [n, n-1..]])

aux n = (l !! 0, l !! 1, l !! 2)
    where 
        l = tribonacci n
 -}


sequencia = 0 : 0 : 1 : [ fst x + snd x + y| (x, y) <- zip (zip sequencia (tail sequencia)) (tail(tail sequencia))]

tribonacci n = (xs !! (n-2), xs !! (n-1), xs !! (n))
    where 
        xs = take (n+1) (sequencia)