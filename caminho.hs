



caminho _ [] = True
caminho _ [x] = True
caminho g (x:xs) = if elem (x, head xs) g then caminho g xs else False