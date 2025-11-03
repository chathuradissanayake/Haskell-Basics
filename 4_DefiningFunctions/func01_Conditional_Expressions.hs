-- 1. Basic Id-then-else
abs :: Int -> Int
abs n = if n >= 0 then n else -n

-- 2. Nested Conditionals
signum :: Int -> Int
signum n = if n < 0 then -1 else
             if n == 0 then 0 else 1


