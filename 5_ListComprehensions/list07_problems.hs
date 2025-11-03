-- Problem 1: Pythagorean Triples

pyths :: Int -> [(Int,Int,Int)]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

pyths 5
-- Result: [(3,4,5),(4,3,5)]


--- More Efficient Version:

pyths n = [(x,y,z) | x <- [1..n], y <- [x..n], z <- [y..n], x^2 + y^2 == z^2]
-- Avoids duplicates like (3,4,5) and (4,3,5)


-- Problem 2: Perfect Numbers

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], isPerfect x]
  where
    isPerfect num = sum (init (factors num)) == num
    -- init removes the number itself from factors

perfects 500
-- Factors of 6: [1,2,3,6] → sum [1,2,3] = 6 ✓
-- Factors of 28: [1,2,4,7,14,28] → sum [1,2,4,7,14] = 28 ✓
-- Result: [6,28,496]


-- Problem 3: Scalar Product

scalarProduct :: [Int] -> [Int] -> Int
scalarProduct xs ys = sum [x * y | (x,y) <- zip xs ys]

scalarProduct [1,2,3] [4,5,6]
-- zip [1,2,3] [4,5,6] = [(1,4),(2,5),(3,6)]
-- Products: 1*4=4, 2*5=10, 3*6=18
-- Sum: 4+10+18 = 32

-- Problem 4:  Knight Moves

knightMoves :: (Int,Int) -> [(Int,Int)]
knightMoves (x,y) = 
    [(x+i, y+j) | i <- [-2,-1,1,2], 
                  j <- [-2,-1,1,2], 
                  abs i + abs j == 3,
                  x+i >= 1, x+i <= 8,
                  y+j >= 1, y+j <= 8]

knightMoves (4,4)
-- Valid moves from center of chessboard
-- Result: [(2,3),(2,5),(3,2),(3,6),(5,2),(5,6),(6,3),(6,5)]   

-- Problem 5: Prime Triplets

primeTriplets :: Int -> [(Int,Int,Int)]
primeTriplets n = 
    [(x, x+2, x+6) | x <- [2..n-6], 
                     prime x, 
                     prime (x+2), 
                     prime (x+6)] 
    ++
    [(x, x+4, x+6) | x <- [2..n-6], 
                     prime x, 
                     prime (x+4), 
                     prime (x+6)]

-- Examples: (5,7,11), (7,11,13), (11,13,17)

