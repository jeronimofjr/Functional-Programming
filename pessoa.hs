import Data.List

data Pessoa = Pessoa { nome :: String
            , idade :: Int
            , salario :: Float 
            }

data Criterio = ByNome | ByIdade | BySalario

-- classifica lista de pessoa por critério
--sortListPessoa :: [Pessoa] -> Criterio -> [Pessoa]
--sortListPessoa = undefined 
 -- ["Joao" tem 25 anos e ganha de salario 2000.0,"Ana" tem 20 anos e ganha de salario 2500.0,"Alyson" tem 22 anos e ganha de salario 2200.0]
p1 = Pessoa "Joao" 25 2000
p2 = Pessoa "Ana" 20 2500
p3 = Pessoa "Alyson" 22 2200

pessoas = [p1, p2, p3]

instance Show Pessoa where
    show (Pessoa n i s) = concat [show n, " tem ", show i, " anos e ganha de salario ", show s]


sortListPessoa ps (ByNome) = sortOn (nome) ps
sortListPessoa ps (ByIdade) = sortOn (idade) ps
sortListPessoa ps (BySalario) = sortOn (salario) ps