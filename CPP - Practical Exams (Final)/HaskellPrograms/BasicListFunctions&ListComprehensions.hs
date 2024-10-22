-- Basic List Functions

-- Get the first element of a list
myHead :: [a] -> a
myHead [] = error "Empty list"
myHead (x : _) = x

-- Get the tail of a list (all elements except the first)
myTail :: [a] -> [a]
myTail [] = error "Empty list"
myTail (_ : xs) = xs

-- Get the last element of a list
myLast :: [a] -> a
myLast [] = error "Empty list"
myLast [x] = x
myLast (_ : xs) = myLast xs

-- Get all elements except the last
myInit :: [a] -> [a]
myInit [] = error "Empty list"
myInit [x] = []
myInit (x : xs) = x : myInit xs

-- Get the length of a list
myLength :: [a] -> Int
myLength [] = 0
myLength (_ : xs) = 1 + myLength xs

-- Check if a list is empty
myNull :: [a] -> Bool
myNull [] = True
myNull _ = False

-- List Comprehensions

-- Generate a list of squares of numbers from 1 to 10
squares :: [Int]
squares = [x ^ 2 | x <- [1 .. 10]]

-- Generate a list of even squares
evenSquares :: [Int]
evenSquares = [x ^ 2 | x <- [1 .. 10], even x]

-- Create pairs of numbers (x, y) where x is from 1 to 3 and y is from 1 to 2
pairs :: [(Int, Int)]
pairs = [(x, y) | x <- [1 .. 3], y <- [1 .. 2]]

-- Example usage
main :: IO ()
main = do
  let myList = [1, 2, 3, 4, 5]
  print $ myHead myList -- Output: 1
  print $ myTail myList -- Output: [2, 3, 4, 5]
  print $ myLast myList -- Output: 5
  print $ myInit myList -- Output: [1, 2, 3, 4]
  print $ myLength myList -- Output: 5
  print $ myNull [] -- Output: True
  print $ myNull myList -- Output: False
  print squares -- Output: [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
  print evenSquares -- Output: [4, 16, 36, 64, 100]
  print pairs -- Output: [(1,1), (1,2), (2,1), (2,2), (3,1), (3,2)]
