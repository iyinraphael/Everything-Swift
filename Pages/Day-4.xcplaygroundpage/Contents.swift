import Foundation

//For Loops
let count = 1...10
for number in count {
    print("Number is \(number)")
}
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}
print("Players gonna ")
for _ in 1...5 {
    print("play")
}


//While Loops
var number = 1
while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")

var counter = 2
while counter < 64 {
    print("\(counter) is a power of 2.")
    counter *= 2
}


//Repeat Loops
repeat {
    print(number)
    number += 1
} while number <= 20
print("Ready or nor, here I come")

repeat {
    print("This is false")
} while false

var bagels = 5
repeat {
    print("Someone ate a bagel")
    bagels -= 1
} while bagels > 0

var encores = 0
repeat {
    print("Let's play that piece again.")
    encores += 1
} while encores < 3


//Exiting Loops
var countDown = 10
while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}
print("Blast off!")

//Exiting Multiple Loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


//Skipping Items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}
