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
