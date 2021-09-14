

indices y n [] = []
indices y n (x:xs) = if y == x then n : indices y (n + 1) xs else indices y (n + 1) xs

maiorIndices xs = (maximum xs, indices (maximum xs) 0 xs)