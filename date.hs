data Mes = Janeiro | Fevereiro | Marco | Abril | Maio | Junho 
            | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro
            deriving (Show, Ord, Eq, Enum) 

data Date = MkDate { dia :: Int 
            , mes :: Mes    
            , ano :: Int   
            }

instance Show Date where
    show (MkDate a b c )= concat [show a, " de ", show b, " de ", show c]

instance Eq Date where
   (MkDate a b c) == (MkDate d e f) = (a == d) && (b == e) && (c == f)

instance Ord Date where
   (MkDate a b c) <= (MkDate d e f) =  c < f 