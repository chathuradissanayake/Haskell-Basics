-- Corrected version
sumAndSquares :: IO ()
sumAndSquares = do
    let numbers = [1..100]
    
    -- List comprehension: [what | source, condition]
    let divisible = [x | x <- numbers, x `mod` 3 == 0 || x `mod` 5 == 0]
    -- Read as: "Take x from numbers where x mod 3 is 0 OR x mod 5 is 0"
    
    let total = sum divisible
    let totalSquares = sum (map (^2) divisible)  -- Fixed: (^2) not ('2')
    
    print (total, totalSquares)  -- Print as tuple

main :: IO ()
main = sumAndSquares