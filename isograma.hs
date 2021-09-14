import qualified Data.Set as Set 
import Data.Char

isograma xs = q == r
    where
        r =  if hifen >= 1 then (t - 1) else t
        q = ((length n_xs) - hifen)
        hifen = length (filter( =='-') n_xs) + length (filter( ==' ') n_xs)
        t = (Set.size (Set.fromList n_xs))
        n_xs = [toLower x | x <- xs]
       
        


   


