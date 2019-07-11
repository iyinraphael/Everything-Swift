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




//Access Control

///Public: this means everyone can read and write the proper
///Internal: this means only your Swift code can read and write the property. If you ship your code as a framework for others to use, they won’t be able to read the property
///File Private: this means that only Swift code in the same file as the type can read and write the property.
///Private: this is the most restrictive option, and means the property is available only inside methods that belong to the type, or its extensions.



//Polymorphism and typecasting

class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
    
    //Optional Downcasting
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}


for album in allAlbums as! [StudioAlbum] {
    print(album.studio)
}
