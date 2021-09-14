

-- type Pos = (Int, Int) 
-- type Cells = (Pos)

-- type Assoc ch v =  [(ch, v)]

-- idades :: Assoc String Int
-- idades = [("Joao", 30), ("Jose", 28)]

-- search :: String -> Assoc String Int -> Int
-- search nome idades = head [ b |(a, b)  <- idades, a == nome]


-- data Booleano = Verdadeiro | Falso deriving (Show)

data Trem a = Vagao a ( Trem a ) | Vazio deriving Show
type Quantidade = Int
type Peso = Int
data Carga = SemCarga | Passageiro Quantidade | Mercadoria Peso deriving Show

-- Escreva uma função numPassageiros :: Trem Carga -> Int que devolve o número de passageiros 
-- de um trem de carga. 

-- numPassageiros Vagao (Passageiro 100) (Vagao (Passageiro 200) (Vagao (Mercadoria 400) Vazio))
--  == 300

t1 = Vazio
t2 = Vagao SemCarga t1
t3 = Vagao (Passageiro 15) t2
t4 = Vagao (Mercadoria 100) t3

numPassageiros :: Trem Carga -> Int

numPassageiros (Vazio) = 0
numPassageiros (Vagao (SemCarga) t) = 0 + numPassageiros t
numPassageiros (Vagao (Passageiro x) t) = x + numPassageiros t
numPassageiros (Vagao (Mercadoria x) t) = 0 + numPassageiros t
   









