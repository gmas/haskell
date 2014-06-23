len :: (Num b) => [a] -> b
len [] = 0
len (_:xs) = 1 + len xs

