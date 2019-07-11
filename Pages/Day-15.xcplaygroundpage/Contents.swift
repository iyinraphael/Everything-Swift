import Foundation

//Property Observer...willSet and didSet

struct Ngozi {
    var clothes: String {
        willSet{
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        didSet {
            updateUI(msg: "i just changed from \(oldValue) to \(clothes)")
        }
    }
    
}

func updateUI(msg: String) {
    print(msg)
}

var newTaylor = Ngozi(clothes: "T-shirts")
newTaylor.clothes = "short skirts"


//Computer Property

struct PersonAge {
    var age : Int
    
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = PersonAge(age: 25)
print(fan.ageInDogYears)


//Static Property and methods

struct TaylorFan {
    static var favoriteSong = "Look what You Made Me Do"
    var name: String
    var age: Int
}

let tFan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong) //Because static methods belong to the struct itself rather than to instances of that struct, you can't use it to access any non-static properties from the struct
