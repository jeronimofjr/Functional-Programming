data Mobile = Pendente Int | Barra Mobile Mobile deriving (Eq, Show)


makeMobile :: [Int] -> Mobile
makeMobile [a] = Pendente a
makeMobile xs = makeMobile xs