repeatString str n =
    if n == 0
        then ""
        else str ++ (repeatString str (n-1))




pow2 n = pow2loop n 1 0
pow2loop n x i =
    if i<n
        then pow2loop n (x*2) (i+1)
        else x


main = putStrLn $ repeatString "foo" 4
