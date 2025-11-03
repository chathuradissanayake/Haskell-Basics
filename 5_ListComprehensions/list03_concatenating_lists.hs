-- 1. Concatenating Lists

concat :: [[a]] -> [a]
concat xss = [x | xs <- xss, x <- xs]

-- Example:
concat [[1,2,3], [4,5], [6]]
-- xs <- [[1,2,3], [4,5], [6]]
-- For xs=[1,2,3]: x <- [1,2,3] → 1,2,3
-- For xs=[4,5]:   x <- [4,5]   → 4,5  
-- For xs=[6]:     x <- [6]     → 6
-- Result: [1,2,3,4,5,6]