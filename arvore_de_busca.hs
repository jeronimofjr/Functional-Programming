
data Arv a = Vazia | No a (Arv a) (Arv a) deriving (Eq, Show)

insertArvore :: Ord a => a -> Arv a -> Arv a
insertArvore x (Vazia) = No x (Vazia) (Vazia)
insertArvore x (No y esq dir) 
            | y < x = No y esq (insertArvore x dir)
            | y >= x = No y (insertArvore x esq) dir


remove (Vazia) = ?
remove (No y esq dir)
        | esq == Vazia && dir == Vazia = remove
        | otherwise = remove

-- No·5·(No·3·(No·2·(No·1·Vazia·Vazia)·Vazia)·(No·4·Vazia·(No·5·Vazia·Vazia)))·Vazia
    
-- No·5·(No·3·(No·1·Vazia·Vazia)·Vazia)·(No·2·(No·4·Vazia·Vazia)·(No·5·Vazia·Vazia))↵

  -- No·5·(No·3·(No·2·(No·1·Vazia·Vazia)·Vazia)·(No·4·Vazia·(No·5·Vazia·Vazia)))·Vazia
