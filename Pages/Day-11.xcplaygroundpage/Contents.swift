import Foundation

//Protocols

protocol Identifiable {
    var id: String {get set}
}

struct User: Identifiable {
    var id: String
    
    func displayID(thing: Identifiable) {
        print("My ID is \(thing.id)")
    }
}


//Protocol Inheritance

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTranining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTranining, HasVacation {}
