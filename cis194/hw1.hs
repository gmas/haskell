toDigits nr = 
  case compare nr 0 of
    LT -> []
    EQ -> []
    GT -> [ read x :: Int | x <- ([c :[] | c <- show nr ]) ] 
