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
