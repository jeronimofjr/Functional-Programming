



pell_aux n = if n <= 1 then n else  2*(pell_aux (n - 1)) + pell_aux (n - 2)

pell_aux2 n = take 2 [ pell_aux x | x <- [n, n-1..]]

pell n = (l !! 1, l !! 0)
    where 
        l = pell_aux2 n



pell_number n = [ 2*b + a | x <- [3..n] ] 
    where
        a = 1
        b = 2

