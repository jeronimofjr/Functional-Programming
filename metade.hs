

metade xs = (take y xs, drop y xs)
        where y = (div (length xs) 2)