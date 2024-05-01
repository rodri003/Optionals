import UIKit

var messages = ["You are Awesome!", "You Are Great!" , "Fabulous? That's You!"]
print (messages)
print (messages[0])
messages.last
print (messages.last!)
print (messages[messages.count-1])
messages.append("You are Fantastic")
messages = messages + ["You Swifty!", "You Are a Code Monster"]
print (messages)
// Empty Arrays
var grades: [Double] = []
grades.append (82)
grades += [87, 91]
print ("")
print (grades)
