

data Par = Par Int Int

instance Show Par where
    show (Par x y) = concat ["(", show x, ", ", show y]