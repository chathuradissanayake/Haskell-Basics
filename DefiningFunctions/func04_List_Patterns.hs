[1, 2, 3, 4] 
-- Is actually:
1 : (2 : (3 : (4 : [])))
-- Where : is the "cons" operator

-- 1.
head :: [a] -> a
head (x:_) = x  -- Match any non-empty list, bind first to x

tail :: [a] -> [a]  
tail (_:xs) = xs  -- Match any non-empty list, bind rest to xs


--2. 
head (x:_) = x   -- ✓ Correct
head x:_ = x     -- ✗ ERROR! Means (head x):_



> head []
*** Exception: empty list
-- That's why these patterns only work for non-empty lists