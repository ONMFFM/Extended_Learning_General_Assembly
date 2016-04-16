// Playground - noun: a place where people can play

import UIKit

func hello() {
    print("Hello world")
}

hello()

// takes sum of two integers
var theSum = 0
func sum(firstNum: Int, secondNum: Int) -> Int {
    theSum = firstNum + secondNum
    
    hello()
    return theSum
}

sum(5, secondNum: 5)
// Value of theSum?
var secondSum = sum(8, secondNum: 7)
// now?

func divide(top: Int, bottom: Int) -> Int {
    if (bottom == 0) {
        return 0
        print("I DIVIDED BY ZERO!!")
    } else {
        return top / bottom
    }
    
}

//var x = sum(10, secondNum: 20)
//var y = sum(x, secondNum: 15)
//
//func fib(place: Int) -> Int {
//    var fibNum = place, current = 0, next = 1, result = 0
//    for _ in 0..<fibNum {
//        let tempVar = current
//
//        current = next
//        next = tempVar + current
//        result = tempVar
//    }
//    
//    return result
//}
//
//var q = 8
////fib()
//fib(10)
//
//var num: Int? = 5
//
//if let numValue = num {
//    print(numValue + 5)
//}
//
//func save(name: String) -> (first: String, last: String) {
//    var lastName = "Konda"
//    return (name, lastName)
//}
//
//var myName = save("Tedi")
//myName.first
//myName.last










