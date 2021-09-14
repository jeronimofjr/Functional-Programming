

romanos 0 = ""
romanos x 
        |  x >= 1 && x < 4 = "I" ++ romanos (x - 1)
        | x == 4 = "IV"
        | x >= 5 && x < 9 = "V" ++ romanos (x - 5)
        | x >= 9 && x < 10 = "IX" ++ romanos (x - 9)
        | x >= 10 && x < 40 = "X" ++ romanos (x - 10)
        | x >= 40 && x < 50 = "XL" ++ romanos (x - 40)
        | x >= 50 && x < 90 = "L" ++ romanos (x - 50)
        | x >= 90 && x < 100 = "LC" ++ romanos (x - 90)
        | x >= 100 && x < 400 = "C" ++ romanos (x - 100)
        | x >= 400 && x < 500 = "CD" ++ romanos (x - 400)
        | x >= 500 && x < 900 = "D" ++ romanos (x - 500)
        | x >= 900 && x < 1000 = "CM" ++ romanos (x - 900)
        | x >= 1000 && x <= 3000 = "M" ++ romanos (x - 1000)
