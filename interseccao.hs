


interseccao :: [Int] -> [Int] -> [Int]
interseccao ys xs = [ y | y <- ys, elem y xs]