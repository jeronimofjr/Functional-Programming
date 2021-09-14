
module Main(main) where
main :: IO ()
main = putStrLn "Hello World"

nome :: IO ()
nome = do
    putStrLn "Qual o seu nome?"
    nome <- getLine
    print nome