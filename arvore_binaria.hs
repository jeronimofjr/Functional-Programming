data ArvBin a = Vazia | No a ( ArvBin a ) ( ArvBin a ) deriving (Eq, Show)



no1 = No 4 Vazia Vazia
no2 = No 8 Vazia Vazia
no3 = No 9 Vazia Vazia
no4 = No 6 Vazia Vazia
no5 = No 7 Vazia Vazia
no6 = No 7 no2 no3
no7 = No 3 no4 no5 
no8 = No 2 no1 no6
no9 = No 1 no8 no7 

folhas :: Eq a => ArvBin a -> [a]
folhas (Vazia) = []
folhas (No x esq dir)
    | esq == Vazia && dir == Vazia = [x]
    | otherwise = folhas esq ++ folhas dir

menorNivelFolha :: Eq a => ArvBin a -> [a]
menorNivelFolha (Vazia) = []
menorNivelFolha (No x Vazia Vazia) = [x]
menorNivelFolha (No x esq Vazia) = menorNivelFolha esq
menorNivelFolha (No x Vazia dir) = menorNivelFolha dir
menorNivelFolha (No x esq dir) = menorNivelFolha esq ++ menorNivelFolha dir 

menorNivelFolha 









