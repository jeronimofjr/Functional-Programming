import Data.List

getMultipleLines :: Int -> IO [String]
getMultipleLines 0 = return []
getMultipleLines n = do
    line <- getLine
    xs   <- getMultipleLines (n-1)
    return (line : xs)


main = do
    line <- getLine
    let n = (read :: String -> Int) line
    xs <- getMultipleLines n
    mapM_ putStrLn $ sort xs