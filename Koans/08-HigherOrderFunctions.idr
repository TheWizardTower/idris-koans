module Koans.HigherOrderFunctions

-- Complete these functions

-- Maps are used to map a function to elements in a list.
myFirstMap : Bool
myFirstMap = [2,4..8] == map (2*) [1..4]

square : Int -> Int
square x = x * x

mySecondMap : Bool
mySecondMap = [1, 4, 9, 16, 25] == map square [1..5]

myThirdMap : Bool
myThirdMap = [25, 16, 9, 4, 1] == reverse (map square [1..5])

-- Folds are used to combine elements in a list from start to finish using a function.
myFirstFold : Bool
myFirstFold = foldl (+) 0 [1..4] == 10

mySecondFold : Bool
mySecondFold = 5 == foldl const 5 [1..4]


-- Scans are like fold but you see the intermediate results, and then the result.
myFirstScan : Bool
myFirstScan = scanl (max) 5 [1,2,3,4] == take 4 (repeat 5)

mySecondScan : Bool
mySecondScan = scanl (max) 5 [1,2,10,1] == [5,5,5,10,10]

myThirdScan : Bool
myThirdScan = scanl (/) 64.0 [4,2,4] == [16, 32, 16]


-- TODO Add examples for scanr and foldr


-- You can filter things as well.

xs : List Int
xs = [1,2,3,4,5,6,7,8,9,10]

myFirstFilter : Bool
myFirstFilter = filter (>5) xs == [5..10]

mySecondFilter : Bool
mySecondFilter = filter (\_ => True) (map (cast . (\x => x / 10.0)) [10,20,30,40,50,60,70,80,90,100]) == xs

-- You can combine functions as well

transform : Integer -> String
transform x = (case (mod x 2) of
              0 => "boom"
              1 => "bang"
              )


myFirstCombi : Bool
myFirstCombi =  ["bang", "boom", "bang", "boom", "bang"] == map (transform . cast) (filter (<=5) xs)
