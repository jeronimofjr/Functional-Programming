

{-divisores2 n = divs
    where divs = filter(== mod n [1..n]) -}

calcPi n = sum([(4*(-1)^x)/fromIntegral(2*x + 1)| x <- [0..n]])
