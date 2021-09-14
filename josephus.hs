import Queue

--pula :: Int -> Queue a

pula 0 _ = [] 
pula x xs = enqueue (front xs) xs && dequeue xs && pula (x - 1) xs
