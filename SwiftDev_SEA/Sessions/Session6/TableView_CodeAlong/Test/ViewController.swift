//
//  ViewController.swift
//  Test
//
//  Created by Rudd Taylor on 1/14/15.
//  Copyright (c) 2015 GA. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    // enum == Enumeration
    // a collection of values that are connected
    // style note - we capitalize the first letter of cases in enums
    enum Sections: Int {
        case Teachers = 0
        case Students = 1
        case Producers = 2
        case Frontlines = 3
    }
    
    override func viewDidLoad() {
        // table view now knows that anything with the 
        // reuse identifier of "Cell" is a
        // PersonTableViewCell
//        tableView.registerNib(UINib(nibName: "PersonTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
    }
    
    let teachers = ["Rudd", "Travis", "Sean"]
    let students = ["Greg", "Michael", "Richard", "Brian"]
    let producers = ["Annie", "Bryna"]
    let frontlines = ["Ian"]

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // if I can create a valid section with the
        // integer provided
        if let sectionType = Sections(rawValue: section) {
            switch sectionType {
                // complete, but not required
            case Sections.Teachers:
                return teachers.count
                // we already know that sectionType is a Sections enum object
            case .Students:
                return students.count
            case .Producers:
                return producers.count
            case .Frontlines:
                return frontlines.count
            }
        }
        
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) //as! PersonTableViewCell
        
        // if I can create a valid section with the
        // integer provided
        if let sectionType = Sections(rawValue: indexPath.section) {
            switch sectionType {
                // complete, but not required
            case Sections.Teachers:
//                cell.cellPerson = teachers[indexPath.row]
                cell.textLabel?.text = teachers[indexPath.row]
            case .Students:
                cell.textLabel?.text = students[indexPath.row]
            case .Producers:
                cell.textLabel?.text = producers[indexPath.row]
            case .Frontlines:
                cell.textLabel?.text = frontlines[indexPath.row]
            }
        }
        
        return cell
    }
    
    // gets called whenever I tap on a table cell
    // by default, sets the cell to selected (makes it grey)
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if let sectionType = Sections(rawValue: section) {
            switch sectionType {
                // complete, but not required
            case Sections.Teachers:
                return "Teachers"
            case .Students:
                return "Students"
            case .Producers:
                return "Producers"
            case .Frontlines:
                return "Frontlines"
            }
            
        }
        
        return nil
    }
}

