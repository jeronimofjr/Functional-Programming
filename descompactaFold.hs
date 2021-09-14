

descompactaFold xs =  (foldr(\x z ->  fst x : z) [] xs, foldr(\x z ->  snd x : z) [] xs)
