import Foundation

//Struct Intializers - All struct come with default initializer call "Memberwise intializer"

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creatinf a new user!")
    }
}

var user = User()
user.username = "iyin"

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        print("\(name) was born")
        self.name = name
    }
}


//Lazy Properties - Swift will only create the family Tree struc when it's accessed.

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

var ed = Person2(name: "Eddy")
ed.familyTree


// Static properties and Methods

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let taylor = Student(name: "taylor")
print(Student.classSize)
