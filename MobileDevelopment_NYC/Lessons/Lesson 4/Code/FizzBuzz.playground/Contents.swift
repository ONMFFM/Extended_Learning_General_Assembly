//: Playground - noun: a place where people can play

import UIKit

//Write a program that prints the numbers from 1 to 100.
//But for multiples of three print “Fizz” instead of the number and 
//for the multiples of five print “Buzz”.
//For numbers which are multiples of both three and five print “FizzBuzz”.

for i in 1...100 {
    if i%3==0 && i%5==0 {
        print("fizzbuzz")
    } else if i%3 == 0 {
        print("fizz")
    } else if i%5 == 0{
        print("buzz")
    } else {
        print(i)
    }
}

for var i = 1; i<=100; i++ {
    print(i)
}

let north = 0
let west = 1
let east = 2
let south = 3

enum CompassPoint {
    case North
    case South
    case East
    case West
    case DontKnow
}

var dumbHeading:Int

dumbHeading = north
dumbHeading = 5

var smartHeading:CompassPoint
smartHeading = .DontKnow
//smartHeading = 5
//smartHeading = CompassPoint.Up

UIColor.purpleColor()
UIColor.redColor()
UIColor(red: 0.9, green: 0.2, blue: 0.5, alpha: 1.0)
UIColor(red: 0.7123412341234, green: 0.2, blue: 0.3, alpha: 1.0)
UIColor(red: 100/255, green: 1.0, blue: 1.0, alpha: 1.0)

func getRandomFloat() -> CGFloat {
    let randomFloat = CGFloat(arc4random_uniform(100))/100.0
    return randomFloat
}

func getRandomColor() -> UIColor {
    return UIColor(red: getRandomFloat(), green: getRandomFloat(), blue: getRandomFloat(), alpha: 1.0)
}

func printName(){
    print(getName())
}

func getName() -> String {
    return "arun"
}


getRandomColor()
getRandomColor()
getRandomColor()
UIColor.redColor()
































