


printMultipleLines n
    | n <= 0 = return ()
    | otherwise = do
        putStr  "Ola Mundo "
        printMultipleLines (n - 1)

main = do
    n <- readLn :: IO Int
    printMultipleLines n


