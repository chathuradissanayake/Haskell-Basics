-- Type signature: function takes two Int parameters and returns an Int
fType :: Int -> Int -> Int
-- Function definition: calculates sum of squares (x² + y²) for integers
fType x y = x*x + y*y

-- Type signature: function takes two Float parameters and returns a Float
fType1 :: Float -> Float -> Float 
-- Function definition: calculates sum of squares for single-precision floating point numbers
fType1 x y = x*x + y*y 

-- Type signature: function takes two Double parameters and returns a Double
fType2 :: Double -> Double -> Double
-- Function definition: calculates sum of squares for double-precision floating point numbers
fType2 x y = x*x + y*y

-- Type signature: function takes a Char parameter and returns a Char
fType3 :: Char -> Char
-- Function definition: ignores input character and always returns 'K'
fType3 x = 'K'

-- Type signature: function takes a String and returns an Int
readInt :: String -> Int
-- Function definition: uses built-in 'read' function to parse string to integer
readInt = read

-- Custom data type definition: Area type with Circle constructor
-- Circle takes three Float parameters (x-coordinate, y-coordinate, radius)
data Area = Circle Float Float Float

-- Type signature: function takes Area type and returns Float (the surface area)
surface :: Area -> Float
-- Pattern matching: extracts radius (r) from Circle, ignores x and y coordinates with _
-- Calculates circle area using formula π × r²
surface (Circle _ _ r) = pi * r ^ 2

-- Main function: entry point of the program
main = do
    -- Call fType function with integers 3 and 4, prints result (3² + 4² = 25)
    print (fType 3 4)
    -- Call fType1 function with floats 7.2 and 8.4, prints result (7.2² + 8.4² = 122.4)
    print (fType1 7.2 8.4)
    -- Call fType2 function with doubles, prints result with higher precision
    print (fType2 7.223 8.411)
    -- Call fType3 with character 'A', but function always returns 'K'
    print (fType3 'A')

    -- Variable binding: assign Boolean value True to variable x
    let x = True 
   
    -- Conditional statement: check if x equals False
    if x == False 
        -- If condition is true, print this message
        then putStrLn "X matches with Bool Type" 
    -- If condition is false, print this message instead
    else putStrLn "X is not a Bool Type" 

    -- Simple equality check: compare if 3 equals 3
    if 3 == 3
        -- Print message if condition is true
        then putStrLn "values are equal"
    -- Print message if condition is false
    else putStrLn "values are not equal"

    -- Comparison operation: check if 4 is greater than or equal to 3 (returns True)
    print (4 >= 3)

    -- List comprehension: create list [1,2,3,4,5] and convert to string representation
    print (show [1..5])

    -- Call readInt function to convert string "12" to integer 12
    print (readInt "12")

    -- Print maximum possible value for Int type on this system
    print (maxBound :: Int) 
    -- Print minimum possible value for Int type on this system
    print (minBound :: Int) 

    -- Type annotation: explicitly specify 2 as Int type and print
    print(2 :: Int)  
    -- Type annotation: explicitly specify 2 as Float type and print (2.0)
    print(2 :: Float) 
    -- Type annotation: explicitly specify 2 as Double type and print (2.0)
    print(2 :: Double)

    -- Function application using $ operator: create Circle with coordinates (10,20) and radius 10
    -- Calculate surface area using surface function (π × 10² = 314.159...)
    print (surface $ Circle 10 20 10)