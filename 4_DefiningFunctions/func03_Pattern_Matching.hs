-- 1. Basic Pattern Matching
not :: Bool -> Bool
not False = True
not True = False



-- 2. Wildcard Pattern (_) 

-- Verbose version:
True && True = True
True && False = False  
False && True = False
False && False = False

-- Better version:
True && True = True
_    && _    = False

-- Most efficient version (short-circuit evaluation):
True && b = b
False && _ = False