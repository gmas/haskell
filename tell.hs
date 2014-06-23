tell :: (Show a) => [a] -> String
tell [] = "Empty"
tell [x] = "one elem: " ++ show x 
tell [x,y] = "two elems: " ++ show x ++ show y
tell (x:y:_) = "many elements"
