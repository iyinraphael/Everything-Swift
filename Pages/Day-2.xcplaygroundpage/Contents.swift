import Foundation

//Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

//Set - they are arrange unordered and unique
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "blue"])

//Tuples - you can't add or remive items from a Tuple, there type cannot be change
var name = (first: "Taylor", last: "Swift")
name.0
name.first
name.last
