double_2nd :: [Int] -> [Int]
double_2nd [] = []
double_2nd [x] = [x]
double_2nd (x:xs) = x : (2 * head xs) : double_2nd (tail xs)
