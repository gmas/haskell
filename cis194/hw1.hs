import Data.Char

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits nr = [ fromIntegral (digitToInt c) | c <- show nr, 
                    isNumber c, nr > 0 ]

toDigitsRev :: Integer -> [Integer]
toDigitsRev nr = reverse $ toDigits nr

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [x]
doubleEveryOther (x:xs) = x : (2 * head xs) : doubleEveryOther (tail xs)

sumDigits :: (Num a) => [a] -> a
sumDigits [] = 0
sumDigits (x:xs) = x + sumDigits xs

validate :: Integer -> Bool
validate nr  = mod (sumDigits $ doubleEveryOther $ toDigits nr ) 10 == 0
