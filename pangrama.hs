import Data.Char
import qualified Data.Set as Set


isPangram xs = Set.size (Set.fromList l) == 26
    where
        l = [ toUpper x| x <- xs, isLetter x]