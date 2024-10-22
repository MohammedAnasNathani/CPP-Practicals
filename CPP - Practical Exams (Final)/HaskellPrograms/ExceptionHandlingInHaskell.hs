import Control.Exception (SomeException, catch, try)
import System.IO (IOMode (..), hGetContents, withFile)

-- Function to read a file safely
safeReadFile :: FilePath -> IO (Either String String)
safeReadFile path = do
  result <- try (withFile path ReadMode hGetContents) :: IO (Either SomeException String)
  case result of
    Left _ -> return (Left "Failed to read file")
    Right content -> return (Right content)

-- Function to perform safe division
safeDiv :: Int -> Int -> Either String Int
safeDiv _ 0 = Left "Division by zero"
safeDiv x y = Right (x `div` y)

-- Main function to demonstrate exception handling
main :: IO ()
main = do
  -- File reading example
  content <- safeReadFile "nonexistent.txt"
  case content of
    Left err -> putStrLn err
    Right text -> putStrLn text

  -- Safe division example
  let divisionResult = safeDiv 10 0
  case divisionResult of
    Left err -> putStrLn err
    Right result -> print result

  let divisionResult2 = safeDiv 10 2
  case divisionResult2 of
    Left err -> putStrLn err
    Right result -> print result
