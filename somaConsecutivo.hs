
{--}
somaConsecutivo [x] = []
somaConsecutivo (x:xs) = [x + head xs] ++ somaConsecutivo xs