import Foundation

//Arithmetic Operator
let firstScore = 12
let seconfScore = 4

let total = firstScore + seconfScore
let difference = firstScore - seconfScore

let product = firstScore * seconfScore
let divided = firstScore / seconfScore

let remainder = 13 % seconfScore


//Operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna"
let action = fakers + " fake"

let firHalf = ["john", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firHalf + secondHalf


//Compound Assignment Operators
var score = 95
score -= 5
var quote = "The rain is Spain falls mainly on the "
quote += "Spanaid"


//Comparison Operators
let firstScore1 = 6
let secondScore2 = 4

firstScore1 == secondScore2
firstScore1 != secondScore2

firstScore1 < secondScore2
firstScore1 >= secondScore2

"Taylor" <= "Swift"

//Conditons
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - Lucky")
} else if firstCard + secondCard == 21{
    print("BlackJack!")
} else {
    print("Regular cards")
}

//Combining Operators
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Bothe are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

//Ternary Operator
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

//Switch Statements
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

//Range Operators
let newScore = 85

switch score {
case 0..<50:
    print("You failed badly")
case 50..<85:
    print("You did Ok.")
default:
    print("You did great!")
}
