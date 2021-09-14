import Data.Char

capitalise :: [Char] -> [Char]
capitalise xs = [toUpper x | x <- xs]