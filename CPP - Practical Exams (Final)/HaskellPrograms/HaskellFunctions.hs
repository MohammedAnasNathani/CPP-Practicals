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

-- Example usage
main :: IO ()
main = do
  let myList = [1, 2, 3, 4, 5]
  print $ myHead myList
  print $ myTail myList
  print $ myLast myList
  print $ myInit myList
  print $ myLength myList
