-- Defining simple functions in Haskell

-- Function definitions-1
-- In GHCi or .hs files
double x = x * 2
square x = x * x
add a b = a + b

-- Usage
double 5    -- 10
square 3    -- 9
add 4 5     -- 9



-- Function definitions-2

-- Normal function call
div 10 3    -- 3

-- Using function as infix operator (with backticks)
10 `div` 3  -- 3

-- Using operator as function (with parentheses)
(+) 5 3     -- 8
(>) 5 3     -- True




-- Function definitions-3

double x = x * 2
square x = x * x
increment x = x + 1

-- Read from RIGHT to LEFT: increment → double → square
(square . double . increment) 4
-- Step 1: increment 4 = 5
-- Step 2: double 5 = 10  
-- Step 3: square 10 = 100
-- Result: 100

-- Explicit parentheses show the order:
-- (square . double . increment) 4
-- = square (double (increment 4))
-- = square (double (4 + 1))
-- = square (double 5) 
-- = square (5 * 2)
-- = square 10
-- = 10 * 10
-- = 100




