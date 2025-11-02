-- read "123" :: Int      -- becomes 123
-- read "123" :: Double   -- becomes 123.0  
-- read "123" :: String   -- becomes "123" (but this wouldn't work with +)
-- read "123" :: Bool     -- ERROR: "123" can't be parsed as Bool


-- This is the most interesting case! Step-by-step:
-- 1. Haskell sees (5 :: Int) - so the right operand of + is definitely an Int
-- 2. The + operator has type: (+) :: Num a => a -> a -> a
-- 3. This means both operands must be the same type a
-- 4. Since right operand is Int, left operand must also be Int
-- 5. Therefore read "123" must be parsed as Int
-- 6. read "123" → 123 (as Int)
-- 7. 123 + 5 → 128

-- Option 1: Specify the type explicitly
result = (read "123" :: Int) + 5
-- Result: 128

-- Option 2: Let type inference figure it out from context
result = read "123" + (5 :: Int)
-- Result: 128
-- Since 5 is Int, read "123" must also be Int

-- Option 3: Work with other types
result = read "123" + (5.0 :: Double)
-- Result: 128.0
-- Now read "123" becomes 123.0 (Double)


-- This works - both get same type from context
result = (read "10" + read "20") :: Int
-- Result: 30
-- Both reads become Int, result is 30

-- This fails - still ambiguous!
result = read "10" + read "20"
-- ERROR: Ambiguous type variable `a` in the constraint `Num a`
-- Each read could be different types!
