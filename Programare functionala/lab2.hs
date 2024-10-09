--1
poly :: Int -> Int -> Int -> Int -> Int
poly a b c x = a*x*x + b*x + c

--2
eeny :: Int -> String
eeny x = if even x then "eeny" else "meeny" 

--3
fizzbuzz x
  | (x `mod` 3 == 0) && (x `mod` 5 == 0) = "FizzBuzz"
  | x `mod` 3 == 0 = "Fizz"
  | x `mod` 5 == 0 = "Buzz"
  | otherwise = ""