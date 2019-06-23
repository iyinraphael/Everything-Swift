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
