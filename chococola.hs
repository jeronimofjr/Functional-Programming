



--chocola n = if n < 3 then 0 else n - (mod n 3) + chocola ((div (n+1) 3) + (mod (n+1) 3))--


quociente :: Int -> Int -> Int
quociente x y = if y > x then 0 else 1 + quociente (x-y) y


--20 3 =  2--

chocola n = if n < 3 then if n == 2 then 1 else if mod n 3 == 2 then n - (mod n 3) + chocola ((div n 3) + (mod n 3)) + 1
                            else n - (mod n 3) + chocola ((div n 3) + (mod n 3))

--choco n = if n < 3 then 1 + choco (n-2) else --


chococola n = n + sum[ 1 | x <- [n,n-2..0], x >= 2]


