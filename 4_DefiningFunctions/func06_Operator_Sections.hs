-- 1. Converting Operators to Functions

1 + 2        -- Normal infix
(+) 1 2      -- Prefix version

-- Sections (partial application):
(1+) 2       -- Same as 1 + 2 → 3
(+2) 1       -- Same as 1 + 2 → 3  
(2*) 5       -- Same as 2 * 5 → 10
(*3) 4       -- Same as 4 * 3 → 12
(10/) 2      -- Same as 10 / 2 → 5.0
(/2) 10      -- Same as 10 / 2 → 5.0


(1+)    -- Successor function: adds 1
(1/)    -- Reciprocal function: 1 divided by something
(*2)    -- Doubles a number
(/2)    -- Halves a number
(++ "!") -- Appends exclamation to strings
("Hello " ++) -- Prepends "Hello " to strings


-- 2. Using Operator Sections in Function Definitions