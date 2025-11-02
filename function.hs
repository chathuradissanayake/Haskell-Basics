add :: Integer -> Integer -> Integer
add x y = x + y

fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact(n - 1)

fact1 :: Integer -> Integer
fact1 n | n == 0 = 1
        | n /= 0 = n * fact1(n - 1)

roots :: (Float, Float, Float) -> (Float, Float)
roots (a,b,c) = (x1, x2) where
    x1 = e + sqrt d / (2 * a)
    x2 = e - sqrt d / (2 * a)
    d = b * b - 4 * a * c
    e = - b / (2 * a)

main = do
    putStrLn "Addition of two numbers is:"
    print (add 5 10)
    putStrLn "Factorial of 5 is:"
    print (fact 5)
    putStrLn "Factorial of 6 is:"
    print (fact1 6)

    putStrLn "The roots of our Polynomial equation are:" 
    print (roots(1,-8,6))