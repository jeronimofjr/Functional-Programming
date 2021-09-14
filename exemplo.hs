

soma :: IO ()
soma = do
    linha <- getLine
    let x = map (read :: String -> Int) (words linha)
    print $ sum x

main :: IO ()
main = soma