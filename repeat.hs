


repeat' x = x : repeat' x

cycle' xs = xs ++ cycle' xs