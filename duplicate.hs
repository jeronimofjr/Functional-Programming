import qualified Data.Map as Map



duplicates xs =  [fst t |t <- Map.toList n, snd t >= 2]
    where
        ys = [ (a, 1) | a <- xs]
        n = Map.fromListWith (+) ys

