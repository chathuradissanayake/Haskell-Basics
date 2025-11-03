-- 1. Basic Guard
abs n | n >= 0    = n
      | otherwise = -n


-- 2. Multiple Guards
signum n | n < 0     = -1
         | n == 0    = 0
         | otherwise = 1


-- 3. Guards with where clause
bmiTell :: Double -> Double -> String
bmiTell weight height
    | bmi <= 18.5 = "Underweight"
    | bmi <= 25.0 = "Normal weight"
    | bmi <= 30.0 = "Overweight"
    | otherwise   = "Obese"
    where bmi = weight / height ^ 2     

-- Important Notes:
-- otherwise is just True defined in Haskell's standard library
-- Guards are evaluated from top to bottom
-- The first True guard wins
-- Much more readable than nested ifs!