import Foundation

//Optional

var age: Int? = nil
age = 38


//Unwrapping Optionals

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}


//Unwrapping with Guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)!")
}



//Force Unwraping

let str = "5"
let num = Int(str)!



//Implicitly unwrapped optionals

let newAge: Int! = nil

//Nil Coalescing

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"


//Optional Chaining

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()



//Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

if let result = try? checkPassword("password"){
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sekrit")
print("OK!")

//Failable Initializers

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 11 {
            self.id = id
        } else {
            return nil
        }
    }
}

let mama = Person(id: "Mama Somolu")


//Type Casting
class Animal {}
class Fish: Animal {}

class Dog: Animal {
    func makeNoise() {
        print("woof!")
    }
}

let pets = [ Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let doggy = pet as? Dog {
        doggy.makeNoise()
    }
}
