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
