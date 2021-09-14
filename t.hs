data LinkedList a = Vazia | No a (LinkedList a) deriving (Eq, Show)

fromList :: [a] -> LinkedList a

fromList [] = Vazia
fromList xs = No (head xs) (fromList (tail (xs))) 

toList :: LinkedList a -> [a]

toList Vazia = []
toList (No a xs) = a:(toList xs)

append :: a -> LinkedList a -> LinkedList a

append x (No a Vazia) = No a (No x Vazia)
append x (No xs ys) = No xs (append x ys)

reverseLinkedList :: LinkedList a -> LinkedList a

reverseLinkedList xs =  reverseAcc [] xs
        where
        reverseAcc ys [] = ys
        reverseAcc ys (No x ys) = reverseAcc 

--reverse xs = reverseAcc [] xs
 -- where
  --reverseAcc ys []      = ys
  --reverseAcc ys (x:xs)  = reverseAcc (x:ys) xs

