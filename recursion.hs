repeatString str n =
    if n == 0
        then ""
        else str ++ (repeatString str (n-1))




pow2 n = pow2loop n 1 0
pow2loop n x i =
    if i<n
        then pow2loop n (x*2) (i+1)
        else x


fibo :: Integer -> Integer
fibo 0 = 0
fibo 1 = 1
fibo x = fibo (x - 1) + fibo (x - 2)

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

main = print $ fibo 40
