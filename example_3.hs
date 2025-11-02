
                    -- 3 inputs                    two outputs 
quadraticRoots :: Double -> Double -> Double -> (Double, Double) -- define the function
-- ax^2 + bx + c = 0 
quadraticRoots a b c = (root1, root2)
  where
    d = b^2 - 4*a*c
    root1 = (-b + sqrt d) / (2*a)
    root2 = (-b - sqrt d) / (2*a)


-- main is the entry point of a haskell program
-- :: IO () means it performs input/output and return unit type
main :: IO ()
main = do
    let a = 1
    let b = -3
    let c = 2
    let roots = quadraticRoots a b c
    putStrLn $ "For the quadratic equation " ++ show a ++ "x^2 + " ++ show b ++ "x + " ++ show c ++ ","
    putStrLn $ "The roots of the quadratic equation are: " ++ show roots
        