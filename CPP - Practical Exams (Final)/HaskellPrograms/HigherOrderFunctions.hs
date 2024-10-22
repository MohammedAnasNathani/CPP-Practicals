-- Higher-Order Functions in Haskell

-- Custom implementation of map
myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x : xs) = f x : myMap f xs

-- Custom implementation of filter
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter p (x : xs)
  | p x = x : myFilter p xs
  | otherwise = myFilter p xs

-- Custom implementation of foldl
myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl _ acc [] = acc
myFoldl f acc (x : xs) = myFoldl f (f acc x) xs

-- Example functions
squares :: [Int] -> [Int]
squares = myMap (^ 2)

evenNumbers :: [Int] -> [Int]
evenNumbers = myFilter even

sumList :: [Int] -> Int
sumList = myFoldl (+) 0

add1 :: Int -> Int
add1 x = x + 1

double :: Int -> Int
double x = x * 2

add1AndDouble :: Int -> Int
add1AndDouble = double . add1

-- Main function
main :: IO ()
main = do
  print $ squares [1, 2, 3, 4, 5] -- Output: [1, 4, 9, 16, 25]
  print $ evenNumbers [1, 2, 3, 4, 5, 6] -- Output: [2, 4, 6]
  print $ sumList [1, 2, 3, 4, 5] -- Output: 15
  print $ add1AndDouble 3 -- Output: 8
