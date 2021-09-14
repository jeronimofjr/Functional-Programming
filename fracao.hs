

data Fracao = F Int Int
fracaoContinua (F 1 x) = []
fracaoContinua (F a x) = q : fracaoContinua (F x r)
	where
		q = div a x
		r = mod a x