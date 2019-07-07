import Foundation


//Review of functions

func favoriteAlbum(name: String) { //name is a called a parameter
    print("My favorite is \(name)")
}

favoriteAlbum(name: "Fealess")

func printAlbumRealease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRealease(name: "Fealess", year: 2008)
printAlbumRealease(name: "Speak Now", year: 2010)
printAlbumRealease(name: "Red", year: 2012)


//External and Internal parameter

func countLetterinString(_ string: String) {
    print("The string \(string) has \(string.count) letters")
}

countLetterinString("Hello")

func countLetters(in string: String){
 print("The string \(string) has \(string.count) letters")
}

countLetters(in: "Hello")


func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" {return true}
    if name == "Fearless" {return true}
    if name == "Speak Now" {return true}
    if name == "Red" {return true}
    if name == "1989"{return true}
    
    return false
}

func albumTaylor(name: String) -> Bool {
    
    switch name {
    case "Taylor Swift":
        return true
    case "Fealess":
        return true
    case "Speak Now":
        return true
    case "Red":
        return true
    case "1989":
        return true
    default:
        return false
    }
}

albumTaylor(name: "Jogo")
