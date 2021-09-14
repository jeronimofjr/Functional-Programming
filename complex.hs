import Text.Printf

data Complex = Complex { real :: Float
                        , img :: Float
                        }

c1 = Complex 2 3
c2 = Complex 5 4

somaComplexo (Complex a b) (Complex c d) = Complex (a+c) (b+d)
difComplexo (Complex a b) (Complex c d) = Complex (a-c) (b-d)
mulComplexo (Complex a b) (Complex c d) = Complex (a*c - b*d) (a*d + b*c)
apartirInteiro n = Complex (fromInteger n) 0
negativo (Complex a b) = Complex (-a) (-b)
absoluto (Complex a b) = Complex (sqrt (a*a + b*b)) 0
sinal c@(Complex a b) = Complex (a/r) (b/r)
    where
        r = real (absoluto (Complex a b))


instance Num Complex where
    (+) = somaComplexo
    (-) = difComplexo
    (*) = mulComplexo
    fromInteger = apartirInteiro
    negate = negativo
    abs = absoluto
    signum = sinal

instance Show Complex where
    show (Complex a b) = concat [printf "%.3f" a, " + ", printf "%.3f" b, "i"]