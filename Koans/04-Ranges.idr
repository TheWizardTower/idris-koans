-- | Exercises on Ranges
module Koans.Ranges

rangeNums : Bool
rangeNums = [1..13] == [1..13]

stepUp : Bool
stepUp = [3,6,9,12,15,18] == [3,6..20]

stepDown : Bool
stepDown = [20,17,14,11,8,5,2] == [20,17..1]

stopMe : List Integer
stopMe = take 5  [1..]

-- --------------------------------------------------------------------- [ EOF ]
