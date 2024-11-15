import System.IO

-- Fibonacci function using recursion
fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

-- Classifying a number as Negative, Zero, or Positive
classify :: Int -> String
classify n
  | n < 0     = "Negative"
  | n == 0    = "Zero"
  | otherwise = "Positive"

-- A higher-order function that applies a function twice
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Main program that reads input and prints a greeting
main :: IO ()
main = do
    putStrLn "Please enter your name:"
    name <- getLine
    putStrLn ("Hello, " ++ name ++ "!")
    
    -- Example usage of the classify function
    putStrLn "Please enter a number to know if positive or negative:"
    num1 <- readLn :: IO Int
    putStrLn ("The number is: " ++ classify num1)
    
    -- Example usage of applyTwice
    putStrLn "Please enter a number to applyTwice:"
    num2 <- readLn :: IO Int
    let result = applyTwice (*2) num2
    putStrLn ("Result: " ++ show result)
    
    -- Example usage of Fibonacci
    putStrLn "Please enter a number to know the value of the fibonacci sequence:"
    num3 <- readLn :: IO Integer
    print (fib num3)
