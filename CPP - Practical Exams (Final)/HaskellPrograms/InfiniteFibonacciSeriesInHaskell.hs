-- Infinite list of Fibonacci numbers
fibonacci :: [Integer]
fibonacci = fibs 0 1
  where
    fibs a b = a : fibs b (a + b)

-- Function to take the first n Fibonacci numbers
takeFibonacci :: Int -> [Integer]
takeFibonacci n = take n fibonacci

-- Main function to demonstrate usage
main :: IO ()
main = do
  let n = 10
  putStrLn $ "First " ++ show n ++ " Fibonacci numbers: "
  print $ takeFibonacci n -- Output: [0,1,1,2,3,5,8,13,21,34]
