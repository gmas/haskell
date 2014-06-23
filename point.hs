data Point = Pt Int Int
  deriving Show

inc :: Point -> Point
inc (Pt x y) = Pt (x+1) (y+1)
