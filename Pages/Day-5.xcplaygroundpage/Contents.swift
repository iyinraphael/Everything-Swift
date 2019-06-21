import Foundation

//Functions
func printHelp() {
    let message = """
Welcome to MyApp

Run this app inside a diretory of images and MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

//Accepting Parameters
func square(number: Int) {
    print(number * number)
}
square(number: 8)



//Returning Values
func squareThis(number: Int) -> Int {
    return number * number
}
let result = squareThis(number: 5)
print(result)



//Parameter Labels
func sayHello(to name: String){
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")


//Omitting Parameter Labels
func greet(_ person: String){
    print("Hello, \(person)")
}
greet("Taylor")



//Default Parameters
func pleaseGreet(_ person: String, nicely: Bool = true){
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
pleaseGreet("Taylor")
pleaseGreet("Talor", nicely: false)


//Variadic Functions
func varadicSquare(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
varadicSquare(numbers: 1, 2, 3, 4, 5, 6)



//Writing Throwing Functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
}catch {
    print("You can't use that password")
}


//Inout Parameters
func doubleInPlace(number: inout Int){
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)
