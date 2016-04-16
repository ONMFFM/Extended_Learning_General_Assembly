import Foundation
import UIKit

var view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
view.backgroundColor = UIColor.purpleColor()


class Animal {
    var species: String
    
    init() {
        species = "Amoeba"
    }
    
    init(theSpecies: String) {
        species = theSpecies
    }
    
    func prettyPrint() -> String {
        return "Some boring generic species"
    }
}

func prettyPrintAnimal(animal: Animal) {
    print("I love \(animal.species)")
}

var organism = Animal()
prettyPrintAnimal(organism)

var fido = Animal(theSpecies: "Dog")
fido.species

class Dog: Animal {
    var name: String?
    override init() {
        super.init()
        species = "Dog"
    }
    
    override func prettyPrint() -> String {
        return "Some exciting dog!"
    }
}

var rover = Dog()
rover.prettyPrint()
rover.name = "Rover"
prettyPrintAnimal(rover)

print(rover.name)
print(rover.species)


class Human {
    var name: String?
    var age: Int?
}

var rudd = Human()
rudd.name = "Rudd"
rudd.age = 29
print(rudd.age)


var travis = Human()
travis.name = "Travis"
print(travis.name)
travis = rudd

print(travis.name)

var name: String?
