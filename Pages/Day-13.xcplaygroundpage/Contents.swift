import Foundation

//Consolidation Day 1 - Variables and Constant
var name = "Demi Raphael"
name = "Liz Raphael"



//Types of Data
var newName: String
newName = "Iyin Raphael"

var age: Int
age = 25



//Float and Doubles
var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333



//Boolean
var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false



//Operators +, -, *, /, =, %, !
var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2



//Comparison operators

var aa = 1.1
var bb = 2.2
var c = aa + bb

c > 3
c >= 3
c > 4
c < 4

name1 == "Tim McGraw"

!stayOutTooLate
name1 != "Tim McGraw"



//String Interpolation

"Your name is \(name)"
"Your name is \(name), your age is \(age), and your latitude is \(latitude)"
"You are \(age) years old. In another \(age) years you will be \(age * 2)."



//Arrays
var evenNumbers = [2, 4, 6, 8]
var songs: [Any] = ["Shake it off", "You Belong with Me", "Back to December", 3]

songs[0]
songs[1]
songs[2]

type(of: songs)


var songs2 = ["today was a Fairytale", "Welcome to New York", "Fifteen"]
var both2 = songs + songs2
both2 += ["Everything has Changed"]



//Dictionary
var person = ["Taylor", "Allison","Swift", "December", "taylorswift.com"]

var personDict = ["First" : "Taylor",
                  "middle" : "Alison",
                  "last" : "Swift",
                  "month" : "December",
                  "website" : "taylorswift.com"]
personDict["middle"]
personDict["month"]



//Conditional Statements

var action: String
var person2 = "hater"

if person2 == "hater" {
    action = "hate"
} else if person2 == "player" {
    action = "play"
} else {
    action = "cruise"
}

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

if !stayOutTooLate && !nothingInBrain {
    action = "No cruise"
}
