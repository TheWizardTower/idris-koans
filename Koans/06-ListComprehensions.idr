module Koans.ListComprehensions

-- | What is the result of the List Comprehension.
listCompZero : Bool
listCompZero = [2,4..10] == with Classes [ x + x | x <- [1..5] ]

-- | Write a list comprehension that returns all the numbers divisible by four, doubled.
myFirstListComp : List Integer -> List Integer
myFirstListComp xs = [x * 2 | x <- xs, mod x 4 == 0]

computeList : Bool
computeList = myFirstListComp [1..10] == [8,16]

-- | Return all the numbers between 20 and 100 that are divisible by 9.
divisibleByNine : List Integer
divisibleByNine = [x | x <- [20..100], mod x 9 == 0]

-- | Using list comprehensions construct a function that turns a list of numbers into a list of strings.
-- Odd numbers should be bang, Even numbers boom.
boomBangs : List Integer -> List String
boomBangs xs = [transform x | x <- xs]
               where
                 transform : Integer -> String
                 transform x = (case (mod x 2) of
                                  0 => "boom"
                                  1 => "bang")

doBoomBangs : Bool
doBoomBangs = boomBangs [3,4,5,6,7] =
