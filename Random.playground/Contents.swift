import UIKit

let diceRoll = Int.random(in: 1...6)

print ("Your rolled a \(diceRoll)")

let randomDecimal = Double.random(in: -1.0...1.0)
print ("your random decimal between -1 and 1 is \(randomDecimal)")

let randomBool = Bool.random()
print ("The answer is \(randomBool)")

// Challenge 1
print ()
let result = Int.random(in: 1...4) + Int.random(in: 1...4) + Int.random(in: 1...4)
print ("You rolled a result of \(result)")

// Challenge 2
print ()
if Bool.random() {
    print ("Heads")
}
    else {
        print ("Tails")
    }

print ("Coin Flip: \(Bool.random() ? "Heads" : "Tails")")

print ()
let messages = ["You are Awesome!",
                "You Are Great!" ,
                "Fabulous? That's You!",
                "You are Fantastic",
                "You Swifty!",
                "You Are a Code Monster",
                "You Did It!"]
print (messages[Int.random(in: 0...messages.count - 1)])
