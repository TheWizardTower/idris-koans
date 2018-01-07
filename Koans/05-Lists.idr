-- | Exercises on Lists
module Koans.Lists

-- | What is the type of this list.
nats : List Int
nats = [0,1,2,3,4,5,6,7,9]

-- | Reproduce the list [0,1,3,5,7,9,2,4,6,8] using the following functions.
odds : List Int
odds = [1,3,5,7,9]

evens : List Int
evens = [2,4,6,8]

zero : Int
zero = 0

zeroOddsEvens : Bool
zeroOddsEvens = [zero] ++ odds ++ evens == [0,1,3,5,7,9,2,4,6,8]

-- | Complete the result of following functions.

headOList : Bool
headOList = 5 == head [5,4,3,2,1]

tailOList : Bool
tailOList = [1..5] == tail [0,1,2,3,4,5]

lastOList : Bool
lastOList = 1 == last [5,4,3,2,1]

initOList : Bool
initOList = [1..5] == init [1,2,3,4,5,6]

lengthOList : Bool
lengthOList = 5 == List.length [1,2,3,4,5]

reverseTheList : Bool
reverseTheList = [5..1] == List.reverse [1,2,3,4,5]

first3 : Bool
first3 = [1,2,3] == take 3 [1..10]

drop3 : Bool
drop3 = [4..10] == drop 3 [1..10]

countAllTheNumbers : Bool
countAllTheNumbers = 55 == sum [1..10]

timesAllTheNnumbers : Bool
timesAllTheNnumbers = 3628800 == product [1..10]

elementOrNot : Bool
elementOrNot = List.elem 4 [1..5] == True

-- | Make this function true
stopPete : Bool
stopPete = take 4 (repeat 3) == [3,3,3,3]

-- --------------------------------------------------------------------- [ EOF ]
