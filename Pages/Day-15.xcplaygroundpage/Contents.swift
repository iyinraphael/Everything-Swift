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
  
