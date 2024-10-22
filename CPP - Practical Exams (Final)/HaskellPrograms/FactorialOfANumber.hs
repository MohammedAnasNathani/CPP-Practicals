-- Factorial using both recursive and iterative methods

-- Recursive function to calculate factorial
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Iterative function to calculate factorial using an accumulator
factorialIter :: Integer -> Integer
factorialIter n = factHelper n 1
  where
    factHelper 0 acc = acc
    factHelper m acc = factHelper (m - 1) (m * acc)

-- Main function to demonstrate usage
main :: IO ()
main = do
  let number = 5
  putStrLn $ "Factorial of " ++ show number ++ " (recursive) is " ++ show (factorial number)
  putStrLn $ "Factorial of " ++ show number ++ " (iterative) is " ++ show (factorialIter number)
