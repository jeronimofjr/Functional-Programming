-- Defina a função interior tal que (interior xs) é uma lista 
-- obtida eliminando os extremos da lista xs. Por exemplo,
-- interior [2,5,3,7,3] == [5,3,7]


-- Versão 01
interior :: [Int] -> [Int]
interior a = take (length a - 2) (drop 1 a)


-- Versão 02
interior' :: [Int] -> [Int]
interior' xs = reverse(tail(reverse(tail xs)))