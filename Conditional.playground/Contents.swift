import UIKit


//print("Hello There!" , messageString) //adds a space
//print("Hello There!" + messageString) // concatanates strings
//print ("Hello There! \(messageString)") // String Interpolation

//var person = "Rafael"
//
//if person == "Limor" {
//    print ("Hello, Lady Ada!")
//} else if person == "Grace" {
//    print ("Hello, Admiral Hopper!")
//} else {
//    print ("Hello There, \(person)!")
//}

//var person = "Beyoncé"
//
//switch person {
//case "Limor":("Hello, Lady Ada!")
//case "Grace": print ("Hello, Admiral Hopper!")
//case "Beyoncé": print ("All hail Queen B!")
//default: print ("Hello There, \(person)!")
//}
// Ternary Operator
let person = "Rafael"
print(person == "Limor" ? "Hello, Lady Ada!" : "Hello, There \(person)!")
