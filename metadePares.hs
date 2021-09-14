



metadePares [] = []
metadePares (x:xs) = if even x then (div x 2) : metadePares xs else  metadePares xs 