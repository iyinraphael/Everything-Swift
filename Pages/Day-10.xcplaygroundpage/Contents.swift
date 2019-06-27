import Foundation


//Creating Classes

class Dog{
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

//Class Inheritance

class poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}
