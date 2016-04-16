//
//  ViewController.swift
//  Background
//
//  Created by Rudd Taylor on 2/18/15.
//  Copyright (c) 2015 ga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var backgroundSwitch: UISwitch!
    var athletes = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.backgroundSwitch.addTarget(self, action: "didChangeSwitch", forControlEvents: UIControlEvents.ValueChanged)
        
        self.backgroundSwitch.on = NSUserDefaults.standardUserDefaults().boolForKey("switchIsOn")
        didChangeSwitch()
        if let path = NSBundle.mainBundle().pathForResource("Athletes", ofType: "plist") {
            let array = NSArray(contentsOfFile: path)
            print(array)

            if let array = array {
                athletes = array
            }
            array?.writeToFile(path, atomically: true)
        }

    }
    
    func didChangeSwitch() {
        if self.backgroundSwitch.on {
            self.label.font = UIFont.systemFontOfSize(30)
        } else {
            self.label.font = UIFont.systemFontOfSize(10)
        }
        NSUserDefaults.standardUserDefaults().setBool(self.backgroundSwitch.on, forKey: "switchIsOn")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return athletes.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("athleteCell", forIndexPath: indexPath)

        cell.textLabel?.text = athletes[indexPath.row] as? String

        return cell
    }
}

