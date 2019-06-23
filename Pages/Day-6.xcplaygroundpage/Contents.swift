import Foundation

//Creating basic closures
let driving = {
    print("I'm drivng in my car")
}

driving()


//Accepting Parameters
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")

//Returning Valuees

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("Lagos")
print(message)

//Closures as Parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived")
}

travel(action: driving)
