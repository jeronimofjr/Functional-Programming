

resto :: Int -> Int -> Int
resto p q
        | p < q = p
        | otherwise = resto (p - q) q