
data Gesto = Pedra | Papel | Tesoura deriving(Show, Eq, Read)

ganhaDe a b
            | (a == Pedra && b == Tesoura) || (a == Tesoura && b == Papel) || (a == Papel && b == Pedra) = True
            | otherwise = False


ganhadores xs = [ b |  (a, b)  <- zip xs [0..(length xs)-1], ganhaDe (fst a) (snd a)]