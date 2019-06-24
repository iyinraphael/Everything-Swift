import Foundation

//Closures Accepting parameters

func travel(action: (String) -> Void){
    print("I'm getting readty to go.")
    action("London")
    print("I arrived")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}


//Using closures as parameters when they return values

func travelReturn(action: (String) -> String) {
    print("I'm getting readty to go.")
    let description = action("London")
    print(description)
    print("I arrived")
}

travelReturn { (place: String) -> String in
    return "I'm going to \(place) in my private Jet"
}
