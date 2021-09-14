


prodInt :: Int -> Int -> Int
prodInt m n = if m == n then n else m * prodInt (m+1) n