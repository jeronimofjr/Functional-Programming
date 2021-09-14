


reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]


agrupar [] = []
agrupar xss =  if  or (map (null) xss) then []
                  else[map (head) xss] ++ (agrupar  (map (tail) xss)) 



--and (map (null) xss)--