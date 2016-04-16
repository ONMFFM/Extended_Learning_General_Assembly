//
//  EnvironmentsViewController.swift
//  CoreDataProject
//
//  Created by Owen Pierce on 2/4/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit
import CoreData

protocol EnvironmentPickerDelegate {
    func didSelectEnvironment(environment: Environment)
}

class EnvironmentsViewController: UITableViewController {

    var delegate: EnvironmentPickerDelegate?
    var environments = [Environment]()
    var selectedEnvironment: Environment?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Environments"
        
        let fetchRequest = NSFetchRequest(entityName: "Environment")
        do {
            guard let results = try AppDelegate.sharedObjectContext().executeFetchRequest(fetchRequest) as? [Environment] else { return }
            environments = results
            tableView.reloadData()
        } catch {
            fatalError("There was an error getting the list of environments!")
        }
        tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "reuseIdentifier")
    }

    // MARK: - Table view data source

    func envsAreEqual(lhs: Environment, rhs: Environment) -> Bool {
        return lhs.name == rhs.name
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return environments.count ?? 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        
        let currentEnvironment = environments[indexPath.row]
        cell.textLabel?.text = currentEnvironment.name
        
        // compare environments - 
        // if this row is the same as the one selected,
        // give the cell a checkmark
        // if not
        // remove the checkmark
        if let selectedEnvironment = selectedEnvironment {
            if envsAreEqual(currentEnvironment, rhs: selectedEnvironment) {
                cell.accessoryType = .Checkmark
            } else {
                cell.accessoryType = .None
            }
        } else {
            cell.accessoryType = .None
        }
        

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        delegate?.didSelectEnvironment(environments[indexPath.row])
        
        // check the cell that was selected
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        selectedEnvironment = environments[indexPath.row]
        tableView.reloadData()
    }

}
