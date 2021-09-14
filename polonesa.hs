import Data.Char
import Debug.Trace


data Stack a = Stk [a] deriving (Show)





push :: a -> Stack a -> Stack a
push x (Stk xs) = Stk (x:xs)

pop :: Stack a -> Stack a
pop (Stk (_:xs)) = Stk xs
pop _ 					 = error "Stack.pop: empty stack"

top :: Stack a -> a
top (Stk (x:_)) = x
top _           = error "Stack.top: empty stack"

emptyStack :: Stack a
emptyStack = Stk []

isEmpty :: Stack a -> Bool
isEmpty (Stk [])= True
isEmpty (Stk _) = False

makeStack :: [a] -> Stack a
makeStack xs = foldr push emptyStack xs

size :: Stack a -> Int
size s | isEmpty s = 0
			 | otherwise = 1 + size (pop s)


polonesa [] s = processa (words s) emptyStack

processa [] s = trace ("pilha " ++ Show s) top s
processa (xs:xss) s =
    case xs of
        "+" -> processa xss (push (p1+p2) s2)
        "-" -> processa xss s
        "*" -> processa xss s
        "/" -> processa xss s
        otherwise -> processa xss (push n s)
        where
            n = (read :: String -> Int) xs
            p1 = top s
            s1 = pop s1 
            p2 = top s1 
            s2 = pop s1




















