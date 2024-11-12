import Distribution.Simple.Program.HcPkg (list)
--1
sumaPatrateImpare :: [Int] -> Int
sumaPatrateImpare lista = foldl (+) 0 (map (^2) (filter odd lista))

--2
toateTrue :: [Bool] -> Bool
toateTrue lista = foldr (&&) True lista

--3 ?????????????
-- allVerifies :: (Int -> Bool) -> [Int] -> Bool
-- allVerifies 

--4 ???????????????

--5
--mapFoldr :: 

--6
listToInt :: [Int] -> Int
listToInt lista = foldl (\x y -> 10*x + y) 0 lista

--7
rmChar :: Char -> String -> String
rmChar c cuv = [x | x <- cuv, x /= c]

rmCharsRec :: String -> String -> String
rmCharsRec [] _ = []
rmCharsRec (h:t) str = rmCharsRec t (rmChar h str)

--c??????????????????????
rmCharsFold :: String -> String -> String
rmCharsFold str1 str2 = foldr (\x y -> if x `elem` str1 then y else x : y) [] str2

-- myReverse :: [Int] -> [Int]
-- myReverse lista = foldr (\) [] lista
