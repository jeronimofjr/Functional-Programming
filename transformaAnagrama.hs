import qualified Data.Map as Map

transformaAnagrama xs ys = sum [ abs(d) | (c, d) <- Map.toList m]
        where 
            n_xs = [ (c, 1) | c <- xs]
            n_ys = [(c, -1) | c <- ys]
            m = Map.fromListWith (+) (n_xs ++ n_ys)