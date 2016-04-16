//
//  AnimalDetailViewController.swift
//  CoreDataProject
//
//  Created by Owen Pierce on 2/4/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class AnimalDetailViewController: UITableViewController {
    
    enum AnimalCells: Int {
        case AnimalName = 0
        case AnimalIsCarniverous = 1
        case AnimalHabitat = 2
    }
    
    var selectedAnimal: Animal!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Animal Details"
        tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "reuseIdentifier")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        guard let cellType = AnimalCells(rawValue: indexPath.row) else {
            return cell
        }
        
        switch cellType {
        case .AnimalName:
            cell.textLabel?.text =
                "Animal Name: \(selectedAnimal.name)"
            
        case .AnimalIsCarniverous:
            cell.textLabel?.text =
                selectedAnimal.isCarniverous.boolValue ? "Eats Meats!" : "Eats Veggies!"
            
        case .AnimalHabitat:
            if let habitat = selectedAnimal.habitat {
                // this is string interpolation
                cell.textLabel?.text = "Animal's Habitat: \(habitat.name)"
            } else {
                cell.textLabel?.text = "Currently homeless..."
            }
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        guard let cellType = AnimalCells(rawValue: indexPath.row) else { return }
        
        switch cellType {
        case .AnimalName:
            let alert =
            UIAlertView(title: "Animal Name?",
                message: "Enter an animal name",
                delegate: self,
                cancelButtonTitle: "Dismiss",
                otherButtonTitles: "Add")
            alert.alertViewStyle = UIAlertViewStyle.PlainTextInput
            alert.show()
            
        case .AnimalIsCarniverous:
            // toggle between true and false on
            // the isCarniverous boolean
            selectedAnimal.isCarniverous = !selectedAnimal.isCarniverous.boolValue
            tableView.reloadData()
            
        case .AnimalHabitat:
            var environmentVC = EnvironmentsViewController()
            environmentVC.delegate = self
            navigationController?.pushViewController(environmentVC, animated: true)
        }
    }

}

extension AnimalDetailViewController: UIAlertViewDelegate {
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == 1 {
            if let animalName =
                alertView.textFieldAtIndex(0)?.text {
                    selectedAnimal.name = animalName
                    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
                    
                    appDelegate.saveContext()
                    tableView.reloadData()
            }
        }
    }
}

extension AnimalDetailViewController: EnvironmentPickerDelegate {
    func didSelectEnvironment(environment: Environment) {
        selectedAnimal.habitat = environment
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.saveContext()
    }
}
