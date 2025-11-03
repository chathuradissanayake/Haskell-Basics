-- 1. Basic Guards

[x | x <- [1..10], even x]
-- Result: [2,4,6,8,10]

[x | x <- [1..10], x > 5, odd x]  
-- Result: [7,9]  (multiple conditions)


-- 2. Finding factors

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

factors 15
-- x <- [1..15], keep only x where 15 `mod` x == 0
-- Result: [1,3,5,15]


-- 3. Prime numbers

prime :: Int -> Bool
prime n = factors n == [1,n]

primes :: Int -> [Int]  
primes n = [x | x <- [2..n], prime x]

primes 20
-- Result: [2,3,5,7,11,13,17,19]