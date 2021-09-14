data ArvoreExpressao = No (Int->Int->Int) ArvoreExpressao ArvoreExpressao| Folha Int 

data Expr = Val Int
    | Soma Expr Expr
    | Mult Expr Expr
    | Div Expr Expr
    | Sub Expr Expr
    |Mod Expr Expr deriving (Read,Eq,Show)

showExpr :: Expr -> String

showExpr (Val a) = show a
showExpr (Soma a b) = "(" ++ showExpr a ++ " + " ++ showExpr b ++ ")"
showExpr (Mult a b) = "(" ++ showExpr a ++ " * " ++ showExpr b ++ ")"
showExpr (Div a b) = "(" ++ showExpr a ++ " / " ++ showExpr b ++ ")"
showExpr (Sub a b) = "(" ++ showExpr a ++ " - " ++ showExpr b ++ ")"
showExpr (Mod a b) = "(" ++ showExpr a ++ " % " ++ showExpr b ++ ")"

eval :: Expr -> Int
eval (Val a) = a
eval (Soma a b) = eval a + eval b
eval (Mult a b) = eval a * eval b
eval (Div a b) = div (eval a) (eval b)
eval (Sub a b) = eval a - eval b
eval (Mod a b) = mod (eval a) (eval b)
