import Data.List
import Text.Read

main :: IO ()
main = do
    n <- readLn :: IO Int
    inputs <- getUserInputs n
    putStrLn ("sorted sequence " ++  show (sort inputs))


getUserInputs :: IO [Int]
getUserInputs n 
    | n <= 0 = return []
    | otherwise = do
        input <- getLine
        return (input : moreinputs)
        moreinputs <- getUserInputs (n - 1)
        
    
    
