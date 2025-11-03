-- 1. Basic Zip Function

zip :: [a] -> [b] -> [(a,b)]
zip ['a','b','c'] [1,2,3,4]
-- Result: [('a',1),('b',2),('c',3)]
-- Note: Extra elements are ignored!


-- 2. Finding adjacent pairs

pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)

pairs [1,2,3,4]
-- zip [1,2,3,4] [2,3,4] 
-- Result: [(1,2),(2,3),(3,4)]

-- 3. Checking sorted list

sorted :: Ord a => [a] -> Bool
sorted xs = and [x <= y | (x,y) <- pairs xs]

sorted [1,2,3,4]    -- True
sorted [1,3,2,4]    -- False


-- 4. Finding Positions of Elements

positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | (x',i) <- zip xs [0..], x == x']

positions 0 [1,0,0,1,0,1,1,0]
-- zip [1,0,0,1,0,1,1,0] [0,1,2,3,4,5,6,7]
-- Keep pairs where first element == 0
-- Result: [1,2,4,7]

