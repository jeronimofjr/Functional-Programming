type Ponto = (Double, Double)

distancia :: [Ponto] -> [Ponto] -> (Ponto, Ponto)

distancia ps qs = (p, q)
    where (d, p, q) = minimum [(dis p q, p, q) | p <- ps, q <- qs]
        distancia (x, y) (u, v) = sqrt ((x - u)^2 + (y - v)^2)