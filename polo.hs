import Debug.Trace
import Data.Char
import Stack

polonesa xs = processa (words xs) emptyStack 

processa [] s = trace ("pilha " ++ show s) top s
processa (xs:xss) s = 
    case xs of 
        "+" ->  processa xss (push (p1+p2) s2)
        "-" ->  processa xss (push (p2-p1) s2) 
        "*" ->  processa xss (push (p1*p2) s2)
        "/" ->  processa xss (push (div p2 p1) s2)
        otherwise -> processa xss (push n s)
        where
            n = (read :: String -> Int) xs
            p1 = top s
            s1 = pop s
            p2 = top s1
            s2 = pop s1   
       