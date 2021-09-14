

myGetLine = do
    c <- getChar
    if c == "\n" then
        return []
    else
        l <- myGetLine


main :: IO ()
main = myGetLine