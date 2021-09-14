data Arv a = No a (Arv a) (Arv a)
            | ArvVazia
            deriving (Show, Eq)


arv1 = ArvVazia
arv2 = No 3 arv1 arv1
arv3 = No 5 arv1 arv1
arv4 = No 4 arv2 arv3

listar :: Arv a -> [a]
listar (ArvVazia) = []
listar (No x esq dir) = listar esq ++ [x] ++ listar dir


busca :: Ord a =>  a -> Arv a -> Bool
busca x (ArvVazia) = False
busca x (No y esq dir) | x == y = True
                       | x < y = busca x esq
                       | x > y =  busca x dir 

inserir :: Ord a => a -> Arv a -> Arv a
inserir x (ArvVazia) = No x (ArvVazia) (ArvVazia) 
inserir x (No y esq dir) | x < y = No y (inserir x esq) dir
                         | x > y = No y esq (inserir x dir)

mostrar :: Show a => Arv a -> [Char]
mostrar (ArvVazia) = []
mostrar (No x esq dir) = "[" ++ show x ++ mostrar esq ++ mostrar dir ++ "]"

list2Arv :: Ord a => [a] -> Arv a 
list2Arv [] = ArvVazia
list2Arv (x:xs) = inserir x (list2Arv xs)

list2Arv' :: Ord a => [a] -> Arv a 
list2Arv' [] = ArvVazia
list2Arv' (x:xs) = list2Arv (reverse xs) 

altura :: Arv a -> Int
altura ArvVazia = 0
altura (No x esq dir) = 1 + max (altura esq) (altura dir)

equilibrada :: Arv a -> Bool
equilibrada ArvVazia = True
equilibrada (No x esq dir) | abs ((altura esq) - (altura dir)) <= 1 = equilibrada esq && equilibrada dir
                           | otherwise = False


data Mobile = Pendente Int | Barra Mobile Mobile deriving (Eq, Show)

balanceado :: Mobile -> Bool
balanceado (Pendente x) = True
balanceado (Barra esq dir) | peso esq == peso dir = True
                           | otherwise = False
peso :: Mobile -> Int
peso (Pendente x) = x
peso (Barra esq dir) = (peso esq) + (peso dir)

makeMobile :: [Int] -> Mobile
makeMobile [x] = Pendente x
makeMobile xs = Barra ( makeMobile(take (div (tam) 2) xs)) (makeMobile (drop (div (tam) 2) xs))
    where 
        tam = length xs
-- makeMobile :: [Int] -> Mobile
-- makeMobile [x] = Pendente x
-- makeMobile xs = Barra (makeMobile m1) (makeMobile m2)
-- 	where m1 = take (div (length xs) 2) xs
-- 	      m2 = drop (div (length xs) 2) xs



















































