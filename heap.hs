data Arv a = No a (Arv a) (Arv a)
            | Vazia
            deriving (Show, Eq)


listar :: Arv a -> [a]
listar (Vazia) = []
listar (No x esq dir) = [x] ++ listar esq ++ listar dir