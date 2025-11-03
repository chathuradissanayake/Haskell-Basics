-- 1. Problem 01 : Safetail function

-- (a) Conditional Expression
safetail :: [a] -> [a]
safetail xs = if null xs then [] else tail xs

-- (b) Guarded Equations
safetail xs | null xs   = []
            | otherwise = tail xs

-- (c) Pattern Matching
safetail [] = []
safetail (_:xs) = xs


-- Problem 2: Three definitions for ||

-- Version 1: Explicit
False || False = False
False || True  = True
True  || False = True
True  || True  = True

-- Version 2: Using wildcards
False || False = False
_     || _     = True

-- Version 3: Efficient (short-circuit)
False || b = b
True  || _ = True



-- Problem 3: Redefine && using conditionals

-- Original pattern version:
True && True = True
_    && _    = False

-- Conditional version:
a && b = if a then (if b then True else False) else False
-- Or more cleanly:
a && b = if a then b else False


-- Problem 4: Redefine efficient && using conditionals

-- Original pattern version:
True && b = b
False && _ = False

-- Conditional version:
a && b = if a then b else False


-- Problem 5: Convert this to use a lambda expression

processNumbers xs = map timesTwo (filter isEven xs)
    where
    timesTwo x = x * 2
    isEven x = x `mod` 2 == 0

-- explaination: timesTwo and isEven are only used within processNumbers,
-- so we can replace them with lambda expressions directly in the map and filter calls.
processNumbers xs = map (\x -> x * 2) (filter (\x -> x `mod` 2 == 0) xs)