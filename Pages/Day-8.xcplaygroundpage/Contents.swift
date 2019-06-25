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
