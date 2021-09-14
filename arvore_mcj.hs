data Mconj a = Vazio | No a Int (Mconj a) (Mconj a) deriving (Show)

m1 = No 'A' 2 Vazio (No 'B' 1 Vazio Vazio)
m2 = No (1::Int) 2 Vazio (No (2::Int) 1 Vazio Vazio)

ocorre x (Vazio) = 0
ocorre x (No y q esq dir)
    | x == y = q
    | x > y = ocorre x dir
    | x < y = ocorre x esq

toList (Vazio) = []
toList (No x q esq dir) = toList esq ++ replicate q x ++ toList dir

tamanho (Vazio) = 0
tamanho (No x q esq dir) = q + tamanho esq + tamanho dir

sumMConj (Vazio) = 0
sumMConj (No x q esq dir) = q * x + sumMConj esq + sumMConj dir