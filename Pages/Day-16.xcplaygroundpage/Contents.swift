import UIKit

//Protocols

protocol Employee {
    var name: String {get set}
    var jobTitle: String {get set}
    func doWork()
}


struct Executive: Employee {
    var name = "Steve Jobs"
    var jobTitle = "CEO"
    
    func doWork() {
        print("I'm strategizing")
    }
    
}

struct Manager: Employee {
    var name = "Maurice Moss"
    var jobTitle = "Head of IT"
    
    func doWork() {
        print("I'm turning it off and on again")
    }

}

let staff: [Employee] = [ Executive(), Manager()]

for person in staff {
    person.doWork()
}



//Extensions

var myInt = 0

extension Int {
    //mutating means that the inoput will be changed
    mutating func plusOne() {
        self + 1
    }
}

myInt.plusOne()


extension String {
    mutating func trim() {
        self = trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
