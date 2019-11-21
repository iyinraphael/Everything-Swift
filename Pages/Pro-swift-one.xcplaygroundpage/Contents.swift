//: [Previous](@previous)

import Foundation

//: [PATTERN MATCHING]


let name = "twostraws"

switch name {
case "bilbo":
    print("Hello, Bilbo Baggins!")
case "twostraws":
    print("Hello, Paul Hudson!")
default:
    print("Authentication failed")
}

/* if we wanted to validate a name and a password we can use a Tuple */
let password = "fr0stles"

switch (name, password) {
case ("bilbo", "baggln5"):
    print("Hello, Bilbo Baggins!")
case ("twostraws", "fr0stles"):
    print("Hello, Paul Hudson!")
default:
    print("Who are you?")
}

/* You can combine the two values into a single tuple if you prefer, like this: */

let authentication = (name: "twostraws", password: "fr0stles")

switch authentication {
case ("bilbo", "baggln5"):
    print("Hello, Bilbo Baggins!")
case ("twostraws", "fr0stles"):
    print("Hello, Paul Hudson!")
default:
    print("Who are you?")

}

/* Sometimes you want partial match use underscore to represent any value */

let authentication1 = (name: "twostraws", password: "fr0stles", ipAddress: "127.0.0.1")

switch authentication1 {
case ("bilbo", "baggln5", _):
    print("Hello, Bilbo Baggins!")
case ("twostraws", "fr0stles", _):
    print("Hello, Paul Hudson!")
default:
    print("Who are you?")
    
}

/* If you want to match only one part of the Tuple but still want to know the other part use let */
let authentication2 = (name: "twostraws", password: "fr0stles")


switch authentication {
case ("bilbo", _):
    print("Hello, Bilbo Baggins!")
case ("twostraws", let password):
    print("Hello, Paul Hudson!: your password was \(password)!")
default:
    print("Who are you?")
    
}


func fizzbuzz(number number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "FizzBuzz"
    case (false, false):
        return String(number)
    }
}

fizzbuzz(number: 15)

/* Mathching Optionals */
let newName: String? = "twostraws"
let newPassword: String? = "fr0stles"

switch (newName, newPassword) {
case let (.some(name), .some(passwprd)):
    print("Hello, \(name)")
case let (.some(name), .none):
    print("Please enter a password")
default:
    print("Who are you?")
}

let data: [Any?] = ["Bill", nil, 69, "Ted"]

for case let .some(datum) in data {
    print(datum)
}

/* Matching ranges */

let age = 36

switch age {
case 0 ..< 18:
    print("You have the energy and time, but not the money")
case 18 ..< 70:
    print("You have the energy and money, but not the time")
default:
    print("You have the time and money, but no the energy")
}



