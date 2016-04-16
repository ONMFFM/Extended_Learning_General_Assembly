//
//  ViewController.swift
//  InClass6
//
//  Created by Owen Pierce on 12/17/15.
//  Copyright © 2015 Owen Pierce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var someCrazyName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myAnimal = Animal()
        myAnimal.species = "Human"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func someCrazyAction() {
        someCrazyName.text = "I'M FEELIN REAL CRAZY!!!"
    }

}

