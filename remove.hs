



remove y [] = []
remove y (x:xs) = if y == x then xs else x : remove y xs