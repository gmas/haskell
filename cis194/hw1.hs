import Data.Char

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits nr = [ fromIntegral (digitToInt c) | c <- show nr, 
                    isNumber c, nr > 0 ]

toDigitsRev :: Integer -> [Integer]
toDigitsRev nr = reverse $ toDigits nr

doubleEveryOther_ :: [Integer] -> [Integer]
doubleEveryOther_  [] = []
doubleEveryOther_  [x] = [x]
doubleEveryOther_  (x:y:xs) = x : (2 * y) : doubleEveryOther_ xs
doubleEveryOther xs = reverse $ doubleEveryOther_  $ reverse xs


sumD :: [Integer] -> Integer
sumD [] = 0
sumD (x:xs) = x + sumD xs

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (x:xs) = sumD (toDigits x) + sumDigits xs

validate :: Integer -> Bool
validate nr  = mod (sumDigits $ doubleEveryOther $ toDigits nr ) 10 == 0
