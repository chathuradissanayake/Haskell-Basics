-- 1. Stings are lists

"abc" == ['a','b','c']  -- True
"abc" :: [Char]         -- True


-- 2. String Operations with Comprehensions:

count :: Char -> String -> Int
count x xs = length [x' | x' <- xs, x == x']

count 's' "Mississippi"
-- Result: 4

-- Convert to uppercase
toUpperString :: String -> String
toUpperString s = [toUpper c | c <- s]
toUpperString "Hello World!"
-- Result: "HELLO WORLD!"

