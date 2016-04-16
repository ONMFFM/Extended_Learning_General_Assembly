// Playground - noun: a place where people can play

import UIKit

var someInts = [0, 1, 2, 3]
someInts.append(4)

someInts[2] = 5

var someIntsCopy = someInts
var lostInt = someIntsCopy.removeLast()
lostInt

debugPrint(someInts)
someIntsCopy

someInts.insert(1, atIndex: 1)
someInts.count
//someInts[10] This is an error


for someInt in someInts {
    print(someInt)
}

for (index, someInt) in someInts.enumerate() {
    print("\(someInt) \(index)")
}

var names = ["Rudd", "Sean", "Travis"]
for name in names {
    print(name)
}

for (index, name) in names.enumerate() {
    print("\(index) \(name)")
}

var confusing: [Int?] = [0, 1, 2, nil]
print(confusing[1])

// Closures:

func printFiveTimes(string: String) {
    for _ in 0..<5 {
        print(string)
    }
}

printFiveTimes("hey class!")

func doFiveTimes(someClosure: () -> ()) {
    for i in 0..<5 {
        // This runs 5 times
        someClosure()
    }
}

doFiveTimes({ () -> () in
    print("this happens five times!")
})

// syntax example for passing closures as arguments
func doFiveTimes(someClosure: (name: String) -> (Int)) {
    for i in 0..<5 {
        // This runs 5 times
        someClosure(name: "Jack")
    }
}

doFiveTimes { (name) -> (Int) in
    print("Hello, \(name)! I've talked to you five times!")
    return 5
}

func printInt(someInt: Int) {
    print(someInt)
}
var someInt = 5
printInt(someInt)
printInt(5)

// DICTIONARIES

var arrayOfInts = [1, 2, 3]
var firstElement = arrayOfInts[1]

var age: [String: Int] = ["rudd": 29, "sam": 20]
age["kevin"] = 20
age["rudd"] = nil
age["rudd"] = 15
let ruddsAge = age["rudd"]
age["billy"]

var temps: [Int: Int] = [:]
temps[1985] = 100
temps[2001] = 95
print(temps[2001])

class Human {
    var age: Int?
    var name: String?
}

var rudd = Human()
rudd.age = 29
rudd.name = "Rudd"
var sean = Human()
sean.age = 30
sean.name = "Sean"

// Advanced closures

let humans: [Human] = [rudd, sean]

let humanDict: [String: Human] = ["rudd": rudd, "sean": sean]

var humanNames: [String] = []
for human in humans {
    if let name = human.name {
        humanNames.append(name)
    }
}

let humanNamesUsingMap = humans.map({(human: Human) -> String? in
    return human.name
})

print(humanNamesUsingMap)

let numbers = [0, 1, 2, 3, 4]

let sum = numbers.reduce(0, combine: +)
let sumWithClosureInline = numbers.reduce(0, combine: {(v1: Int, v2: Int) -> Int in
    return v1 + v2
})
func addTwoNumbers(v1: Int, v2: Int) -> Int {
    return v1 + v2
}
let sumWithFunctionDefinition = numbers.reduce(0, combine: addTwoNumbers)

let closureSumFunction = {(v1: Int, v2: Int) -> Int in
    return v1 + v2
}

let sumPassingClosureVariable = numbers.reduce(0, combine: closureSumFunction)



