somaConsecutivos xs = [ x + y | (x, y) <- pares xs]

pares xs = zip xs (tail xs)

