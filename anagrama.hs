

anagrama [] _ = 0
anagrama (x:xs) ys = if not (elem x ys) then 1 + anagrama xs ys else anagrama xs ys



transformaAnagrama xs ys = anagrama xs ys + anagrama ys xs

