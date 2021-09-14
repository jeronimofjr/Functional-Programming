
length [] = 0
length (x:xs) = 1 + length xs

length' xs = foldr f v xs 
    where 
        v = 0
        f x z = 1 + z

map' f xs = foldr g v xs
    where
        v = []
        g x z =  f x : z

 

func xs ys = foldr(\x y z t -> if x == z then (+1) else (0)) [] ys


aux xs =  foldr(\x z ->  fst x : z) [] xs