//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

str = "goodbye"

var name = "arun"

print("hello " + name)

print("hello \(name) today is a nice day")
//string interpolation

//String
//Array
//Dictionary
//Integer
//Boolean
//Float
//Double

var a = 5.6

//var isTodayThursday:Int = true
var isTodayThursday = true

//this is here to deal with the bug from yesterday

var age:Int

//age = 49; age = 50
//
//age = 49
//age = 50

age = 40
name = "bob"

if age >= 90 && name == "arun"{
    print("\(name) - you are more than 90")
} else if age >= 50 || name == "bob"{
    print("you are more than 50 years old")
}
//
//if age >= 90{
//    if name == "arun" {
//        print("\(name) - you are more than 90")
//    }
//} else if age >= 50 || name == "bob"{
//    print("you are more than 50 years old")
//}

if name != "arun"{
    print("you are not arun")
}

//if .. {
//
//} else if .. {
//    
//} else if ... {
//
//} else {
//    
//}

var someNumbers = [123,62,3645,543532,55678,6578]

for aNumber in someNumbers {
    print(aNumber)
}

someNumbers.first
someNumbers[5]
someNumbers[someNumbers.count-1]

for var i = 0; i<someNumbers.count; i++ {
    //
    //
    //
    //
    //
    print(someNumbers[i])
}

var daysOfTheWeek = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"]
25/7
25%7

100%2
99%2
99/2

var numberOfDaysForward = 25

daysOfTheWeek[numberOfDaysForward%daysOfTheWeek.count]

for i in 1...10 {
    print(i)
}

33%3





