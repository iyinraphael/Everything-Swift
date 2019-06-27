import Foundation


//Creating Classes

class Dog{
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

//Class Inheritance

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip")
    }
}


//Overriding Methods

let pop = Poodle(name: "dog")
pop.makeNoise()


//Final class - It can't be subclassed

final class Cat {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


//Copying Olbject

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)


//Denitializers

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit{
        print("\(name) is no more")
    }

}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}


//Mutability

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)
