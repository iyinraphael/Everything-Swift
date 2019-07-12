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



//Protocol Extensions

extension Int {
    func clamp(low: Int, high: Int) -> Int {
        if self > high {
            // if we are higher than the upper bound, return the upper bound

            return high
        } else if self < low {
            // if we are lower than the lower bound, return the lower bound

            return low
        }
        // we are inside the range, so return our value

        return self
    }
}
let i: Int = 8
print(i.clamp(low: 0, high: 5))

//  So, self means “my current value” and Self means “my current data type.”

extension BinaryInteger {
    func clamp(low: Self, high: Self) -> Self {
        if self > high {
            return high
        } else if self < low {
            return low
        }
        
        return self
    }
} 
