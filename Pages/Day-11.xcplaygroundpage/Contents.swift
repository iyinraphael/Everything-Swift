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



//Extensions - a;;ows you to add methods to existing types

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 4
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
number.isEven



//Extension of Protocols (POP)
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us: ")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()
