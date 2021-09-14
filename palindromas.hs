import qualified Data.Map as Map



numeroInsercao xs = if p > 0 then p - 1 else p       
    where
        ys = [ (a, 1) | a <- xs]
        n = Map.fromListWith (+) ys
        p = sum[1 | (x, y) <-  Map.toList n, mod y 2 /= 0 ] 
