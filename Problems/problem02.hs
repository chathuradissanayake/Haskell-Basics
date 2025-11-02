-- Problem 1
> :type (1, "hello", True)
(1, "hello", True) :: (Num a, Num b) => (a, [Char], Bool)

> :type [[1,2], [3,4,5]] 
[[1,2], [3,4,5]] :: Num a => [[a]]

-- Problem 1
-- Expression: (1, "hello", True)
-- Answer: (Num a) => (a, [Char], Bool)
-- Explanation: 1 is a numeric literal so it has type (Num a) => a; "hello" :: [Char]; True :: Bool.
-- Example (disambiguated): (1 :: Int, "hello", True) :: (Int, [Char], Bool)


-- Problem 2  
> :type triple
triple :: Num a => a -> a

> :type isEmpty
isEmpty :: [a] -> Bool

> :type applyTwice
applyTwice :: (a -> a) -> a -> a

-- Given types shown:
-- triple :: Num a => a -> a
-- Explanation: triple uses numeric operations (e.g. triple x = x * 3) so it requires Num.
-- isEmpty :: [a] -> Bool
-- Explanation: isEmpty tests whether a list is empty (e.g. isEmpty = null), so it works for any element type a.
-- applyTwice :: (a -> a) -> a -> a
-- Explanation: applyTwice applies a function twice, so the function must map a to a (same type both times).


-- Problem 4 - The error
> read "123" + 5
-- ERROR: Ambiguous type variable `a` in the constraint `Num a`

-- Expression that caused error: read "123" + 5
-- Error reason: read :: Read a => String -> a produces an arbitrary Read a; (+) requires Num a.
-- There is an ambiguous type variable because GHCi can't infer which numeric type to use.
-- Fix: give read a concrete numeric type, e.g.
--   (read "123" :: Int) + 5       -- yields 128 :: Int
--   (read "123" :: Double) + 5.0  -- yields 128.0 :: Double
-- Alternative: use fromIntegral to convert between numeric types if needed.

