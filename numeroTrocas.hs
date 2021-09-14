import Data.Char
import qualified Data.Set as Set


numeroTrocas xs ys = min (length (Set.difference n_xs n_ys)) (length (Set.difference n_ys n_xs))
    where
        n_xs = Set.fromList xs
        n_ys = Set.fromList ys