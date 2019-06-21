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
