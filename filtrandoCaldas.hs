



filtrandoCaldas [] = []
filtrandoCaldas (x:xs) = if null x then [] ++ filtrandoCaldas xs else [tail x] ++ filtrandoCaldas xs