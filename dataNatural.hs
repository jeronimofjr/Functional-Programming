data Natural = Zero | Next Natural deriving(Eq, Show)

soma :: Natural -> Natural -> Natural

soma Zero n = n
soma (Next m) n = Next (soma m n)

produto :: Natural -> Natural -> Natural
produto Zero _ = Zero
produto (Next m) n = soma n (produto m n)

data Tree = Leaf Int | No Tree Int Tree  deriving (Show, Eq)

ezArbol :: Tree
ezArbol = No (No (Leaf 1) 3 (Leaf 4)) 5 (No (Leaf 6) 7 (Leaf 9))


ocorre :: Int -> Tree -> Bool
ocorre x (Leaf  y) = y == x
ocorre x (No arv1 y arv2) =  x == y || ocorre x arv1 || ocorre x arv2    
