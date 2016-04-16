//
//  Animal.swift
//  InClass6
//
//  Created by Owen Pierce on 12/17/15.
//  Copyright © 2015 Owen Pierce. All rights reserved.
//

import UIKit

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

class Dog: Animal {
    override init() {
        super.init()
        species = "Dog"
    }
}
