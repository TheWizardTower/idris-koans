module Misc

smallOdds : List Integer
smallOdds = [x | x <- [1..20], mod x 2 == 0 ]

greeter : String -> String
greeter whom = "Hello to " ++ whom

