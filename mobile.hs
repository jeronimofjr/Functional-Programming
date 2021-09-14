data Mobile = Pendente Int | Barra Mobile Mobile deriving (Eq, Show)


--balanceado :: Mobile -> Bool
--balanceado (Pendente (a)) = True



peso :: Mobile -> Int
peso (Pendente x) = x
peso (Barra a  b) = (peso a) + (peso b)