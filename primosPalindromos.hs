primo n = not(or [ mod n x == 0| x <- [2..n-1]])

func 0 = []
func x = mod x 10 : func (div x 10)

primosPalindromos  = [ x | x <- [ x | x <- [2..], primo x], reverse (func x) == func x]
