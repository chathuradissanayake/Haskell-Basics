
-- Problem 1: Write a list comprehension that returns all numbers between 1 and 100 that are divisible by 3 or 5, but not by both.

-- method: 1
divisibleBy3Or5 :: [Int]
divisibleBy3Or5 = [x | x <- [1..100], (x `mod` 3 == 0) /= (x `mod` 5 == 0)]
-- result: [3,5,6,9,10,12,18,20,21,24,27,30,33,35,36,39,42,45,48,50,51,54,57,60,63,65,66,69,72,75,78,80,81,84,87,90,93,95,96,99]

-- /=  means "either divisible by 3 OR divisible by 5, but NOT both

-- method: 2
result1 = [x | x <- [1..100], (x `mod` 3 == 0) /= (x `mod` 5 == 0)]

-- Alternative more readable version:
result1 = [x | x <- [1..100], 
              let divBy3 = x `mod` 3 == 0
              let divBy5 = x `mod` 5 == 0
              divBy3 /= divBy5]  -- XOR operation

-- divBy3 /= divBy5 means "either divisible by 3 OR divisible by 5, but NOT both"
-- This is the exclusive OR (XOR) operation
-- Result: [3,5,6,9,10,12,18,20,21,24,25,27,33,35,36,39,40,42,48,50,51,54,55,57,63,65,66,69,70,72,78,80,81,84,85,87,93,95,96,99,100]



-- Problem 2: Create a function that finds all pairs of numbers from 1 to 20 whose product is greater than 50.
pairsWithProductGreaterThan50 :: [(Int, Int)]
pairsWithProductGreaterThan50 = [(x, y) | x <- [1..20], y <- [1..20], x * y > 50]
-- Result: [(6,9),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(6,19),(6,20),
--          (7,8),(7,9),(7,10),(7,11),(7,12),(7,13),(7,14),(7,15),(7,16),(7,17),(7,18),(7,19),(7,20),
--          (8,7),(8,8),(8,9),(8,10),............,(20,20)]





-- Problem 3: Write a function that removes all vowels from a string using list comprehension.
removeVowels :: String -> String
removeVowels str = [c | c <- str, not (c `elem` "aeiouAEIOU")]

-- Example usage:
-- removeVowels "Hello World"  -- "Hll Wrld"
-- removeVowels "Functional Programming"  -- "Fnctnl Prgrmmng"

-- Problem 4: Create a comprehension that generates all possible right triangles with perimeter equal to 24.
rightTriangles :: [(Int, Int, Int)]
rightTriangles = [(a, b, c) | a <- [1..24], b <- [1..24], c <- [1..24], a + b + c == 24, a^2 + b^2 == c^2]

-- Result: [(6,8,10),(8,6,10)]

-- Problem 5: Problem 5: Longest word in a list

longestWord :: [String] -> String
longestWord words = head [word | word <- words, 
                                length word == maximum (map length words)]

-- More efficient version:
longestWord words = 
    let maxLen = maximum (map length words)
    in head [word | word <- words, length word == maxLen]

-- Test:
longestWord ["cat", "elephant", "dog", "butterfly"]  -- "elephant"
longestWord ["hello", "world", "functional", "programming"]  -- "programming"   