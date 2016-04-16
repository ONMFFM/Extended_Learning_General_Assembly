//
//  Player.swift
//  TrialByCombat
//
//  Created by Owen Pierce on 12/22/15.
//  Copyright © 2015 Owen Pierce. All rights reserved.
//

import UIKit

class Player: AnyObject {
    var name: String
    var health: Int {
        didSet {
//            if health
        }
    }
    
    init() {
        name = "Gene, Son of Eric"
        health = 100
    }
    
    init(name: String, health: Int) {
        self.name = name
        self.health = health
    }
}
