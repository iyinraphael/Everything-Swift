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
    
    init(name: String) {
        print("\(name) was born")
        self.name = name
    }
}
