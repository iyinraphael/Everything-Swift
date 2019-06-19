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

//Difference between Tuples, Sets and Arrays
let address = (house:555, street: "Taylor Swift Avenue", city: "Nashvile")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73]
heights["Taylor Swift"]

//Dictionaries Default values
let favoriteCream = [
"Paul": "Chocolate",
"Sophie": "Vanilla"]
favoriteCream["Paul"]
favoriteCream["Charlotte"]
favoriteCream["Charlotte", default: "Unknown"]

//Creating Empty Collections
var teams = [String: String]()
teams["Paul"] = "Red"
var result = [Int]()
var words = Set<String>()
var numbers = Set<Int>()
var scores = Dictionary<String, Int>()
var results = Array<Int>()


//Enumerations
enum Result {
    case failure
    case success
}
let result4 = Result.failure

//Enums associated value
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")
