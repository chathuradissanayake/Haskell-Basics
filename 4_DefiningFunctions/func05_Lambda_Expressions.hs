-- 1. Basic Lambda Expression
\x -> x + x           --  \==lambda
-- "Lambda x goes to x plus x"
 

 -- what carries out the same operation:
-- This:
add x y = x + y

-- Is actually:
add = \x -> (\y -> x + y)
-- A function that takes x and returns a function that takes y


-- 2. Using Lambda Expressions Avoid Naming Temporary Functions
-- Without lambda:
odds n = map f [0..n-1]  
    where  
    f x = x*2 + 1

-- With lambda (cleaner!):
odds n = map (\x -> x*2 + 1) [0..n-1]