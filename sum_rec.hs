sumRec :: (Num a) => [a] -> a
sumRec [] = 0
sumRec (x:xs) = x + sumRec xs
