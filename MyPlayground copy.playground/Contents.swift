import UIKit

var greeting = "Hello, playground"

var httpError = (errorCode : 404 , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": " )
print(httpError.errorMessage )

var name = ("John", "Smith")
var fName = name.0
var lName = name.1
print(fName , terminator : ",")
print(lName)

var origin = (x : 0, y : 0)
var point = origin
print(point)
//0,0

let city = (name : "Maryville", population : 11000)
let ( cityName , cityPopulation ) = (city.0 , city.1)
print (cityName)
print (cityPopulation)
print( cityName, cityPopulation)

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))


var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname, fname)
print("First Name is \(fname) and Last Name is \(lname)")

var cricketKit = ("gloves" ,"helmet", ("bat", "ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)

var statement = ("Here is a list of things you need in a kit")




