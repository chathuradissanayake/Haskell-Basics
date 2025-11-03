
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



