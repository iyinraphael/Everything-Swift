import Foundation

//Structs

struct Sport {
    var name: String //stored property
    var isOlympicSport: Bool
    
    //Computed Properties
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic Sport"
        } else {
            return "\(name) is not an Olympic Sport"
        }
    }
}

var tennis = Sport(name: "Tennis", isOlympicSport: true)
print(tennis.name)

var chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)



//Property Observer

struct Progress {
    var task: String
    var amount: Int{
        didSet{
            print("\(task) is now \(amount)% complete")
            print("Was formally \(oldValue)%")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 60
progress.amount = 90



//Methods

struct City {
    
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()


//Mutation Methods

struct Person {
    
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Eddy")
person.makeAnonymous()


//Properties and methods of Strings

let string = "Do or do not, there's no try"
string.count
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

//Properties and methods for Arrays

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)
